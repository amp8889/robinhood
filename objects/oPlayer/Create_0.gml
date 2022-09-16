hsp = 0;
vsp = 0;
grv = 0.6;
walksp = 8;
jump_height = 20;
in_air = false;
is_dying = false;
image_speed = 1;
hp = 4;
flash = 0;

state = PLAYERSTATE.FREE;
hitByAttack = ds_list_create();

enum PLAYERSTATE{
	FREE,
	ATTACK_SLASH,
	DYING,
}