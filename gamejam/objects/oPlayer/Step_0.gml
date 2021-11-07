//Get player input
key_left = keyboard_check(ord("A"));
key_right = keyboard_check(ord("D"));
key_jump = keyboard_check_pressed(vk_space);

//Calculate movement
var move = key_right - key_left;

hsp = move * walksp;

vsp = vsp + grv;

if (key_jump) && (jump_current > 0)
{
	vsp = jumpheight;
	jump_current--;
	
	audio_play_sound(snd_jump,10,0);
}
    
if (place_meeting(x,y+1,oWall))
{
	jump_current = jump_number;
}

//Horizontal movement 
if (place_meeting(x+hsp, y, oWall))
{
	while(!place_meeting)
	{
		x = x + sign(hsp);
	}
	hsp = 0;
}

x = x + hsp;

//Vertical movement
if (place_meeting(x, y + vsp, oWall))
{
	while(!place_meeting)
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}

y = y + vsp;

//Animation
if (!place_meeting(x,y+1,oWall))
{
	sprite_index = sPlayerJump;
	image_speed = 0;
	
	if (sign(vsp) > 0)
	{
		image_index = 1;
	}
	else
	{
		image_index = 0;
	}
}
else
{
	image_speed = 1;
	if (hsp == 0)
	{
		sprite_index = sPlayerIdle;
	}
	else
	{
		sprite_index = sPlayerRun;	
	}
}

if (hsp != 0) image_xscale = sign(hsp);

if (x > 1200) {
	game_restart();
}