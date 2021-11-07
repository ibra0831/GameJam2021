if (instance_exists(oPlayer))
{
	other.hp -= 1;
	
	oCamera.shake_magnitude = 2;
	oCamera.shake_remain = 1;
}