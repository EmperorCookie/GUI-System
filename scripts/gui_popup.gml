///gui_popup(message,font)
draw_set_font(argument1);
var w = string_width(argument0);
var h = string_height(argument0);
var ww = max(250, w + 20);
var wh = h + 77;
with(gui_root()) {
    with(gui_create(0, 0, gui_blocker)) {
        with(gui_create(round(width * 0.5 - ww * 0.5), round(height * 0.5 - wh * 0.5), gui_window)) {
            width = ww;
            height = wh;
            // TITLE BAR //
            with(gui_create(0, 0, gui_windowtitle)) {
                caption = "Popup";
                font = argument1;
                draggable = 0;
            }
            // CLOSE BUTTON //
            with(gui_create(width - 21, 4, gui_button)) {
                width = 16;
                height = 16;
                caption = "X";
                font = argument1;
                callback = callback_close;
            }
            // TEXT //
            with(gui_create(width * 0.5, 35, gui_label)) {
                caption = argument0;
                font = argument1;
                halign = fa_center;
                valign = fa_top;
            }
            // OKAY BUTTON //
            with(gui_create(width * 0.5 - 48, height - 32, gui_button)) {
                width = 96;
                height = 24;
                caption = "Ok";
                font = argument1;
                callback = callback_close;
            }
        }
    }
}
