/// Create variables for input
key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_up = keyboard_check(vk_up);
key_down = keyboard_check(vk_down);


/// Calculate movement
var moveh = key_right - key_left;
var movev = key_down - key_up;

hsp = moveh * walkspeed;
vsp = movev * walkspeed;


//Horizontal Collision
if (place_meeting(x+hsp, y, obj_wall))
{
	while (!place_meeting(x+sign(hsp), y, obj_wall))
	{
		x = x + sign(hsp);
	}
		hsp = 0;
}

//Critical for horizontal movement of player
x = x + hsp;


//Vertical Collision
if (place_meeting(x, y+vsp, obj_wall))
{
	while (!place_meeting(x, y+sign(vsp), obj_wall))
	{
		y = y + sign(vsp);
	}
		vsp = 0;
}

//Critical for vertical movement of player
y = y + vsp;