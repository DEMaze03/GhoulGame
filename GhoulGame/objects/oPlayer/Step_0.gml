	get_input();
switch(state){
case "Ghoul":
	hp --;
	if hp <= 0 {
		state = "Dead";
	}
	possessionTimer = 0;
	calc_mov_ghost();
	var possessable = getNearestPossession();
	if possessable != noone{
		draw_set_color(c_white);
		draw_text(x,y,"Found target");
		if testNum == 0 testNum++;
		
		if !instance_exists(oLine){
			line = instance_create_layer(x,y,"Player",oLine)
			line.target = possessable;
		}else{
			line.target = possessable;
		}
	}
	if(mcheck) && possessable != noone{
		instance_destroy(bound);
		instance_destroy(line);
		bound = noone;
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
	id.visible = false;
break;
}