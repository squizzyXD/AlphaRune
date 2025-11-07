interactAct = function(){
	
	var inst = instance_create_layer(x, y, "Dialogue", mObjDlg)
	with(inst){
		dlg_box_preset = 0
		dlg_pos_preset = 1
		text_lines = [
			"THIS EXPERIMENT SEEMS",
			"VERY VERY",
			"INTERESTING",
			
			
		]
		init_dialogue()
	}
}
