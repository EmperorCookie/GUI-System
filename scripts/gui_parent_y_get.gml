///gui_parent_y_get()
if(instance_exists(parent)) {
    with(parent) {
        return y + gui_parent_y_get();
    }
}
return 0;