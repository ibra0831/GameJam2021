flashtimer = 5;

speed = 15;
direction = point_direction(x,y,mouse_x,mouse_y);

audio_play_sound(snd_shoot,10,0);

oCamera.shake_magnitude = 10;
oCamera.shake_remain = 2;