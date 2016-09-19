///gui_get_parent_y()
if(instance_exists(parent)) {
    with(parent) {
        return y + gui_get_parent_y();
    }
}
return 0;
