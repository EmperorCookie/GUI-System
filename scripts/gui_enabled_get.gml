///gui_enabled_get(id)
with(argument0) {
    if(enabled && instance_exists(parent)) {
        return gui_enabled_get(parent);
    }
    return enabled;
}