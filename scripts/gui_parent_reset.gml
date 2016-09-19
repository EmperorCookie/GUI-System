///gui_parent_reset()
if(instance_exists(parent)) {
    ds_list_delete(parent.children, ds_list_find_index(parent.children, id));
}
parent = noone;