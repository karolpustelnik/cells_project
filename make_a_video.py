

import cv2

# Create a VideoWriter object to write the video
fourcc = cv2.VideoWriter_fourcc(*'MJPG')  # Use 'mp4v' for MP4
fps = 15  # Frame rate
size = (1024, 1024)  # Frame size
video_writer = cv2.VideoWriter('video.avi', fourcc, fps, size)

# Read the images and write them to the video
for i in range(1, 233):
    image_path = f'/data/kpusteln/ChakrabartiLab/RAW_DATA001/xy194c3t{i:03d}.tif'  # Assume the images are named 'image_00001.jpg', 'image_00002.jpg', etc.
    print(image_path)
    image = cv2.imread(image_path)
    video_writer.write(image)

# Release the VideoWriter and close the video file
video_writer.release()
