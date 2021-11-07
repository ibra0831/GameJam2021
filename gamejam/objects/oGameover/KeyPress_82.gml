if (room == rStage2Hell) room_goto(rStage2Limbo);
if (room == rStage2Limbo) room_restart();

if (room == rTutorialLimbo) room_restart();
if (room == rTutorialHell) room_goto(rTutorialLimbo);

if (room == rTutorialLimbo) audio_play_sound(enter_limbo,10,1);
if (room == rStage2Limbo) audio_play_sound(snd_fighting_limbo,10,1);