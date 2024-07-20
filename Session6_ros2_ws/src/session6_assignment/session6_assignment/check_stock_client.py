import sys
import rclpy
from rclpy.node import Node
from custom_interfaces.srv import CheckStock
import matplotlib.pyplot as plt

class StockCheckerClient(Node):

    def __init__(self):
        super().__init__('stock_checker_client')
        self.client = self.create_client(CheckStock, 'check_stock')
        while not self.client.wait_for_service(timeout_sec=1.0):
            self.get_logger().info('Service is unavailable. Please wait...')
        self.request = CheckStock.Request()
        ##
        self.plot()
        ##
        

    def send_request(self, item_name):
        self.request.item_name = item_name
        self.future = self.client.call_async(self.request)
        rclpy.spin_until_future_complete(self, self.future)
        return self.future.result()
    
    ###
    def plot(self):
        x_values = ['item1', 'item2','item3','item4']
        q1 = self.send_request('item1')
        q2 = self.send_request('item2')
        q3 = self.send_request('item3')
        q4 = self.send_request('item4')

        y_values = [q1.stock_level, q2.stock_level, q3.stock_level, q4.stock_level]
        plt.scatter(x_values,y_values)
        plt.title("Stock plot")
        plt.xlabel("Items")
        plt.ylabel("quantity")
        plt.show()
    ###
 
def main(args=None):
    rclpy.init(args=args)
    node = StockCheckerClient()
    response = node.send_request(str(sys.argv[1]))
    node.get_logger().info(f'Result: {response.stock_level}')
    node.destroy_node()
    rclpy.shutdown()