

switch(state){
	case "open":
		image_index = 1;
		
		for(var i = 0; i < array_length(buttonsNeeded); i++){
			if buttonsNeeded[i] != noone{
				if buttonsNeeded[i].state == "Pressed"{
					numButtonsPressed++;
				}
			}
			
		}
	
		if numButtonsPressed != numButtonsToBePressed state = "closed";
		numButtonsPressed = 0;

	break;
	
	case "closed":
		image_index = 0;
		
		for(var i = 0; i < array_length(buttonsNeeded); i++){
			if buttonsNeeded[i] != noone{
				if buttonsNeeded[i].state == "Pressed"{
					numButtonsPressed++;
				}
			}
			
		}
	
		if numButtonsPressed == numButtonsToBePressed state = "open";
		numButtonsPressed = 0;
	break;
}