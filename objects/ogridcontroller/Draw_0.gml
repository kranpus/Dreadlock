if keyboard_check_pressed(vk_f4) and f4=true
{
	global.f4=false	
	f4=false
}
if keyboard_check_pressed(vk_f4)
{
	global.f4=true	
	f4=true
}
if f4=true
{
	draw_set_alpha(0.3)
	mp_grid_draw(grid)	
	
}









