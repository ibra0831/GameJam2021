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
        instance_create_layer(x - 50,y + 13,1,oFire_demon_bullet_left)
    } else {
        instance_create_layer(x + 50,y + 13,1,oFire_demon_bullet_right)
    }
}
if ((random(161) >= 160) or (random(161) <= 0))
{
	sprite_index = sFire_demon_shooting;
	bullet_gen()
}
if (!place_meeting(x, y, oPlayer)) {
    if (x < oPlayer.x) {
        image_xscale = -1;
    } else {
        image_xscale = 1;
    }

    if (point_distance(x, y, oPlayer.x, oPlayer.y) < 480) {
        move_towards_point(oPlayer.x, oPlayer.y, 2);
    } else if (point_distance(x, y, rand_x, rand_y) < 30)
	{
		new_rand()
	} else
	{
		move_towards_point(rand_x,rand_y, 1.6)
	}
}