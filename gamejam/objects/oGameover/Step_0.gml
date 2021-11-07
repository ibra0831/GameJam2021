if (image_alpha < 100)
{
	image_alpha += 1;
}

if (instance_exists(oPlayer))
{
	if(oPlayer.alive == true)
	{
		instance_destroy();
	}
}