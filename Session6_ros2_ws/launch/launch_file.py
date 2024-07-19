from launch import LaunchDescription
from launch.substitutions import LaunchConfiguration
from launch_ros.actions import Node
from launch.actions import DeclareLaunchArgument

def generate_launch_description():
    return LaunchDescription([
        # specify default values for the parameters
        DeclareLaunchArgument(
            'item_name',
            default_value = 'item1',
            description = "Item name"
        ),
        DeclareLaunchArgument(
            'quantity',
            default_value = '30',
            description = "Quantity of item"
        ),
        Node(
            package='session6_assignment',
            executable='check_stock_service',
            name='check_stock_node',
            output='screen'
        ),
        Node(
            package='session6_assignment',
            executable='deliver_item_action',
            name='deliver_item_action',
            output='screen'
        ),
        Node(
            package='session6_assignment',
            executable='deliver_item_client',
            name='deliver_item_client',
            output='screen',
            parameters=[
                {'item_name': LaunchConfiguration('item_name')},
                {'quantity': LaunchConfiguration('quantity')}
            ]
        ),
    ])
