///gui_get_parent_x()
if(instance_exists(parent)) {
    with(parent) {
        return x + gui_get_parent_x();
    }
}
return 0;
