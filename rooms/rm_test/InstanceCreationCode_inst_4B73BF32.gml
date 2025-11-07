interactAct = function(){
	
	var inst = instance_create_layer(x, y, "Dialogue", mObjDlg)
	with(inst){
		dlg_box_preset = 0
		dlg_pos_preset = 1
		text_lines = [
			"it seems to be coopers bed.",
			"you inspect it.",
			"<<face_w=-10&face_h=-5&face_x=-4&face=spr_susfacehappy&voice=snd_txtsus>>Like, uh,why is the <<color=ff0000>>bed<<color=ffffff>> outside...",
			"<<disablestartstar>><<face=none&voice=snd_boom>><<image=spr_asgoresmirk, 115, 20, 200, 60>>.",
		]
		init_dialogue()
	}
}