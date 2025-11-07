// ===============================================
// TEXTBOX OBJECT (oTextbox) - CREATE EVENT
// ===============================================

// Textbox appearance
textbox_width = 300;
textbox_height = 80;
border = 10;
textbox_sprite = asset_get_index("sTextbox");  // Your textbox sprite

// Check if sprite exists, if not use fallback
if (!sprite_exists(textbox_sprite)) {
    textbox_sprite = -1;  // Use fallback drawing
}

// Text settings
text_speed = 0.5;  // Characters per frame (0.5 = slower, 1 = faster)
line_sep = 15;     // Space between lines
text_x_offset = 25; // Text padding from left edge
text_y_offset = 10; // Text padding from top edge

// Current state
page = 0;          // Current page of dialogue
draw_char = 0;     // How many characters to show
setup = false;     // Has setup been run
should_close = false;  // Flag to close textbox

// Initialize arrays properly
text[0] = "Default text";
text_length[0] = 0;  // Initialize the array
text_sound = sndDefaultText;
page_count = 0;
total_pages = 1;  // Default value
speaker_name = "";  // Default speaker name

// Input
confirm_key = false;
skip_key = false;