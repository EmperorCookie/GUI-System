///gui_root()
if(instance_number(gui_root_object) > 0) {
    return gui_root_object.id;
} else {
    return instance_create(0, 0, gui_root_object);
}