if instance_exists(oPlayer){
	var healthPercent = (oPlayer.hp/oPlayer.max_hp)*100;
	draw_healthbar(20,60,360,15,healthPercent,c_black,c_red,c_green,0,true,true);
}

