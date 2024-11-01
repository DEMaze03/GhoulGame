// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function get_input(){
	left = keyboard_check(ord("A")) or keyboard_check(vk_left);	
	right = keyboard_check(ord("D")) or keyboard_check(vk_right);
	up = keyboard_check(ord("W")) or keyboard_check(vk_up);
	down = keyboard_check(ord("S")) or keyboard_check(vk_down);
	check = keyboard_check(ord("X")) or keyboard_check(vk_enter);
	check_released = keyboard_check_released(ord("X")) or keyboard_check_released(vk_enter);
	
	//menu
	mleft = keyboard_check_pressed(ord("A")) or keyboard_check_pressed(vk_left);
	mright = keyboard_check_pressed(ord("D")) or keyboard_check_pressed(vk_right);
	mup = keyboard_check_pressed(ord("W")) or keyboard_check_pressed(vk_up);
	mdown = keyboard_check_pressed(ord("S")) or keyboard_check_pressed(vk_down);
	mpickup = keyboard_check_pressed(ord("K")) or keyboard_check_pressed(ord("X"));
	mjump = keyboard_check_pressed(ord("L")) or keyboard_check_pressed(ord("Z"));
	mrun = keyboard_check(vk_shift);
	mcheck = keyboard_check_pressed(vk_enter) or keyboard_check_pressed(ord("X"));
	
	//controller
	var _dev = 0;
	if gamepad_is_connected(_dev) {
		var _deadzone = 0.3;
		left	= gamepad_button_check(_dev, gp_padl) or left;
		right	= gamepad_button_check(_dev, gp_padr) or right;
		up		= gamepad_button_check(_dev, gp_padu) or up;
		down	= gamepad_button_check(_dev, gp_padd) or down;
		mcheck = gamepad_button_check_pressed(_dev,gp_face1) or mcheck;
		check_released = gamepad_button_check_released(_dev,gp_face1) or check_released;
		//cancel = gamepad_button_check_pressed(_dev,gp_face2) or cancel;
		//menu = gamepad_button_check_pressed(_dev,gp_face3) or menu;
	
		//menu gp
		mleft	= gamepad_button_check_pressed(_dev, gp_padl) or mleft;
		mright	= gamepad_button_check_pressed(_dev, gp_padr) or mright;
		mup		= gamepad_button_check_pressed(_dev, gp_padu) or mup;
		mdown	= gamepad_button_check_pressed(_dev, gp_padd) or mdown;
	}
}