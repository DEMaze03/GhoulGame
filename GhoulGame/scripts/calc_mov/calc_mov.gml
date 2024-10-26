function calc_mov_ghost(){
	get_input();
	
	hsp = lerp(hsp, 6*(right-left),0.1);
	vsp = lerp(vsp,6*(down-up),0.1);


	move_and_collide(hsp,0,oBoundary,abs(ceil(hsp)));
	
	move_and_collide(0,vsp,oBoundary,abs(ceil(vsp)),0,0);
	
		
}
