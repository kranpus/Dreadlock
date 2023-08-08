// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function additem()
{
	var item =argument0
	var target_slot=argument1
	var kg=argument2
	for (var i=0;i<inventory_slots;i+=1;)
	{
		
		if (item.KG+kg<=maxkg)
		{
			if struct_get(inventory[i],"sprite_id")=target_slot 
			{
				inventory[i]=item
				return;
			}
		}
	}
	show_message("error")
	return;
}