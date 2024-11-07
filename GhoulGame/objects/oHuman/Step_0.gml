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



if (round(hsp) == 1 || round(hsp) == -1 || round(hsp) == 0) && place_meeting(x,y+1,oWall){
	animState = "Idle";
}else if floor(hsp) > 0{
	animState = "Right";
}else if floor(hsp) < 0{
	animState = "Left";
}


if floor(vsp) < -1{
	animState = "UP";
}else if floor(vsp) > 1{
	animState = "Down";
}

if hsp > 0 image_xscale = 1;
if hsp < 0 image_xscale = -1;

switch animState{
	case "Right":
	sprite_index = sHumanWalk;
	//image_xscale = 1;
	break;
	
	case "Left":
	sprite_index = sHumanWalk;
	//image_xscale = -1;
	break;
	
	case "UP":
	sprite_index = sHumanJump;
	image_index = 0;
	break;
	
	case "Down":
	sprite_index = sHumanJump;
	image_index = 1;
	break;
	
	case "Idle":
	sprite_index = sHumanIdle;
	break;
}