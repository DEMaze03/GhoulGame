	if !instance_exists(o_fade) get_input();
switch(state){
case "Ghoul":
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
	y = lerp(y, possessionTarget.y,0.06);
	if place_meeting(x,y,possessionTarget){
		possessionTarget.possessed = true;
		state = "Possessing";
	}
break;

case "Possessing":
	hp = lerp(hp,max_hp,0.02);
	if possessionTimer < possessionTimerLimit possessionTimer ++;
	id.visible = false;
	x = possessionTarget.x;
	y = possessionTarget.y;
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
}

if instance_exists(oLine) && possessable == noone{
	instance_destroy(oLine);
}



//Animation
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