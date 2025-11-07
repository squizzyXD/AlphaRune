// ===============================================
// TEXTBOX OBJECT (oTextbox) - DRAW EVENT
// ===============================================

// Position textbox on screen
var cam_x = camera_get_view_x(view_camera[0]);
var cam_y = camera_get_view_y(view_camera[0]);
var cam_width = camera_get_view_width(view_camera[0]);

// Center textbox horizontally, near bottom of screen
textbox_x = cam_x + (cam_width / 2) - (textbox_width / 2);
textbox_y = cam_y + 200;

// Set up text properties every frame to ensure they're correct
draw_set_font(fText);
draw_set_valign(fa_top);
draw_set_halign(fa_left);

// Draw the textbox background
if (sprite_exists(textbox_sprite)) {
    var sprite_w = sprite_get_width(textbox_sprite);
    var sprite_h = sprite_get_height(textbox_sprite);
    draw_sprite_ext(textbox_sprite, 0, textbox_x, textbox_y, 
                   textbox_width/sprite_w, textbox_height/sprite_h, 0, c_white, 1);
} else {
    // Fallback if no sprite exists - draw a simple box
    draw_set_color(c_black);
    draw_rectangle(textbox_x, textbox_y, textbox_x + textbox_width, textbox_y + textbox_height, false);
    draw_set_color(c_black);
    draw_rectangle(textbox_x + 2, textbox_y + 2, textbox_x + textbox_width - 2, textbox_y + textbox_height - 2, false);
    draw_set_color(c_white); // Reset color for text
}

// Only draw text if setup is complete and we have valid data
if (setup && page < page_count && text_length[page] > 0) {
    var display_text = string_copy(text[page], 1, floor(draw_char));
    var text_x = textbox_x + text_x_offset;
    var text_y = textbox_y + text_y_offset;
    var text_width = textbox_width - (text_x_offset * 2);

//set text white
    draw_set_color(c_white);
    draw_text_ext(text_x, text_y, display_text, line_sep, text_width);
}







//hey jacob





