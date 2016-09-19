///gui_reset()
gui_destroy(gui_root_object);
/*while(ds_list_size(gui_root().children) > 0) {
    if(!gui_destroy(gui_root().children[|0])) {
        ds_list_delete(gui_root().children, 0);
    }
}