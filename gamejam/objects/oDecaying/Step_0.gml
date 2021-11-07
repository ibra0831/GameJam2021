if instance_exists(oPlayer) {
	if (point_distance(x, y, oPlayer.x, oPlayer.y) < 350) {
		if position_meeting(x,y,oWall) {
			if (!place_meeting(x,y,oPlayer)) {
				sprite_index = sDecaying;
				if oPlayer.x > x {
					if (!place_meeting(x + 1,y,oSpritewall)) {
						x += 1
					}
					image_xscale = -1
				} else {
					if (!place_meeting(x - 1,y,oSpritewall)) {
						x -= 1
					}
					image_xscale = 1
				}
			} else {
				sprite_index = sDecayingAttack;
			}
		} else {
			y += 3
		}
	}
}

StopDuration -= 1;

if (hp <= 0)
{
	audio_play_sound(snd_DecayingDead,10,0);
	
	alive = false;
	image_alpha-=0.05;//change this to affect the fading speed
    if image_alpha<0 instance_destroy();
}

if (StopDuration > 0)
{
	speed = 0
	image_alpha = 0.5;
} else if (alive == true) image_alpha = 1;