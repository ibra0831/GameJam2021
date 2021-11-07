if (room == rStage2Hell)
{
	room_goto(rStage2Limbo);
	audio_play_sound(snd_changeWorld,10,0);
	
	oCamera.shake_remain = 5;
	oCamera.shake_magnitude = 8;
	
	instance_create_layer(oCamera.x,oCamera.y,"Effects",oChangeWorldEffect);
}
else
{
	room_goto(rStage2Hell);
	audio_play_sound(snd_changeWorld,10,0);
	
	oCamera.shake_remain = 5;
	oCamera.shake_magnitude = 8;
	
	instance_create_layer(oCamera.x,oCamera.y,"Effects",oChangeWorldEffect);
}