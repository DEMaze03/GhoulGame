if floor(y) > startY - 128{
	y = lerp(y, startY - 128, 0.1);
}else{
	image_index = hint+1;
}
if point_distance(x,y,oPlayer.x,oPlayer.y) >= 200{
	y = lerp(y, startY, 0.1);
}