'''
To run this file using the Carla simulator:
    scenic examples/carla/pedestrian.scenic --2d --model scenic.simulators.carla.model --simulate
'''
param map = localPath('./maps/Town06.xodr')
param carla_map = 'Town06'
model scenic.simulators.carla.model

CAR_MODEL = "vehicle.lincoln.mkz_2017"

ego = new Car with behavior FollowLaneBehavior, with blueprint CAR_MODEL
other_car = new Car ahead of ego by 10, with behavior FollowLaneBehavior, with blueprint CAR_MODEL

# Cars on adjacent lanes of the first section of Road 69
# roadSec = network.elements['road69']