if (room == rPrototypeHell)
{
	room_goto(rPrototypeLimbo);
	audio_play_sound(snd_changeWorld,10,0);
}
else
{
	room_goto(rPrototypeHell);
	audio_play_sound(snd_changeWorld,10,0);
}