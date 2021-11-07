/// @description Insert description here
// You can write your code in this editor
function new_rand()
{
	rand_x = random_range(10,1351)
	rand_y = random_range(10, 801)
}
function bullet_gen()
{
	if (x > oPlayer.x) {
        instance_create_layer(x - 65,y + 4,"Player",oEnemyBullet)
    } else {
        instance_create_layer(x + 65,y + 4,"Player",oEnemyBullet)
    }
}
if ((random(121) >= 120) or (random(121) <= 0))
{
	sprite_index = Sprite39;
	bullet_gen()
}
if (instance_exists(oPlayer))
{
	if (!place_meeting(x, y, oPlayer)) {
		if (x < oPlayer.x) {
			image_xscale = -1;
		} else {
			image_xscale = 1;
		}

		if (point_distance(x, y, oPlayer.x, oPlayer.y) < 480) {
			if (point_distance(x, y,rand_x_2+oPlayer.x,rand_y_2+oPlayer.y) > 51){
				move_towards_point(rand_x_2+oPlayer.x,rand_y_2/2+oPlayer.y, 1)
			} else if (point_distance(x, y,rand_x_2+oPlayer.x,rand_y_2+oPlayer.y) < 50){
				x = x
				y = y
			}
		} else if (point_distance(x, y, rand_x, rand_y) < 30)
		{
			new_rand()
		} else
		{
			move_towards_point(rand_x,rand_y, 1.6)
		}
	}
}

if (hp <= 0)
{
	audio_play_sound(snd_DecayingDead,10,0);
	
	alive = false;
	image_alpha-=0.05;//change this to affect the fading speed
    if image_alpha<0 instance_destroy();
}
