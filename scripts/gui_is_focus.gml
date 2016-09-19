///gui_is_focus(id)
with(argument0) {
    if(instance_exists(parent)) {
        if(parent.children[|0] == id) {
            return gui_is_focus(parent);
        }
    } else {
        return 1;
    }
}
return 0;