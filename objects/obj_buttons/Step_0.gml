//start save
ini_open("Alpharune.ini")
if(image_index = 0 and global.selectbuttonpressed){

	room_goto(global.start_room)
	var instantiated = instance_create_layer(global.start_x, global.start_y, "Player", obj_player)
	global.new_game = false



	}	
	
	//settings
	if selected = 1 and global.selectbuttonpressed{
		menu = 2
		selected = 0
	
	}


//controls


