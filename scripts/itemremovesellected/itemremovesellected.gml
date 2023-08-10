// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function itemremovesellected()
{
	var item =argument0
	var target_slot=argument1
	var kg=argument2
		if (item.KG+kg<=maxkg)
		{
			inventory[target_slot]=item
			return;
		}
	show_message("error")
	return;
}