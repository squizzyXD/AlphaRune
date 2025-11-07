// Global maps for tracking instances, categories, and interrupt flags
sfx_instances            = ds_map_create();
sfx_categories           = ds_map_create();
sfx_interrupt_flags      = ds_map_create();
sfx_category_interrupts  = ds_map_create();

// === Function: sfx_play ===
/// @function sfx_play(_sound, _volume, _pitch, _loop, _interrupt_duplicates, _category)
/// @description Play a sound with optional interruption and categorization
sfx_play = function(_sound, _volume = 1, _pitch = 1, _loop = false, _interrupt_duplicates = false, _category = "") {
    var name = string(_sound);

    // Interrupt duplicate instance
    if (_interrupt_duplicates && ds_map_exists(sfx_instances, name)) {
        var old_id = sfx_instances[? name];
        if (audio_is_playing(old_id)) audio_stop_sound(old_id);
    }

    // Interrupt by category
    if (_category != "" && ds_map_exists(sfx_category_interrupts, _category) && sfx_category_interrupts[? _category]) {
        var all_keys = ds_map_keys(sfx_instances);
        for (var i = 0; i < array_length(all_keys); i++) {
            var key = all_keys[i];
            if (ds_map_exists(sfx_categories, key) && sfx_categories[? key] == _category) {
                var cat_id = sfx_instances[? key];
                if (audio_is_playing(cat_id)) audio_stop_sound(cat_id);
                ds_map_delete(sfx_instances, key);
            }
        }
    }

    // Play new sound
    var sid = audio_play_sound(_sound, false, _loop);
    audio_sound_gain(sid, _volume, 0);
    audio_sound_pitch(sid, _pitch);

    // Store instance data
    sfx_instances[? name]       = sid;
    sfx_categories[? name]      = _category;
    sfx_interrupt_flags[? name] = _interrupt_duplicates;

    return sid;
};

// === Function: sfx_pause ===
/// @function sfx_pause(_sound)
/// @description Pause a specific sound instance
sfx_pause = function(_sound) {
    var name = string(_sound);
    if (ds_map_exists(sfx_instances, name)) {
        var sid = sfx_instances[? name];
        if (audio_is_playing(sid)) audio_pause_sound(id);
    }
};

// === Function: sfx_resume ===
/// @function sfx_resume(_sound)
/// @description Resume a paused sound instance
sfx_resume = function(_sound) {
    var name = string(_sound);
    if (ds_map_exists(sfx_instances, name)) {
        var sid = sfx_instances[? name];
        audio_resume_sound(sid);
    }
};

// === Function: sfx_stop ===
/// @function sfx_stop(_sound)
/// @description Stop and remove a specific sound instance
sfx_stop = function(_sound) {
    var name = string(_sound);
    if (ds_map_exists(sfx_instances, name)) {
        var sid = sfx_instances[? name];
        if (audio_is_playing(sid)) audio_stop_sound(sid);

        ds_map_delete(sfx_instances, name);
        ds_map_delete(sfx_categories, name);
        ds_map_delete(sfx_interrupt_flags, name);
    }
};

// Pause all playing SFX
/// @function pauseAll()
pauseAll = function() {
    var all_keys = ds_map_keys(sfx_instances);
    for (var i = 0; i < array_length(all_keys); i++) {
        var key = all_keys[i];
        var sid = sfx_instances[? key];
        if (audio_is_playing(sid)) audio_pause_sound(sid);
    }
};

// Resume all paused SFX
/// @function resumeAll()
resumeAll = function() {
    var all_keys = ds_map_keys(sfx_instances);
    for (var i = 0; i < array_length(all_keys); i++) {
        var key = all_keys[i];
        var sid = sfx_instances[? key];
        // resume regardless of playing state
        audio_resume_sound(sid);
    }
};

// Stop all SFX and clear maps
/// @function stopAll()
stopAll = function() {
    var all_keys = ds_map_keys(sfx_instances);
    for (var i = 0; i < array_length(all_keys); i++) {
        var key = all_keys[i];
        var sid = sfx_instances[? key];
        if (audio_is_playing(sid)) audio_stop_sound(sid);
    }
    
    // Clear all tracking maps
    ds_map_clear(sfx_instances);
    ds_map_clear(sfx_categories);
    ds_map_clear(sfx_interrupt_flags);
};

// === Function: sfx_set_category_interrupt ===
/// @function sfx_set_category_interrupt(_category, _should_interrupt)
/// @description Enable or disable interrupt for a category
sfx_set_category_interrupt = function(_category, _should_interrupt) {
    sfx_category_interrupts[? _category] = _should_interrupt;
};
