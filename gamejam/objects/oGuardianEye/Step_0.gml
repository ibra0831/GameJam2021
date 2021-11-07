/// @description Eye following

if (instance_exists(oDyingGuardian))
{
	x = oDyingGuardian.x;
	y = oDyingGuardian.y;
}
else instance_destroy();

if (instance_exists(oPlayer)) image_angle = point_direction(x, y, oPlayer.x, oPlayer.y)