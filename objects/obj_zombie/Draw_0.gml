draw_self()
if global.f4=true
{
	draw_path(path,x,y,true)
	for (var i=-45;i<45;i++)
	{
		draw_line(x,y,x+lengthdir_x(180,dir+i),y+lengthdir_y(180,dir+i))
		draw_text(x,y-16,string(seeswall))
		draw_text(x+9,y-16,string(seesplayer))
	}
}







