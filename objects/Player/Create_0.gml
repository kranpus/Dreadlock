global.trinkits_item  = 1
global.crafting_item  = 2
global.unsable_item   = 3
global.weapon_item    = 4
global.armor_item     = 5
global.magic_item     = 6
global.prostetic_item = 7





inventory_slots= 15
walking=function()
{
	hms=2
	vms=2
	x+=xmove*hms
	y+=ymove*vms
	if keyboard_check(vk_shift)
		{
			statechange(runing)
		}
	if hit=true and stumr=1
		{
			statechange(stumble)
			time=15
			hit=false
		}
	if keyboard_check_pressed(vk_control)
		{
			statechange(crouching)
		}	
	
}
crouching=function()
{
	dettection-=max (dettection-20,30)
	hms=1
	vms=1
	x+=xmove*hms
	y+=ymove*vms
	if !keyboard_check(vk_control)
	{
		statechange(walking)
	}
	/*if keyboard_check_pressed(vk_down)
	{
		statechange(cralling)
	}*/
}
cralling=function()
{
	sprite_index=splayercralling
	dettection-=max (dettection-50,10)
	hms=1
	vms=1
	x+=xmove*hms
	y+=ymove*vms
	if keyboard_check_pressed(vk_up)
	{
		statechange(crouching)
	}	
}
runing=function()
{
	hms=4
	vms=4
	x+=xmove*hms
	y+=ymove*vms
	if !keyboard_check(vk_shift)
	{
		statechange(walking)
	}
}
roll=function()
{
	hms=10
	vms=10
	
	x+=xmove*hms
	y+=ymove*vms
	if !keyboard_check(vk_shift)
	{
		statechange(walking)
	}
}
stumble=function()
{
	hms=2
	vms=2
	x+=xmove*hms
	y+=ymove*vms
	if time<=0
	{
		statechange(walking)
	}
	time--
}
inventory_rowsize=4
inventory_slot_size=32
inventory_slot_distance=6
invx=200
invy=150
dettection=100
hit=false
stumr=0
state=walking
inventoryon=false
maxkg=100
itemblank=
{
		"sprite": sinventory_item,
		"name":-1,
		"sprite_id":-1,
		"type":1,
		"data":-1,
		"KG":0,
};
item1=
{
		"sprite": sinventory_item,
		"name":"test1",
		"sprite_id":1,
		"type":1,
		"data":-1,
		"KG":80,
};
item2=
{
		"sprite": sinventory_item,
		"name":"test2",
		"sprite_id":2,
		"type":1,
		"data":-1,
		"KG":1,
};
inventory=[item1,item2,item2,itemblank,itemblank,item2,itemblank,itemblank,itemblank,item2,itemblank,itemblank,itemblank,itemblank,itemblank]