hsp = 0;
vsp = 0;

image_alpha = 0.5;
facing = 1;
targY = y;
//show_message(targY);
y = y + (9*(room_speed)/2);
//show_message(y);

hp = 1800;
max_hp = 1800;

state = "Descending";
possessionTarget = noone;
possessionTimer = 0;
possessionTimerLimit = 30;
possessable = noone;
line = noone;
testNum = 0;

animState = "UP";