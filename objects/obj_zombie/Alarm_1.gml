for (var i=-100;i<100;i++)
{
	if collision_line(x,y,x+lengthdir_x(200,dir+i),y+lengthdir_y(200,dir+i),Player,false,true) and !collision_line(x,y,x+lengthdir_x(20,dir),y+lengthdir_y(20,dir),owallparent,false,true)
	{
	state=player
	targx=Player.x 
	targy=Player.y 
	}
	else
	state=2
}