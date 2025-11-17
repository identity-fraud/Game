if keyboard_check(vk_left)
{
	xSpeed =- 100
}
if keyboard_check(vk_right)
{
	xSpeed =+ 100
}

move_and_collide(xSpeed,ySpeed,FactoryObj)