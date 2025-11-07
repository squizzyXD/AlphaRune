//runs every frame
//control
//control
var up_key = keyboard_check(vk_up) or keyboard_check(ord("W"))
var down_key = keyboard_check(vk_down) or keyboard_check(ord("S"))
var left_key = keyboard_check(vk_left) or keyboard_check(ord("A"))
var right_key = keyboard_check(vk_right) or keyboard_check(ord("D"))

//movement
if(keyboard_check(vk_shift) or keyboard_check(ord("X"))){
	move_spd = run_spd
} else{
	move_spd = walk_spd
}

xspd = (right_key - left_key) * move_spd
yspd = (down_key - up_key) * move_spd


//collisions

if(place_meeting(x + xspd, y, obj_collider)){
	
	xspd = 0

	
}
if(place_meeting(x, y + yspd, obj_collider)){
	
	yspd = 0

}

x += xspd
y += yspd

//animate
if(xspd > 0){
	sprite_index = spr_noellewr	
} else if (xspd < 0){
	sprite_index = spr_noellewl
} else if (yspd > 0){
sprite_index = spr_noellewd	
} else if (yspd < 0){
sprite_index = spr_noellewu
}

if(xspd !=  0 or yspd != 0){
	image_speed = 1	
} else{
	image_speed = 0
	image_index = 0
}

//step when move key is being tapped
if global.upbuttonpressed{
	image_index = 1
}

if global.downbuttonpressed{
	image_index = 1
}
if global.leftbuttonpressed{
	image_index = 1
}
if global.rightbuttonpressed{
	image_index = 1
}
//dont shake
x[0] = round(x[0.1]);
y[0] = round(y[0.1]);

//keep track of which direction player is facing 
//down
if(sprite_index = spr_noellewd){
	facing_direction = 2
}
//up
if(sprite_index = spr_noellewu){
	facing_direction = 3
}
//right
if(sprite_index = spr_noellewr){
	facing_direction = 0
}
//left
if(sprite_index = spr_noellewl){
	facing_direction =1
}

