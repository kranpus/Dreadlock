path_delete(path)
path=path_add()

if state=player
{
target_x=targx
target_y=targy 
}
else if state=wander and time<=0
{
	target_x=clamp (x+irandom_range(-140,140),0,room_width)
	target_y=clamp (y+irandom_range(-140,140),0,room_height-32)
	targx=target_x
	targy=target_y
	time=5*60
}
mp_grid_path(ogridcontroller.grid,path,x,y,target_x,target_y,true)

path_start(path,sped,path_action_stop,true)

alarm_set(0,30)
if collision_rectangle(x-14,y-14,x+14,y+14,owallparent,false,true)
{
	path_position+=0.1
}


