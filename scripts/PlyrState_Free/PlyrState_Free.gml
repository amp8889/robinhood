// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlyrState_Free(){
	//Set Variables
	var move = key_right - key_left;
	hsp = move * walksp;
	vsp = vsp + grv;

	//Jumping
	if (place_meeting(x,y+1,oGrass)) && (key_jump) {
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

	//Animation
	if (key_left && image_xscale > 0){
		image_xscale = -0.2;
	}

	if (key_right && image_xscale < 0){
		image_xscale = 0.2;
	}

	if (place_meeting(x,y+1,oGrass)){
		if(hsp == 0){
			sprite_index = sPlyrIdle;
		}
		else{
			sprite_index = sPlyrRun;
		}
	}
	else {
		sprite_index = sPlyrJump;
	}
	
	//Attacking
	if (key_attack) state = PLAYERSTATE.ATTACK_SLASH;
}