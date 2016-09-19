///gui_parent_x_get()
if(instance_exists(parent)) {
    with(parent) {
        return x + gui_parent_x_get();
    }
}
return 0;