///gui_focus(id)
with(argument0) {
    if(instance_exists(parent)) {
        gui_focus(parent);
        gui_parent_set(parent);
    }
}