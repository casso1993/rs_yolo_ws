1. Environment
conda creat --name XXX
cd rs_yolo_ws/src/rs_yolo/scripts
pip install  -U  -r   requirements.txt
pip install pyrealsense2
pip install rospkg

2.catkin_make

3.run
roscore

conda activate XXX
source devel/setup.bash
rosrun rs_yolo rstest.py

--------------------------------------------------------------------------
NOW，it can publish position, classification and confidence
