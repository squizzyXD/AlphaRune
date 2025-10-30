room_goto(target_room)
obj_player.x = target_x
obj_player.y = target_y

//facing

if(facing = 0){
		obj_player.sprite_index = spr_noellewr
}

if(facing = 1){
		obj_player.sprite_index = spr_noellewl
}

if(facing = 2){
		obj_player.sprite_index = spr_noellewu
}

if(facing = 3){
		obj_player.sprite_index = spr_noellewd
}

//fade out 
image_speed = -1