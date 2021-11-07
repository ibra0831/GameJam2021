/// @description Insert description here
// You can write your code in this editor
function new_rand_2(){
	random_set_seed(random_range(1,100000))
	rand_x_2 = random_range(-250,20)
	rand_y_2 = random_range(-200,-350)
}
if (sprite_index == sShooter2)
	{
		sprite_index = sShooter;
		new_rand_2()
	}