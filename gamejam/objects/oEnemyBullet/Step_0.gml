if (place_meeting(x,y,oPlayer))
{
	sprite_index = sEnemyBullet2;
}
if (place_meeting(x, y, oWall))
{
	sprite_index = sEnemyBullet2;
}
move_towards_point( oPlayer.x, oPlayer.y - 20, 3.4 );