hp = 4;
StopDuration = 5;

instance = instance_create_layer(x, y,"Sword",oGuardianEye);

with (instance) {
	x = other.x;
	y = other.y;
	
	if (!instance_exists(other))
	{
		instance_destroy();
	}
}

alive = true;