// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlyrState_Free(){
	//Set Variables
	var move = key_right - key_left;
	hsp = move * walksp;
	vsp = vsp + grv;

	//Handle Collisions
	if (place_meeting(x+hsp,y,oBlock))
	{
		while(!place_meeting(x+sign(hsp),y,oBlock))
		{
			x = x + sign(hsp);	
		}
		hsp = 0;
	}
	if (place_meeting(x,y+vsp,oBlock))
	{
		while(!place_meeting(x,y+sign(vsp),oBlock))
		{
			y = y + sign(vsp);	
		}
		vsp = 0;
	}

	//Animation
	if (key_left && image_xscale > 0){
		image_xscale = -0.2;
		x -= 60;
	}

	if (key_right && image_xscale < 0){
		image_xscale = 0.2;
		x += 60;
	}

	//Grounded Animations and Logic
	if (place_meeting(x,y+1,oBlock)){
		image_speed = 1;
		if (in_air) {
			if (sprite_index != sPlyrLand) {
				sprite_index = sPlyrLand;
				image_index = 0;	
			}
			if (sprite_index == sPlyrLand && image_index >= 4) {
				in_air = false;
			}
		}
		else {
			if (key_jump) {
				vsp = -jump_height;	
			}
			else if (hsp == 0){
				sprite_index = sPlyrIdle;
			}
			else {
				sprite_index = sPlyrRun;
			}
		}
	}
	//Airborne Animations and Logic
	else {
		if (!in_air) {
			sprite_index = sPlyrJump;
			image_index = 0;
			image_speed = 1;
			in_air = true;
		}
		if (sprite_index == sPlyrJump && image_index >= 5) {
			image_speed = 0;	
		}
	}
	
	//Move
	x = x + hsp;
	y = y + vsp;
	
	//Attacking
	if (key_attack) state = PLAYERSTATE.ATTACK_SLASH;
}