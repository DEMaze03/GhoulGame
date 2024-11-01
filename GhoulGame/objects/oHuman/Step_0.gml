switch(possessed){
	case true:
		get_input();
		calc_mov_human_poss();
		if holding == noone nearestPump = instance_nearest(x,y,oPumpkin);
		if place_meeting(x,y,nearestPump){
			if mpickup{
				if nearestPump.isHeld == false && nearestPump.holdTarget == noone && holding==noone{
					holding = nearestPump.id;
					nearestPump.isHeld = true;
					nearestPump.holdTarget = id;
					
				}else if nearestPump.isHeld != false && nearestPump.holdTarget != noone{
					holding = noone;
					nearestPump.hsp = round(hsp*2);
					nearestPump.isHeld = false;
					nearestPump.holdTarget = noone;
				}
			}
		}
	break;
		
	case false:
	holding = noone;
		calc_mov_human_normal();
	break;
}

if x < 0 || y < 0 || x > 6000 || y > 6000{
	x = startX;
	y = startY;
}