// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlyrState_Atk(){
	vsp = vsp + grv;
	
	//Make Player Stop Moving
	if (place_meeting(x,y+1,oBlock)) {
		hsp = 0;
		vsp = 0;
	}
	
	//Move
	x = x + hsp;
	y = y + vsp;
	
	//Set Animation Speed
	image_speed = 1;
	
	//Change animation to attack animation
	if (sprite_index != sPlyrAtk) {
		sprite_index = sPlyrAtk;	
		image_index = 0;
		ds_list_clear(hitByAttack);
	}
	
	//Use attack hitbox & check for hits
	mask_index = sPlyrAtkHB;
	var hitByAttackNow = ds_list_create();
	var hits = instance_place_list(x,y,oEnemy,hitByAttackNow, false);
	if (hits > 0) {
		for (var i = 0; i < hits; i++) {
			var hitID = hitByAttackNow[| i];
			if (ds_list_find_index(hitByAttack, hitID) == -1) {
				ds_list_add(hitByAttack, hitID);
				with (hitID) {
					EnemyHit(1, sign(other.image_xscale));	
				}
			}
		}
	}
	ds_list_destroy(hitByAttackNow);
	mask_index = sPlyrIdle;
	
	if (animationEnd()) {
		if (in_air) {
			sprite_index = sPlyrJump;
			image_index = 5;
		}
		else {
		sprite_index = sPlyrIdle;	
		}
		state = PLAYERSTATE.FREE;
	}
}