interactAct = function(){
	
	var inst = instance_create_layer(x, y, "Dialogue", mObjDlg)
	with(inst){
		dlg_box_preset = 0
		dlg_pos_preset = 1
		text_lines = [
			"PRYING EYES ARE NOT MEANT FOR HERE",
			"PUNISHMENTS FOR SUCH ARE",
			"....",
			"<<face_w=-10&face_h=-5&face_x=-4&face=none&voice=snd_txt>> <<color=728AED>>UNWANTED KNOWLEDGE.<<color=ffffff>>",
			
		]
		init_dialogue()
	}
}