if(place_meeting(x, y, obj_player)){

	ini_open("Alpharune.ini")
	ini_write_real("Save1", "room", room_to_save)
	ini_write_real("Save1", "x", obj_player.x)
	ini_write_real("Save1", "y", obj_player.y)
	ini_write_real("Save1", "facing", obj_player.facing_direction)
	ini_close()
}


show_debug_message(filename_dir("save.ini"));

