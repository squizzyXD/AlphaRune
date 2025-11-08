interactAct = function(){
	
	var inst = instance_create_layer(x, y, "Dialogue", mObjDlg)
	with(inst){
		dlg_box_preset = 0
		dlg_pos_preset = 1
		text_lines = [
			"what the thing is saying is right.",
			"this game has been corrupted so much, to the point where characters not even",
			"from this games universe are appearing.",
			"Like me, Sollux Captor from Homestuck.",
			"the only way to fix it all is to",
			"<<color=ff0000>>leave.<<color=ffffff>>",
			"<<color=ff0000>>this.<<color=ffffff>>",
			"<<color=ff0000>>game.<<color=ffffff>>",
			
		]
		init_dialogue()
	}
}
