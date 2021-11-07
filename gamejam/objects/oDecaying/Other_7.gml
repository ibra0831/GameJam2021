if (sprite_index == sDecayingAttack)
{
    if (instance_exists(oPlayer))
    {
        oPlayer.hp -= 15;
        audio_play_sound(snd_PlayerHurt, 10, 0);

        oCamera.shake_remain = 3;
        oCamera.shake_magnitude = 3;
    }
}