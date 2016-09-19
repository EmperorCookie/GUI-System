///callback_subwindow()
with(gui_root()) {
    with(gui_create(random(room_width - 250), random(room_height - 100), gui_window)) {
        width = 250;
        height = 100;
        // TITLE BAR //
        with(gui_create(0, 0, gui_windowtitle)) {
            caption = "Sub Window";
        }
        // CLOSE BUTTON //
        with(gui_create(width - 21, 4, gui_button)) {
            width = 16;
            height = 16;
            caption = "X";
            callback = callback_close;
        }
    }
}