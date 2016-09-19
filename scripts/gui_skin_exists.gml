///gui_skin_exists(sprite)
if(ds_map_exists(gui_root().skins, argument0)) {
    return 1;
}
return 0;