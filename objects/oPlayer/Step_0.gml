//Check Player Inputs
key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
key_jump = keyboard_check_pressed(vk_space);
key_attack = keyboard_check_pressed(ord("J"));

if (place_meeting(x,y,oFinish)) {
	room_goto(room + 1);
}

if (y > room_width) {
	x = oStart.x;
	y = oStart.y;
	hp = 4;
}

if (hp <= 0) {
	state = PLAYERSTATE.DYING;
}

switch (state)
{
	case PLAYERSTATE.FREE: PlyrState_Free(); break;
	case PLAYERSTATE.ATTACK_SLASH: PlyrState_Atk(); break;
	case PLAYERSTATE.DYING: PlyrState_Dying(); break;
}