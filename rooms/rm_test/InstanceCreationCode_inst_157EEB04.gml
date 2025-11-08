interactAct = function(){
	
	var inst = instance_create_layer(x, y, "Dialogue", mObjDlg)
	with(inst){
		dlg_box_preset = 0
		dlg_pos_preset = 1
		text_lines = [
			"AHHHHHHHHH",
			"OH GOD",
		"IT HURTS HELP ME",
			
		]
		init_dialogue()
	}
}
