// ===============================================
// TEXTBOX OPENER OBJECT - STEP EVENT
// ===============================================

// Check if player is touching and presses interaction key
var player_nearby = place_meeting(x, y, oPlayer);
var interact_pressed = keyboard_check_pressed(ord("Z")) || keyboard_check_pressed(vk_enter);
var player_can_move = true;

if (instance_exists(oPlayer)) {
    player_can_move = oPlayer.can_move;
}

// Create textbox when conditions are met
if (player_nearby && interact_pressed && player_can_move && !instance_exists(oTextbox)) {
    var new_textbox = instance_create_layer(0, 0, "Instances", oTextbox);
    
    // Copy dialogue to textbox
    var text_count = total_pages;  // Use the total_pages we set
    for (var i = 0; i < text_count; i++) {
        new_textbox.text[i] = dialogue_text[i];
    }
    
    new_textbox.text_sound = dialogue_sound;  // Pass character sound
    new_textbox.page_count = total_pages;  // Set the page count directly
    new_textbox.total_pages = total_pages;  // Pass total_pages to textbox
}
