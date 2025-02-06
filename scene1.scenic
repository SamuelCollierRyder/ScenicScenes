'''
To run this file using the Carla simulator:
    scenic scene1.scenic --2d --model scenic.simulators.carla.model --simulate
'''
param map = localPath('./maps/Town04.xodr')
param carla_map = 'Town04'
model scenic.simulators.carla.model

CAR_MODEL = "vehicle.lincoln.mkz_2017"

ego = new Car with behavior FollowLaneBehavior, with blueprint CAR_MODEL
other_car = new Car ahead of ego by 10, with behavior FollowLaneBehavior
other_car2 = new Car left of ego by 5, with behavior FollowLaneBehavior
