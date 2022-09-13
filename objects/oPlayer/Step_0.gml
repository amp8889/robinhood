key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
key_jump = keyboard_check_pressed(vk_space);


var move = key_right - key_left;

hsp = move * walksp;

vsp = vsp + grv


//Jump If Statment
if (place_meeting(x,y+1,oGrass)) && (key_jump){
	
	vsp = -7;
	
}



if (key_left){
	
	image_xscale = -0.2;
	
}

if (key_right){
	
	image_xscale = 0.2;
	
}


if (place_meeting(x+hsp,y,oGrass))
{
	
	while(!place_meeting(x+sign(hsp),y,oGrass))
	{
		x = x + sign(hsp);	
	}
	hsp = 0;
}
x = x + hsp;




if (place_meeting(x,y+vsp,oGrass))
{
	
	while(!place_meeting(x,y+sign(vsp),oGrass))
	{
		y = y + sign(vsp);	
	}
	vsp = 0;
}
y = y + vsp;



//Animation
if (!place_meeting(x,y+1,oGrass)){
	
	//if(sign(vsp) > 0) image_index = 1; else image_index = 0;	
	
}
else
{
	image_speed = 1
	if(hsp == 0){
		sprite_index = sPlayer;	
	}
	else{
		sprite_index = sPlayerR;
		image_speed = .5;
	}
}



















