if state == 0 {
	timer++;
	
	//change room
	if timer >= duration{
		room_goto(target);
		
		//set state
		state = 1;
	}
}else if state == 1 {
	timer--;
	
	//destroy
	if timer <= 0{
		instance_destroy();
	}
}

//set alpha
alpha = timer / duration;