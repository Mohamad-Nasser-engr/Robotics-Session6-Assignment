import sys
import rclpy
from rclpy.node import Node
from custom_interfaces.srv import CheckStock

class StockCheckerClient(Node):

    def __init__(self):
        super().__init__('stock_checker_client')
        self.client = self.create_client(CheckStock, 'check_stock')
        while not self.client.wait_for_service(timeout_sec=1.0):
            self.get_logger().info('Service is unavailable. Please wait...')
        self.request = CheckStock.Request()

    def send_request(self, item_name):
        self.request.item_name = item_name
        self.future = self.client.call_async(self.request)
        rclpy.spin_until_future_complete(self, self.future)
        return self.future.result()

def main(args=None):
    rclpy.init(args=args)
    node = StockCheckerClient()
    response = node.send_request(str(sys.argv[1]))
    node.get_logger().info(f'Result: {response.stock_level}')
    node.destroy_node()
    rclpy.shutdown()