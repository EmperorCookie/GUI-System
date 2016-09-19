///gui_question(message,font,yes_callback,no_callback)
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
                caption = "Question";
                font = argument1;
                draggable = 0;
            }
            // CLOSE BUTTON //
            with(gui_create(width - 21, 4, gui_button)) {
                width = 16;
                height = 16;
                caption = "X";
                font = argument1;
                callback = argument3;
            }
            // TEXT //
            with(gui_create(width * 0.5, 35, gui_label)) {
                caption = argument0;
                font = argument1;
                halign = fa_center;
                valign = fa_top;
            }
            // YES BUTTON //
            with(gui_create(width * 0.5 - 98, height - 32, gui_button)) {
                width = 96;
                height = 24;
                caption = "Yes";
                font = argument1;
                callback = argument2;
            }
            // NO BUTTON //
            with(gui_create(width * 0.5 + 2, height - 32, gui_button)) {
                width = 96;
                height = 24;
                caption = "No";
                font = argument1;
                callback = argument3;
            }
        }
    }
}
