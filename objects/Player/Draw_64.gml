if inventoryon=true
{
	draw_sprite_stretched(sinventory, 0,invx-6,invy-6,12+inventory_rowsize*36,12+(((inventory_slots-1)div inventory_rowsize)+1)*36)
	
	KG=0
	for (var i=0;i<inventory_slots;i+=1;)
	{
		 xx = invx+ (i mod inventory_rowsize) * inventory_slot_size + inventory_slot_distance
		 yy = invy+ (i div inventory_rowsize) * inventory_slot_size + inventory_slot_distance
		KG +=struct_get(inventory[i],"KG")
		if i=selected
		{
			draw_sprite(Sprite1,1,xx,yy)
		}
		else
		{
			draw_sprite(Sprite1,0,xx,yy)
		}
		if struct_get(inventory[i],"sprite_id")!=-1
		{
						draw_sprite(sinventory_item,struct_get(inventory[i],"sprite_id"),xx,yy)
		}
	}
	if name!=-1
	{
	draw_text(display_get_gui_width()/2-180,display_get_gui_height()/2,"you could not fit this "+string(name)+" into your bag ")
	}
	if nametime<0
	{
	nametime=120
	}
	draw_text(invx+inventory_slot_distance,invy-35,"Packweight"+string(KG)+" / "+string(maxkg))
}
var angle=point_direction(x,y,mouse_x,mouse_y)
draw_text(display_get_gui_width()/2-180,display_get_gui_height()/2,+string(angle))