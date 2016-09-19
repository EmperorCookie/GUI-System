///gui_hover_update()
var mx = device_mouse_x_to_gui(0);
var my = device_mouse_y_to_gui(0);
var ax = gui_parent_x_get() + x;
var ay = gui_parent_y_get() + y;
if(!hidden && enabled && mx >= ax && mx < ax + width && my >= ay && my < ay + height) {
    for(var a = 0; a < ds_list_size(children); a += 1) {
        with(children[|a]) {
            if(gui_hover_update()) {
                other.hover = 0;
                return 1;
            }
        }
    }
    hover = 1;
    return 1;
} else {
    hover = 0;
    return 0;
}