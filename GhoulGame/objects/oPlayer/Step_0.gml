	get_input();
switch(state){
case "Ghoul":
	possessionTimer = 0;
	calc_mov_ghost();
	var possessable = getNearestPossession();
	if possessable != noone && testNum ==0{
		draw_set_color(c_white);
		draw_text(x,y,"Found target");
		testNum++;
	}
	if(mcheck) && possessable != noone{
		possessionTarget = possessable;
		state = "Possessing";
		possessable.possessed = true;
	}
	
break;

case "Possessing":
	if possessionTimer < possessionTimerLimit possessionTimer ++;
	id.visible = false;
	x = possessionTarget.x;
	y = possessionTarget.y;
	if (mcheck) && possessionTimer >= possessionTimerLimit {
		state = "Ghoul";
		possessionTarget.possessed = false;
		id.visible = true;
		y += 30;
		possessionTarget = noone;
	}
break;
}