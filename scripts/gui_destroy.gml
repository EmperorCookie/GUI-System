///gui_destroy(id)
if(instance_exists(argument0)) {
    with(argument0) {
        while(ds_list_size(children) > 0) {
            if(!gui_destroy(children[|0])) {
                ds_list_delete(children, 0);
            }
        }
        gui_parent_reset();
        if(object_index != gui_root_object) {
            ds_list_destroy(children);
            instance_destroy();
        }
    }
    return 1;
} else {
    return 0;
}