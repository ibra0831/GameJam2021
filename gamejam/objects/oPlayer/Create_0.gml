hsp = 0;
vsp = 0;
grv = 0.8;
walksp = 4;

jumpheight = -14;
jump_number = 1;
jump_current = 0;

hp = 100;
alive = true;

counter_footsteps = 0;

if (room == rTutorialLimbo) audio_play_sound(enter_limbo,10,1);
if (room == rStage2Limbo) audio_play_sound(snd_fighting_limbo,10,1);

instance_create_layer(x, y, "Sword",oSword);