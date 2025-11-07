interacted = 0
old = false

//lines

//english
if global.lang = "en"{

txt1 = [
	"<<voice=snd_txtger>>hi!",
	"I spent a lot of time on this game...",
	"I should probably get an A mark.",
	"<<disablestartstar>><<breakspace=false>><<menu=gersonyes1,gersonno1>>Yes_SEP_No"
]


}

interactAct = function(){
	
	
	var inst = instance_create_layer(x, y, "Dialogue", mObjDlg)
	with(inst){
		dlg_box_preset = 0
		dlg_pos_preset = 1
		//first talk dlg
		if obj_interact.interacted = 0{
			text_lines = obj_interact.txt1
		} else{
			//said yes
			if obj_interact.old = true{
				text_lines = obj_interact.txtyes
			} else{
				//said no
				text_lines = obj_interact.txtno
			}
		}
		init_dialogue()
	}
	
	//interacted counter
	obj_interact.interacted++
	
}