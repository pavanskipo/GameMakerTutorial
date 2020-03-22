/// @description Insert description here
// You can write your code in this editor

key_left = keyboard_check(vk_left) or keyboard_check(ord("A"))
key_right = keyboard_check(vk_right) or keyboard_check(ord("D"))
key_jump = keyboard_check_pressed(vk_space)

var move = key_right - key_left
var on_ground = place_meeting(x, y+1, o_wall)

hsp = move * walksp
vsp = vsp + grv

// Jump Section
if (on_ground and key_jump) {
	vsp = -7;
}

// Horizontal Section
if (place_meeting(x+hsp, y, o_wall)) {	
	while (!place_meeting(x+sign(hsp), y, o_wall)) {
		x = x + sign(hsp);
	}
	hsp = 0;	
}
x = x + hsp

// Vertical Section
if (place_meeting(x, y+vsp, o_wall)) {	
	while (!place_meeting(x, y+sign(vsp), o_wall)) {
		y = y + sign(vsp);
	}
	vsp = 0;	
}
y = y + vsp



// Animation
if (!on_ground) {
	sprite_index = s_player_j;
	image_speed = 0;
	if (sign(vsp) > 0) {
		image_index = 1;
	} else {
		image_index = 0;
	}
} else {
	image_speed = 1;
	if (hsp == 0) {
		sprite_index = s_player	
	} else {
		sprite_index = s_player_r
	}
}

if (hsp != 0) {
	image_xscale = sign(hsp)
}





