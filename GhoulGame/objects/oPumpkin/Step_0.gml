switch (possessed){
	case true:
	calc_mov_pumpkin();
	get_input();
	if mpickup{
		if face == 0 face = 3;
		else face --;
	}
	if mjump{
		if face == 3 face = 0;
		else face ++;
	}
	image_index = face;
	break;
	
	case false:
	if !isHeld calc_mov_pumpkin();
	else{
		vsp = 0;
		if holdTarget != noone{
			x = holdTarget.x;
			y = holdTarget.y-50;
			
			if holdTarget.possessed == false{
				isHeld = false;
				holdTarget = noone;
			}
			
		}else{
			isHeld = false;
		}
	}
	break;
}