// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function EnemyHit(argument0, argument1){
	var _damage = argument0;
	var _direction = argument1;
	
	hp -= _damage;
	flash = 3;
	hitFrom = _direction;
	if (hp > 0) {
		state = ENEMYSTATE.HIT; 
	} else {
		state = ENEMYSTATE.DEAD;	
	}
}