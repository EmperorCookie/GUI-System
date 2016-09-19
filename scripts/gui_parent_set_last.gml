///gui_parent_set_last(parent)
var p = argument0;
gui_parent_reset();
parent = p;
if(!instance_exists(parent) || !object_is_ancestor(parent.object_index, gui_base)) {
    parent = gui_root();
}
ds_list_add(parent.children, id);