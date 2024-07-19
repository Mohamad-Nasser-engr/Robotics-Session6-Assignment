import rclpy
from rclpy.node import Node
from custom_interfaces.srv import CheckStock

class StockCheckerService(Node):

    def __init__(self):
        super().__init__('stock_checker_service')
        self.srv = self.create_service(CheckStock, 'check_stock', self.check_stock_callback)
        self.stock_levels = {
            'item1': 100,
            'item2': 50,
            'item3': 0,
        }

    def check_stock_callback(self, request, response):
        item_name = request.item_name
        self.get_logger().info(f'Stock request obtained for: {request.item_name}')
        if item_name in self.stock_levels:
            response.stock_level = self.stock_levels[item_name]          
        else:
            response.stock_level = -1  # item was not found
        return response

def main(args=None):
    rclpy.init(args=args)
    stock_checker_service = StockCheckerService()
    rclpy.spin(stock_checker_service)
    rclpy.shutdown()

if __name__ == '__main__':
    main()
