if (!instance_exists(oPlayer)) && (CanCreate == true)
{
	instance_create_layer(oCamera.x,oCamera.y,"Effects",oGameover);
	CanCreate = false;
}