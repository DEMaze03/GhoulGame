origin = oPlayer;
var xOrig = origin.x;
var yOrig = origin.y;

target = target;
var xTarg = target.x;
var yTarg = target.y;

x = xOrig;
y = yOrig;

var angle = point_direction(xOrig,yOrig,xTarg,yTarg);
var width = sprite_width;

for(var i = 0; distance_to_point(xTarg,yTarg) > (i * width); i++){
	draw_sprite_ext(sprite_index, image_index, x + lengthdir_x(i*width,angle), y + lengthdir_y(i*width,angle),1,1,angle,image_blend,image_alpha);
}

draw_sprite(sBubble,image_index,xTarg,yTarg);