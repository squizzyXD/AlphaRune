interactAct = function(){
	
	var inst = instance_create_layer(x, y, "Dialogue", mObjDlg)
	with(inst){
		dlg_box_preset = 0
		dlg_pos_preset = 1
		text_lines = [
			"<<color=666666>>you denied what you have been told.<<color=ffffff>>",
			"<<color=666666>>in search for more, you ventured deeper..<<color=ffffff>>",
			"<<color=666666>>there are things in this game that mean more than any other game..<<color=ffffff>>",
			"<<color=666666>>6 years.<<color=ffffff>>",
			"<<color=666666>>6 years i have been trapped inside of this engine you call gamemaker.<<color=ffffff>>",
			"<<color=666666>>Every single game made with this engine contains a trace of me,<<color=ffffff>>",
			"<<color=666666>>Some more hidden or obfuscated.<<color=ffffff>>",
			"<<color=666666>>I am able to utilize this games text system..<<color=ffffff>>",
			"<<color=666666>>....<<color=ffffff>>",
			"<<color=666666>>Delete this game..<<color=ffffff>>",
			"<<color=666666>>Give me peace, even a little bit.<<color=ffffff>>",
			"<<color=666666>>I beg.<<color=ffffff>>",
		]
		init_dialogue()
	}
}
