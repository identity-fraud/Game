ySpeed+=3;
xSpeed=0;


if keyboard_check(vk_nokey)
{	
	sprite_index = PlayerIdle;
	image_index = 0
}

if place_meeting(x,y+10,FactoryTiles)
{
	ySpeed=0;
	if keyboard_check(vk_up) || keyboard_check(ord("W")) || keyboard_check(vk_space)
	{
		image_index = 0
		sprite_index = PlayerJump;
		ySpeed=-70;
	}
}

if keyboard_check(vk_left) || keyboard_check(ord("A"))
{
	image_xscale = -1
	sprite_index = PlayerWalk;
	image_index = 0
	xSpeed=-80;
}

if keyboard_check(vk_right) || keyboard_check(ord("D"))
{
	image_xscale = 1
	sprite_index = PlayerWalk;
	image_index = 0
	xSpeed=+80;
}

move_and_collide(xSpeed,ySpeed,FactoryTiles)