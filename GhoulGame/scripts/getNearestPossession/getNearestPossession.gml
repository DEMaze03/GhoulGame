// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function getNearestPossession(){
	//show_debug_message(instance_nearest(x,y,oPossessable));
	var _list = ds_list_create();
	var _num = collision_circle_list(x, y, 350, oPossessable, false, true, _list, true);
	if (_num > 0)
	{
	    return _list[| 0];
	}
	ds_list_destroy(_list);
	return noone;
	
	
}