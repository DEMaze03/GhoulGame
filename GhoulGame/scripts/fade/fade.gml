function fade(){
	/// @arg room
	/// @arg duraction
	/// @arg color

	//args
	var _room = argument[0];
	var _dur = argument[1];
	var _col = argument[2];

	//create
	var _inst = instance_create_depth(0, 0, 0, o_fade);

	//set properties
	with _inst{
		target = _room;
		duration = _dur;
		color = _col;
	}
}