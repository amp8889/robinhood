hsp = 0;
vsp = 0;
grv = 0.3;
walksp = 8;
jump_height = 10;
in_air = false;
image_speed = 1;

state = PLAYERSTATE.FREE;
hitByAttack = ds_list_create();

enum PLAYERSTATE{
	FREE,
	ATTACK_SLASH,
	HIT,
	DEAD,
}