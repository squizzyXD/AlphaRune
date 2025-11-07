// ===============================================
// TEXTBOX OBJECT (oTextbox) - STEP EVENT
// ===============================================

// Input
confirm_key = keyboard_check_pressed(ord("Z")) || keyboard_check_pressed(vk_enter);
skip_key = keyboard_check_pressed(ord("X"));
emergency_close = keyboard_check_pressed(ord("C"));

// First-time setup (moved to Step Event for better reliability)
if (!setup) {
    setup = true;
    
    // Stop player movement
    if (instance_exists(oPlayer)) {
        oPlayer.can_move = false;
    }
    
    // Calculate text lengths for each page - simple approach
    var pages = array_length(text);
    for (var i = 0; i < pages; i++) {
        if (is_undefined(text[i])) {
            text[i] = "";  // Ensure no undefined values
        }
        text_length[i] = string_length(text[i]);
    }
    
    // Count only non-empty pages
    page_count = 0;
    for (var i = 0; i < pages; i++) {
        if (text[i] != "") {
            page_count++;
        }
    }
}

// Type out text character by character
if (draw_char < text_length[page]) {
    var old_char_count = floor(draw_char);
    draw_char += text_speed;
    draw_char = clamp(draw_char, 0, text_length[page]);
    var new_char_count = floor(draw_char);
    
    // Play sound when new character appears
    if (new_char_count > old_char_count && audio_exists(text_sound)) {
        audio_play_sound(text_sound, 10, false);
    }
}

// Emergency close - press C to close all textboxes
if (emergency_close) {
    if (instance_exists(oPlayer)) {
        oPlayer.can_move = true;
    }
    instance_destroy();
}

// Handle input
if (confirm_key) {
    if (draw_char >= text_length[page]) {
        // Text is fully displayed
        if (page >= total_pages - 1) {  // Close after last page
            should_close = true;
        } else {
            // Go to next page
            page++;
            draw_char = 0;
        }
    } else {
        // Text still typing, skip to end of current page
        draw_char = text_length[page];
    }
}

// Close textbox if flagged
if (should_close) {
    if (instance_exists(oPlayer)) {
        oPlayer.can_move = true;
    }
    instance_destroy();
}

// Skip key - instantly show all text on current page
if (skip_key && draw_char < text_length[page]) {
    draw_char = text_length[page];
}
