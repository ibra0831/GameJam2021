if (sprite_index == sSlugAttack)
{
	if (instance_exists(oPlayer))
	{
		oPlayer.hp -= 15;
		audio_play_sound(snd_PlayerHurt, 10, 0);
	}
}