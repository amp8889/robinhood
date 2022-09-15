hsp = 0;
vsp = 0;
grv = 0.3;
walksp = 8;
image_speed = 1;

state = ENEMYSTATE.FREE;
hitByAttack = ds_list_create();

enum ENEMYSTATE{
	FREE,
	ATTACK,
	HIT,
	DEAD,
}
