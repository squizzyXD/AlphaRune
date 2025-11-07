interactAct = function(){
	
	var inst = instance_create_layer(x, y, "Dialogue", mObjDlg)
	with(inst){
		dlg_box_preset = 0
		dlg_pos_preset = 1
		text_lines = [
			"uh oh.",
			"your um",
			"ah",
			"your not supposed to be here....",
			"<<face_w=-10&face_h=-5&face_x=-4&face=none&voice=snd_txt>>By the way, I am <<color=ff0000>>the shroomy guy<<color=ffffff>>",
			
		]
		init_dialogue()
	}
}