import rclpy
import time
from rclpy.node import Node
from custom_interfaces.action import DeliverItem
from rclpy.action import ActionServer, GoalResponse
from session6_assignment.check_stock_client import StockCheckerClient  # Import the StockChecker class

class ItemDeliveryServer(Node):

    def __init__(self):
        super().__init__('item_delivery_server')
        self._action_server = ActionServer(
            self,
            DeliverItem,
            'deliver_item',
            execute_callback=self.execute_callback,
            goal_callback=self.goal_callback,
            handle_accepted_callback=self.handle_accepted_callback
        )
        self.stock_checker = StockCheckerClient()  # Initialize StockChecker instance

    def goal_callback(self, goal_request):
        # Check stock before accepting the goal
        stock_level = self.stock_checker.send_request(goal_request.item_name)
        if stock_level is None or stock_level.stock_level < int(goal_request.quantity):
            self.get_logger().info(f'Insufficient stock for {goal_request.item_name}')
            return GoalResponse.REJECT
        self.get_logger().info(f'Accepting goal request for {goal_request.quantity} of {goal_request.item_name}')
        return GoalResponse.ACCEPT

    def handle_accepted_callback(self, goal_handle):
        self.get_logger().info('Goal accepted, executing...')
        goal_handle.execute()

    async def execute_callback(self, goal_handle):
        self.get_logger().info(f'Executing delivery for {goal_handle.request.quantity} of {goal_handle.request.item_name}')
        feedback_msg = DeliverItem.Feedback()
        result_msg = DeliverItem.Result()

        # Simulate delivery process
        for i in range(1, 101):
            feedback_msg.status = f'Delivery in progress: {i}%'
            goal_handle.publish_feedback(feedback_msg)
            time.sleep(0.1)  # Simulate time delay for delivery

        # Check for preemption
        if goal_handle.is_cancel_requested:
            goal_handle.canceled()
            result_msg.success = False
            result_msg.message = 'Delivery canceled'
            goal_handle.publish_feedback(feedback_msg)
            return result_msg

        # Finalize result
        goal_handle.succeed()
        result_msg.success = True
        result_msg.message = 'Delivery completed successfully'
        return result_msg

def main(args=None):
    rclpy.init(args=args)
    item_delivery_server = ItemDeliveryServer()
    rclpy.spin(item_delivery_server)
    rclpy.shutdown()

if __name__ == '__main__':
    main()
