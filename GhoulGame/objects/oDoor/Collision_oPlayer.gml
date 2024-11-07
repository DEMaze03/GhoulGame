if state == "open" && !instance_exists(o_fade){
	
	fade(roomtoGoTo,60,c_purple);
	if oPlayer.state == "Possessing"{
	oPlayer.state = "Ghoul";
		oPlayer.possessionTarget.possessed = false;
		oPlayer.possessionTarget.alarm[0] = room_speed*0.1;
		oPlayer.id.visible = true;
		oPlayer.vsp = -6;
		oPlayer.possessionTarget = noone;
	}
	oPlayer.state = "Ascending";
}
if state == "open" oPlayer.x = lerp(oPlayer.x,x,0.1);