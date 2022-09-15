//Hyperparameters
xCamSpeed = 25;
yCamSpeed = 25;
follow = oPlayer;

//Set Up Camera
cam = view_camera[0];
view_w_half = camera_get_view_width(cam) * 0.5;
view_h_half = camera_get_view_height(cam) * 0.5;
xTo = xstart;
yTo = ystart;
