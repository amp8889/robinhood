// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlyrState_Dying(){
	if (!is_dying) {
		is_dying = true;
		sprite_index = sPlyrDeath;
		image_speed = 1;
		image_index = 0;
	}
	if (image_index >= 11) {
		is_dying = false;
		x = oStart.x;
		y = oStart.y;
		hp = 4;
		state = PLAYERSTATE.FREE;
	}
}