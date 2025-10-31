//variables
global.start_room = rm_bedroom
global.start_x = 163
global.start_y = 154

global.new_game = false

if((file_exists("Alpharune.ini"))){

ini_open("Alpharune.ini")
global.start_room = ini_read_real("Save1", "room", rm_bedroom)
global.start_x = ini_read_real("Save1", "x", 163)
global.start_y = ini_read_real("Save1", "y", 154)
ini_close()
}