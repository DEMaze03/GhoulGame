	if !instance_exists(o_fade) get_input();
switch(state){
case "Ghoul":
	id.image_alpha = lerp(image_alpha, 0.5, 0.07);
	hp --;
	if hp <= 0 {
		state = "Dead";
	}
	possessionTimer = 0;
	calc_mov_ghost();
	 possessable = getNearestPossession();
	if possessable != noone{
		if testNum == 0 testNum++;
		
		if !instance_exists(oLine){
			line = instance_create_layer(x,y,"Player",oLine)
			line.target = possessable;
		}else{
			line.target = possessable;
		}
	}
	if(mcheck) && possessable != noone{	
		instance_destroy(line);
		possessionTarget = possessable;
		state = "Go To Possession Target";
		
	}
	
break;

case "Go To Possession Target":
	x = lerp(x, possessionTarget.x,0.06);
	y = lerp(y, possessionTarget.y-40,0.06);
	if place_meeting(x,y,possessionTarget){
		possessionTarget.possessed = true;
		state = "Possessing";
	}
break;

case "Possessing":
	hp = lerp(hp,max_hp,0.02);
	if possessionTimer < possessionTimerLimit possessionTimer ++;
	id.image_alpha = lerp(image_alpha,0.1,0.07);
	if possessionTarget.hasAnimState{
		animState = possessionTarget.animState;
		facing = possessionTarget.facing;
	}
	x = lerp(x,possessionTarget.x-(15*facing),0.4);
	y = lerp(y,possessionTarget.y-40,0.6);
	if (mcheck) && possessionTimer >= possessionTimerLimit {
		state = "Ghoul";
		possessionTarget.possessed = false;
		possessionTarget.alarm[0] = room_speed*0.1;
		id.visible = true;
		vsp = -6;
		possessionTarget = noone;
	}
break;

case "Dead":
	
	sprite_index = sGhostDeath;
	
break;

case "Ascending":
	calc_mov_ghost();
	vsp = -9;
	hsp = 0;
break;

case "Descending":
	y = lerp(y, targY, 0.08);
	animState = "UP";
	if floor(y) <= targY state = "Ghoul";
break;
}

if instance_exists(oLine) && possessable == noone{
	instance_destroy(oLine);
}



//Animation
/*if state != "Dead"{
if round(hsp) > 0{
	var facing = 1;
	sprite_index = sPlayerSide;
	image_xscale = facing;
}else if round(hsp) < 0{
	var facing = -1;
	sprite_index = sPlayerSide;
	image_xscale = facing;
}else if round(hsp) == 1 || round(hsp) == -1 || round(hsp) == 0{
	sprite_index = sPlayerIdle;
}

if round(vsp) < 0{
	sprite_index = sPlayerUp;
}else if round(vsp) > 0{
	sprite_index = sPlayerDown;
}
}
*/

if state !="Dead" && state != "Possessing"{
	if round(hsp) > 0{
		animState = "Right";
	}else if round(hsp) < 0{
		animState = "Left";
	}else if round(hsp) == 1 || round(hsp) == -1 || round(hsp) == 0{
		animState = "Idle";
	}

	if round(vsp) < 0{
		animState = "UP";
	}else if round(vsp) > 0{
		animState = "Down";
	}
}

if state != "Possessing"{
	if hsp > 0 facing = 1;
	if hsp < 0 facing = -1;
	image_xscale = facing;
}
switch(animState){
	case "Right":
		 
		sprite_index = sPlayerSide;
		facing = 1;
		image_xscale = facing;
	break;
	
	case "Left":
		 
		sprite_index = sPlayerSide;
		facing = -1;
		image_xscale = facing;
	break;
	
	case "UP":
		sprite_index = sPlayerUp;
	break;
	
	case "Down":
		sprite_index = sPlayerDown;
	break;
	
	case "Idle":
		sprite_index = sPlayerIdle;
	break;
}