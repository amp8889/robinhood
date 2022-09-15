//Check Player Inputs
key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
key_jump = keyboard_check_pressed(vk_space);
key_attack = keyboard_check_pressed(ord("J"));


//Set Variables
var move = key_right - key_left;
hsp = move * walksp;
vsp = vsp + grv;


//Jumping
if (place_meeting(x,y+1,oGrass)) && (key_jump){
	
	vsp = -7;
	
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


//Attacking
if (state == PLAYERSTATE.FREE && key_attack) {
	
}


//Animation
if (key_left && image_xscale > 0){
	
	image_xscale = -0.2;
	
	
}

if (key_right && image_xscale < 0){
	
	image_xscale = 0.2;
	
	
}

if (place_meeting(x,y+1,oGrass)){
	if(key_left == 0 && key_right == 0){
		sprite_index = sPlyrIdle;
	}
	else{
		sprite_index = sPlyrRun;
	}
}

else {
	sprite_index = sPlyrJump;
}


















