if !instance_exists(oDyingGuardian) {
	instance_create_layer(x,y,"Walls",DoubleJumpText);
	instance_destroy(self);	
}