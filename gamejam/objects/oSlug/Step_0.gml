if (instance_exists(oPlayer))
{
if (point_distance(x, y, oPlayer.x, oPlayer.y) < 200)
{
	sprite_index = sSlugPreying;
}
else if (!place_meeting(x,y,oPlayer)) sprite_index = sSlugMoving;

if (place_meeting(x,y,oPlayer)) sprite_index = sSlugAttack;
}