cmake_minimum_required(VERSION 2.4.6)
include($ENV{ROS_ROOT}/core/rosbuild/rosbuild.cmake)

# Set the build type.  Options are:
#  Coverage       : w/ debug symbols, w/o optimization, w/ code-coverage
#  Debug          : w/ debug symbols, w/o optimization
#  Release        : w/o debug symbols, w/ optimization
#  RelWithDebInfo : w/ debug symbols, w/ optimization
#  MinSizeRel     : w/o debug symbols, w/ optimization, stripped binaries
#set(ROS_BUILD_TYPE RelWithDebInfo)

rosbuild_init()

#set the default path for built executables to the "bin" directory
set(EXECUTABLE_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/bin)
#set the default path for built libraries to the "lib" directory
set(LIBRARY_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/lib)

#uncomment if you have defined messages
rosbuild_genmsg()
#uncomment if you have defined services
rosbuild_gensrv()

#common commands for building c++ executables and libraries
# rosbuild_add_library(${PROJECT_NAME} src/humanoid_client.cpp)
# target_link_libraries(${PROJECT_NAME} yaml-cpp)
# rosbuild_add_library(${PROJECT_NAME} src/loadx6_client.cpp)
# rosbuild_add_library(${PROJECT_NAME} src/joint_array_client.cpp)
# rosbuild_add_library(${PROJECT_NAME} src/hand_client.cpp)
#target_link_libraries(${PROJECT_NAME} another_library)
#rosbuild_add_boost_directories()
#rosbuild_link_boost(${PROJECT_NAME} thread)
#rosbuild_add_executable(humanoid_example src/humanoid_example.cpp)

#rosbuild_add_executable(humanoid_example src/humanoid_example.cpp)
# rosbuild_add_library(${PROJECT_NAME} src/examples/rotate_arm.cpp)
# rosbuild_add_executable(humanoid_client_example src/examples/humanoid_client_example.cpp)
# target_link_libraries(humanoid_client_example ${PROJECT_NAME})
# rosbuild_add_executable(hand_client_example src/examples/hand_client_example.cpp)
# target_link_libraries(hand_client_example ${PROJECT_NAME})
# rosbuild_add_executable(loadx6_client_example src/examples/loadx6_client_example.cpp)
# target_link_libraries(loadx6_client_example ${PROJECT_NAME})
# 
# rosbuild_add_executable(humanoid_client_test src/examples/humanoid_client_test.cpp)
# target_link_libraries(humanoid_client_test ${PROJECT_NAME})
