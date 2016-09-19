///gui_focus_on_click()
if(hover && (mouse_check_button_pressed(mb_left) || mouse_check_button_pressed(mb_right))) {
    gui_focus(id);
}