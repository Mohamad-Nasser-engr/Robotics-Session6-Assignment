import rclpy
import sys
from rclpy.node import Node
from custom_interfaces.action import DeliverItem
from rclpy.action import ActionClient
from rclpy.executors import MultiThreadedExecutor

class ItemDeliveryClient(Node):

    def __init__(self):
        super().__init__('item_delivery_client')
        self._action_client = ActionClient(self, DeliverItem, 'deliver_item')
        self._send_goal_future = None
        self._result_future = None
        self._goal_handle = None

    def send_goal(self, item_name, quantity):
        while not self._action_client.wait_for_server(timeout_sec=1.0):
            self.get_logger().info('Action server not available, waiting...')
        
        goal_msg = DeliverItem.Goal()
        goal_msg.item_name = item_name
        goal_msg.quantity = quantity

        self.get_logger().info('Sending goal request...')
        self._send_goal_future = self._action_client.send_goal_async(goal_msg, feedback_callback=self.feedback_callback)
        self._send_goal_future.add_done_callback(self.goal_response_callback)

    def goal_response_callback(self, future):
        self._goal_handle = future.result()
        if not self._goal_handle.accepted:
            self.get_logger().info('Goal rejected')
            rclpy.shutdown()
            return

        self.get_logger().info('Goal accepted')
        self._result_future = self._goal_handle.get_result_async()
        self._result_future.add_done_callback(self.get_result_callback)

    def feedback_callback(self, feedback_msg):
        self.get_logger().info(f'Feedback: {feedback_msg.feedback.status}')

    def get_result_callback(self, future):
        result = future.result().result
        if result.success:
            self.get_logger().info(f'Result: Delivery completed successfully: {result.message}')
        else:
            self.get_logger().info(f'Result: Delivery failed: {result.message}')

        rclpy.shutdown()

def main(args=None):
    rclpy.init(args=args)
    item_delivery_client = ItemDeliveryClient()
    item_name = str(sys.argv[1])
    quantity = int(sys.argv[2])

    item_delivery_client.send_goal(item_name, quantity)
    rclpy.spin(item_delivery_client)

    
    
    #rclpy.shutdown()

if __name__ == '__main__':
    main()
