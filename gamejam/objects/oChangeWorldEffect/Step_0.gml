if (instance_exists(oCamera))
{
	x = oCamera.x;
	y = oCamera.y;
}
else instance_destroy();
draw_set_color(c_red);