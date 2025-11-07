interactAct = function(){
	
	var inst = instance_create_layer(x, y, "Dialogue",mObjDlg)
	with(inst){
		text_lines = [
			"Hi!!!"
	]
	init_dialogue()
	}
}