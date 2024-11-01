switch (possessed){
	case true:
	calc_mov_pumpkin();
	get_input();
	if mup face = 0;
	if mdown face = 1;
	if mleft face = 2;
	if mright face = 3;
	image_index = face;
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