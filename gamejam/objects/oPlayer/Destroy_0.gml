audio_stop_sound(snd_fighting_limbo);
audio_stop_sound(enter_limbo);

if (hp < 0) instance_create_layer(oCamera.x,oCamera.y,"Effects",oGameover);