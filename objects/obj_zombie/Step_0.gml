for (var i=-45;i<45;i++)
{
	if collision_line(x,y,x+lengthdir_x(180,dir+i),y+lengthdir_y(180,dir+i),Player,false,true) 	
	{ 
		seeswall=1
		if (!collision_line(x,y,x+lengthdir_x(distance_to_object(Player),dir+i),y+lengthdir_y(distance_to_object(Player),dir+i),owallparent,true,true))
		{
			state=player
			targx = Player.x
			targy = Player.y
			alarm[1]=120
			seesplayer=1
			
		}
	}
}
dir= point_direction(x,y,targx,targy)
if path_position=1
{
	time=0	
}
//if time2<=0
//{
//	path_end()
//	state=2
//	time=0
//	time2=10
//}
//if x=xprevious and y=yprevious
//{
//	time2--	
//}
//else
//{
//	time2=10	
//}
if time=0 
{
state=2
path_end()
}
time--