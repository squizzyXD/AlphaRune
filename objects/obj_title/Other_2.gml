//variables
global.start_room = rm_bedroom
global.start_x = 163
global.start_y = 154
global.new_game = false
global.title_buttons = false

//control defaults
global.selectbutton = ord("Z")
global.cancelbutton = ord("X")
global.sprintbutton = ord("X")
global.menubutton = ord("C")
global.upbutton = ord("W")
global.downbutton = ord("S")
global.leftbutton = ord("A")
global.rightbutton = ord("D")


//updating controls 
scr_updatecontrols()


//room ids
global.rm0 = 0
global.rm1 = 1
global.rm2 = 2
global.rm3 = 3
global.rm4 = 4
global.rm5 = 5

if((file_exists("Alpharune.ini"))){

	instance_create_depth(5, 51, 50, obj_buttons_continue)

	ini_open("Alpharune.ini")
	global.start_room = ini_read_string("Save1", "room", rm_hallway)
	global.start_x = ini_read_real("Save1", "x", 163)
	global.start_y = ini_read_real("Save1", "y", 154)
	ini_close()
	
} else{

instance_create_depth(5, 51, 100, obj_buttons)

}

//ADD MORE HERE IF NEEDED
if(global.start_room = 0){
	
	global.start_room = rm_test
	
}
if(global.start_room = 1){
	
	global.start_room = rm_bedroom
	
}
if(global.start_room = 2){
	
	global.start_room = rm_hallway
	
}