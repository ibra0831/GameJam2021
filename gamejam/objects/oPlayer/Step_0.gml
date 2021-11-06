//Get player input
key_left = keyboard_check(ord("A"));
key_right = keyboard_check(ord("D"));
key_jump = keyboard_check_pressed(vk_space);

//Calculate movement
var move = key_right - key_left;

hsp = move * walksp;

vsp = vsp + grv;

if (key_jump)
{
	vsp = jumpheight;
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

//hit
function Hit(x)
{
    PlayerHealth = PlayerHealth - EnemyBulletDamage;
}

//if (place_meeting(x,y,oEnemyBullet))
//{
//    Hit(1)
//}
//hello there
//hello there friend