/// @description 

StopDuration -= 1;

with (instance) {
	x = other.x;
	y = other.y;
	
}

if (instance_exists(oPlayer))
{
if (!place_meeting(x, y, oPlayer)) {
	sprite_index = sDyingGuardian;
	if (x < oPlayer.x) {
		image_xscale = -1;
	} else {
		image_xscale = 1;
	}

	if (point_distance(x, y, oPlayer.x, oPlayer.y) < 500) && (alive == true) {
		move_towards_point(oPlayer.x, oPlayer.y, 1);
	}
	else speed = 0;
}
}

if (hp <= 0)
{
	audio_play_sound(snd_DecayingDead,10,0);
	
	with (instance) {
		instance_destroy(self);
	}
	
	alive = false;
	image_alpha-=0.05;//change this to affect the fading speed
    if image_alpha<0 instance_destroy();
}

if (StopDuration > 0)
{
	speed = 0
	image_alpha = 0.5;
} else if (alive == true) image_alpha = 1;