///gui_parent_set(parent)
var p = argument0;
gui_parent_reset();
parent = p;
if(!instance_exists(parent) || !object_is_ancestor(parent.object_index, gui_base)) {
    parent = gui_root();
}
ds_list_insert(parent.children, 0, id);