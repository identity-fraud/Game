if keyboard_check(vk.left)
{
	xSpeed=+1
}

if keyboard_check(vk.right)
{
	xSpeed=-1
}

move_and_collide(xSpeed,ySpeed, all)