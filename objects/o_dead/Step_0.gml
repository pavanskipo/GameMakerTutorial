/// @description Insert description here
// You can write your code in this editor

if (done == 0) {
	vsp = vsp + grv
	
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
		if (vsp > 0) {
			done = 1;
			image_index = 1;
		}		
		while (!place_meeting(x, y+sign(vsp), o_wall)) {
			y = y + sign(vsp);
		}
		vsp = 0;	
	}
	y = y + vsp
}

