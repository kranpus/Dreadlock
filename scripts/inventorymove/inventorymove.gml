// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function inventorymove(argument0,argument1,argument2,argument3,argument4,argument5)
{
	var from = argument0
	var to = argument3
	var item =argument1
	var target_slot=argument4
	var one = argument2
	var two = argument5
	to.inventory[target_slot]=one
	from.inventory[item] =two
}
