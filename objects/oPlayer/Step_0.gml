//Check Player Inputs
key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
key_jump = keyboard_check_pressed(vk_space);
key_attack = keyboard_check_pressed(ord("J"));

switch (state)
{
	case PLAYERSTATE.FREE: PlyrState_Free(); break;
	case PLAYERSTATE.ATTACK_SLASH: PlyrState_Atk(); break;
}