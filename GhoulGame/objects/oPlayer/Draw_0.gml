draw_self();
var healthPercent = (hp/max_hp)*100;
draw_text(x+10,y+10,healthPercent);
draw_healthbar(x-80,y-30,x+80,y-15,healthPercent,c_black,c_red,c_green,0,true,true);

