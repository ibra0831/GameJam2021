if (place_meeting(x,y,oPlayer))
{
	instance_destroy()
	instance_create_layer(x,y - 50,1,oEnemyBullet)
}
if (place_meeting(x, y, oWall))
{
	instance_destroy()
	instance_create_layer(x,y - 50,1,oEnemyBullet)
}
move_towards_point( oPlayer.x, oPlayer.y, 1 );