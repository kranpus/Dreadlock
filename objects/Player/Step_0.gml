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

/// Player Sprite Direction

var mouseX = mouse_x;
var mouseY = mouse_y;

var playerX = x;
var playerY = y;

var angle = point_direction(playerX, playerY, mouseX, mouseY);

if (angle > 315 or angle < 45) 
{
    sprite_index = splayerL;
} else if (angle > 45 and angle < 135) 
{
    sprite_index = splayerU;
} else if (angle > 135 and angle < 225) 
{
    sprite_index = splayerR;
} else if (angle > 225 and angle < 315) 
{
    sprite_index = splayerD;
}