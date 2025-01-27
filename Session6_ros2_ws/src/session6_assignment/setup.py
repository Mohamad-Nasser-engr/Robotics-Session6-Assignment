from setuptools import find_packages, setup
import os
from glob import glob
package_name = 'session6_assignment'

setup(
    name=package_name,
    version='0.0.0',
    packages=find_packages(exclude=['test']),
    data_files=[
        ('share/ament_index/resource_index/packages',
            ['resource/' + package_name]),
        ('share/' + package_name, ['package.xml']),
        (os.path.join('share', package_name, 'launch'), glob('launch/*.py'))
    ],
    install_requires=['setuptools'],
    zip_safe=True,
    maintainer='mohamad',
    maintainer_email='mohamadnasser.engr@gmail.com',
    description='TODO: Package description',
    license='TODO: License declaration',
    tests_require=['pytest'],
    entry_points={
        'console_scripts': [
            'check_stock_service = session6_assignment.check_stock_node:main',
            'check_stock_client = session6_assignment.check_stock_client:main',
            'deliver_item_action = session6_assignment.deliver_item_action:main',
            'deliver_item_client = session6_assignment.deliver_item_client:main'
        ],
    },
)
