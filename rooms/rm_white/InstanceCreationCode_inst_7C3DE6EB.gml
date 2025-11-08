interactAct = function(){
	
	var inst = instance_create_layer(x, y, "Dialogue", mObjDlg)
	with(inst){
		dlg_box_preset = 0
		dlg_pos_preset = 1
		text_lines = [
			"you shouldnt be in here.",
			"these are some of the deepest depths of the game.",
			"if you continue to be here, you may corrupt this game.",
			
			
		]
		init_dialogue()
	}
}
