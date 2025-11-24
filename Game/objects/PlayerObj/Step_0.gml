ySpeed+=3;
xSpeed=0;

if keyboard_check(vk_left) || keyboard_check(ord("A"))
{
	image_xscale = -1
	sprite_index = PlayerWalk;
	xSpeed=-80;
}

if keyboard_check(vk_right) || keyboard_check(ord("D"))
{
	image_xscale = 1
	sprite_index = PlayerWalk;
	xSpeed=+80;
}

if place_meeting(x,y+3,FactoryTiles)
{
	ySpeed=0;
	if keyboard_check(vk_up) || keyboard_check(ord("W")) || keyboard_check(vk_space)
	{
		sprite_index = PlayerJump;
		ySpeed=-70;
	}
}

move_and_collide(xSpeed,ySpeed,FactoryTiles)
