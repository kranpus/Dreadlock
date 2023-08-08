if inventoryon=true
{
	for (var i=0;i<inventory_slots;i+=1;)
	{
		var xx = invx+ (i mod inventory_rowsize) * inventory_slot_size + inventory_slot_distance
		var yy = invy+ (i div inventory_rowsize) * inventory_slot_size + inventory_slot_distance
		draw_sprite(Sprite1,0,xx,yy)
		if struct_get(inventory[i],"sprite_id")!=-1
		{
			draw_sprite(sinventory_item,struct_get(inventory[i],"sprite_id"),xx,yy)
		}
	}
}