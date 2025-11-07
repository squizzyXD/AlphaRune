// Stop current music when leaving room
if (current_music != -1) {
    audio_stop_sound(current_music);
    current_music = -1;
}