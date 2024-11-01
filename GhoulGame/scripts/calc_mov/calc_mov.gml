function calc_mov_ghost(){
	get_input();
	
	hsp = lerp(hsp, 6*(right-left),0.1);
	vsp = lerp(vsp,6*(down-up),0.1);


	move_and_collide(hsp,0,oBoundary,abs(ceil(hsp)));
	
	move_and_collide(0,vsp,oBoundary,abs(ceil(vsp)),0,0);
	
		
}

function calc_mov_human_normal(){
	
	if place_meeting(x+(ceil(hsp)),y-10,oWall){
		facing *= -1;
		hsp *= -1;
	}
	
	if !place_meeting(x,y+vsp, oWall) vsp += grv;
	
	
	move_and_collide(hsp,0,oWall,abs(ceil(hsp)));
	
	move_and_collide(0,vsp,oWall,abs(ceil(vsp)),0,0);
}

function calc_mov_human_poss(){
	get_input();
	if left facing = -1;
	if right facing = 1;
	if !mrun hsp = lerp(hsp, (7*(right-left)),0.1);
	if mrun hsp = lerp(hsp, (12*(right-left)),0.2);
	
	if mup && numJumps > 0{
		vsp = -15;
		numJumps --;
	}
	
	vsp += grv;
	
	if place_meeting(x, y+(vsp/3), oWall){
		vsp = 0;
		numJumps = 2;
	}
	
	move_and_collide(hsp,0,oWall,abs(ceil(hsp)));
	
	move_and_collide(0,vsp,oWall,abs(ceil(vsp)),0,0);
}

function calc_mov_pumpkin(){
	 if !place_meeting(x,y+vsp,oWall) && !place_meeting(x,y+vsp,oPumpkinButton) vsp += grv;
	 
	 
	 hsp = lerp(hsp,0,0.04);
	
	move_and_collide(hsp,0,oWall,abs(ceil(hsp)));
	
	move_and_collide(0,vsp,oWall,abs(ceil(vsp)),0,0);
	if place_meeting(x,y+vsp,oPumpkinButton) vsp = 0;
}