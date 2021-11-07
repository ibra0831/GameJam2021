if (room == rTutorialHell)
{
	room_goto(rTutorialLimbo);
	audio_play_sound(snd_changeWorld,10,0);
	
	oCamera.shake_remain = 5;
	oCamera.shake_magnitude = 8;
	
	instance_create_layer(oCamera.x,oCamera.y,"Effects",oChangeWorldEffect);
}

if (room == rTutorialLimbo)
{
	room_goto(rTutorialHell);
	audio_play_sound(snd_changeWorld,10,0);
	
	oCamera.shake_remain = 5;
	oCamera.shake_magnitude = 8;
	
	instance_create_layer(oCamera.x,oCamera.y,"Effects",oChangeWorldEffect);
}

if (room == rStage2Hell)
{
	room_goto(rStage2Limbo);
	audio_play_sound(snd_changeWorld,10,0);
	
	oCamera.shake_remain = 5;
	oCamera.shake_magnitude = 8;
	
	instance_create_layer(oCamera.x,oCamera.y,"Effects",oChangeWorldEffect);
}

if (room == rStage2Limbo)
{
	room_goto(rStage2Hell);
	audio_play_sound(snd_changeWorld,10,0);
	
	oCamera.shake_remain = 5;
	oCamera.shake_magnitude = 8;
	
	instance_create_layer(oCamera.x,oCamera.y,"Effects",oChangeWorldEffect);
}