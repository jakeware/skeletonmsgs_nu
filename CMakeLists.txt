cmake_minimum_required(VERSION 2.8.3)
project(skeletonmsgs_nu)

find_package(catkin REQUIRED COMPONENTS std_msgs geometry_msgs message_generation)

add_message_files(FILES 
  SkeletonJoint.msg 
  Skeleton.msg 
  Skeletons.msg
)

generate_messages(
  DEPENDENCIES 
  std_msgs 
  geometry_msgs
)

catkin_package()
