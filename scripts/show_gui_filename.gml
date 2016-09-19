///show_gui_question(title,default,extention,max_length,list_items,font,ok_caption,ok_callback,cancel_callback)
var title = argument0;
var txt = argument1;
var ext = argument2;
var length = argument3;
var items = argument4;
var fnt = argument5;
var cap_ok = argument6;
var cb_ok = argument7;
var cb_cancel = argument8;
draw_set_font(fnt);
var h = string_height("E") + 4;
with(gui_root()) {
    with(gui_create(0, 0, gui_blocker)) {
        with(gui_create(width * 0.5, height * 0.5, gui_window)) {
            width = 300;
            // TITLE BAR //
            with(gui_create(0, 0, gui_windowtitle)) {
                caption = title;
                font = fnt;
                draggable = 0;
            }
            // CLOSE BUTTON //
            with(gui_create(width - 21, 4, gui_button)) {
                width = 16;
                height = 16;
                caption = "X";
                font = fnt;
                callback = cb_cancel;
            }
            // LIST //
            var oy = 30;
            
            // INPUT //
            oy += 0;
            
            // OK BUTTON //
            with(gui_create(width * 0.5 - 98, height - 32, gui_button)) {
                width = 96;
                height = 24;
                caption = cap_ok;
                font = fnt;
                callback = cb_ok;
            }
            // CANCEL BUTTON //
            with(gui_create(width * 0.5 + 2, height - 32, gui_button)) {
                width = 96;
                height = 24;
                caption = "Cancel";
                font = fnt;
                callback = cb_cancel;
            }
            x -= round(width * 0.5);
            y -= round(height * 0.5);
        }
    }
}