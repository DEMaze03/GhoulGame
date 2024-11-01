if place_meeting(x,y-1,oPumpkin){
	var pump = instance_nearest(x,y,oPumpkin)
		if pump.face == rightFace{
			state = "Pressed";
			image_index = 1;
		}else{
			state = "Unpressed";
			image_index = 0;
		}
}else{
	state = "Unpressed";
	image_index = 0;
}

if collision_circle(x,y,100,oPlayer,false,true) != noone && !place_meeting(x,y,oButtonGoblin) && goblin == noone{
	goblin = instance_create_layer(x,y+104,"WallObj",oButtonGoblin);
		goblin.hint = rightFace;
}