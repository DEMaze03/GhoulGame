switch (possessed){
	case true:
	calc_mov_pumpkin();
	break;
	
	case false:
	if !isHeld calc_mov_pumpkin();
	else{
		vsp = 0;
		if holdTarget != noone{
			x = holdTarget.x+(30*holdTarget.facing);
			y = holdTarget.y;
			
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