left=keyboard_check(ord("A"))
right=keyboard_check(ord("D"))
up=keyboard_check(ord("W"))
down=keyboard_check(ord("S"))
if keyboard_check_pressed(ord("I")) && inventoryon=false
{
	inventoryon=true
}
else if keyboard_check_pressed(ord("I")) && inventoryon=true
{
	inventoryon=false
}
xmove=(right-left)
ymove=(down-up)
stumr=(irandom_range(1,30))
state()
if selected<0
{
 selected=inventory_slots-1	
}
if selected>=inventory_slots
{
 selected=0	
}
if nametime=1
{
	name=-1	
}
nametime--
hit=false
#region Mouse Look-At
image_angle = point_direction(x,y,mouse_x,mouse_y);
#endregion
