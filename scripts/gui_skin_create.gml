///gui_skin_create(sprite,outer_left,outer_top,outer_right,outer_bottom,inner_left,inner_top,inner_right,inner_bottom)
if(!gui_skin_exists(argument0)) {
    var m = ds_map_create();
    m[?"left"] = argument5;
    m[?"top"] = argument6;
    m[?"right"] = argument7;
    m[?"bottom"] = argument8;
    m[?"bleft"] = argument5 - argument1;
    m[?"btop"] = argument6 - argument2;
    m[?"bright"] = argument3 - argument7;
    m[?"bbottom"] = argument4 - argument8;
    ds_map_add(gui_root().skins, argument0, m);
}