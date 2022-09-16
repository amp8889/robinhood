hsp = 4;
vsp = 8;
grv = 0.3;
walksp = 8;

image_speed = 1;

hp = 4;
flash = 0;
hitFrom = 0;

state = ENEMYSTATE.FREE;
hitByAttack = ds_list_create();

enum ENEMYSTATE{
	FREE,
	ATTACK,
}
