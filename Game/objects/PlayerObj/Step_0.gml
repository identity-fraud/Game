ySpeed+=0.1;
xSpeed=0;


if keyboard_check(vk_nokey)
{	
	sprite_index = PlayerIdle;
}

if place_meeting(x,y+1,FactoryTiles)
{
	ySpeed=0;
	if keyboard_check(vk_up) || keyboard_check(ord("W")) || keyboard_check(vk_space)
	{
		sprite_index = PlayerJump;
		ySpeed=-2;
	}
}

if keyboard_check(vk_left) || keyboard_check(ord("A"))
{
	image_xscale = -1
	sprite_index = PlayerWalk;
	xSpeed=-1;
}

if keyboard_check(vk_right) || keyboard_check(ord("D"))
{
	image_xscale = 1
	sprite_index = PlayerWalk;
	xSpeed=+1;
}

move_and_collide(xSpeed,ySpeed,FactoryTiles)