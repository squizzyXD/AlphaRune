draw_set_font(fnt_main)

if menu = 1{


if selected = 0 {
	draw_set_colour(#8781BE)
} else{
	draw_set_colour(c_white)
}
draw_text(x, y,"Start Gam")
	
}
if selected = 1 {
	draw_set_colour(#8781BE)
} else{
	draw_set_colour(c_white)
}
draw_text(x, y + 30,"Settings")

if selected = 2 {
	draw_set_colour(#8781BE)
} else{
	draw_set_colour(c_white)
}
draw_text(x, y + 60,"Extras")
	

	
