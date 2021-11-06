/// @description 

if (!place_meeting(x, y, oPlayer)) {
	sprite_index = sDyingGuardian;
	if (x < oPlayer.x) {
		image_xscale = -1;
	} else {
		image_xscale = 1;
	}

	if (point_distance(x, y, oPlayer.x, oPlayer.y) < 100000) {
		move_towards_point(oPlayer.x, oPlayer.y, 1);
	}
}
