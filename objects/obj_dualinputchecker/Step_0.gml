//select
if keyboard_check_pressed(global.selectbutton) or keyboard_check_pressed(vk_enter){
	global.selectbuttonpressed = true
} else{
	global.selectbuttonpressed = false
}

//sprint
if keyboard_check_pressed(global.sprintbutton) or keyboard_check_pressed(vk_shift){
	global.sprintbuttonpressed = true
} else{
	global.sprintbuttonpressed = false
}

//up
if keyboard_check_pressed(global.upbutton) or keyboard_check_pressed(vk_up){
	global.upbuttonpressed = true
} else{
	global.upbuttonpressed = false
}

//down
if keyboard_check_pressed(global.downbutton) or keyboard_check_pressed(vk_down){
	global.downbuttonpressed = true
} else{
	global.downbuttonpressed = false
}

//left
if keyboard_check_pressed(global.leftbutton) or keyboard_check_pressed(vk_left){
	global.leftbuttonpressed = true
} else{
	global.leftbuttonpressed = false
}

//right
if keyboard_check_pressed(global.rightbutton) or keyboard_check_pressed(vk_right){
	global.rightbuttonpressed = true
} else{
	global.rightbuttonpressed = false
}
