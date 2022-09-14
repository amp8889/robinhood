//Check Player Inputs
key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
key_jump = keyboard_check_pressed(vk_space);


//Set Speed Variables
var move = key_right - key_left;
hsp = move * walksp;
vsp = vsp + grv


//Jumping
if (place_meeting(x,y+1,oGrass)) && (key_jump){
	
	vsp = -7;
	
}


//Sprite Turning
if (key_left && image_xscale > 0){
	
	image_xscale = -0.2;
	x = x - 60;
	
}

if (key_right && image_xscale < 0){
	
	image_xscale = 0.2;
	x = x + 60;
	
}


//Handle Collisions
if (place_meeting(x+hsp,y,oGrass))
{
	
	while(!place_meeting(x+sign(hsp),y,oGrass))
	{
		x = x + sign(hsp);	
	}
	hsp = 0;
}

if (place_meeting(x,y+vsp,oGrass))
{
	
	while(!place_meeting(x,y+sign(vsp),oGrass))
	{
		y = y + sign(vsp);	
	}
	vsp = 0;
}


//Move
x = x + hsp;
y = y + vsp;


//Animation
if (place_meeting(x,y+1,oGrass)){
	image_speed = 1;
	if(key_left == 0 && key_right == 0){
		sprite_index = sPlayer;
	}
	else{
		sprite_index = sPlayerR;
	}
}


















