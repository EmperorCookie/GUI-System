///gui_draw()
if(!hidden) {
    event_perform(ev_draw, 0);
    d3d_transform_add_translation(x, y, 0);
    for(var a = ds_list_size(children) - 1; a >= 0; a -= 1) {
        with(children[|a]) {
            gui_draw();
        }
    }
    d3d_transform_add_translation(-x, -y, 0);
}