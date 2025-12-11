ySpeed+=0.2;
xSpeed=0;


if keyboard_check(vk_nokey)
{	
	sprite_index = PlayerIdle;
}

if place_meeting(x,y+2,FactoryTiles)
{
	ySpeed=0;
	if keyboard_check(vk_up) || keyboard_check(ord("W")) || keyboard_check(vk_space)
	{
		sprite_index = PlayerJump;
		ySpeed=-6.2;
	}
}

if keyboard_check(vk_left) || keyboard_check(ord("A"))
{
	image_xscale = -1
	sprite_index = PlayerWalk;
	xSpeed=-8;
}

if keyboard_check(vk_right) || keyboard_check(ord("D"))
{
	image_xscale = 1
	sprite_index = PlayerWalk;
	xSpeed=+8;
}

if place_meeting(x,y,EnemyCogObj)
{
	death = true;
}

if (death == true)
{
	image_alpha -= 0.05;
}

if (image_alpha == 0)
{
	room_restart();
}

move_and_collide(xSpeed,ySpeed,FactoryTiles)