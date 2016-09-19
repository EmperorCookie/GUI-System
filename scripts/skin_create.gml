///skin_create(sprite,left,top,right,borrom,xoffset,yoffset,title_xoffset,title_yoffset)
var m = ds_map_create();
m[?"ds"] = "skin";
m[?"sprite"] = argument0;
m[?"left"] = argument1;
m[?"top"] = argument2;
m[?"right"] = sprite_get_width(m[?"sprite"]) - argument3;
m[?"bottom"] = sprite_get_height(m[?"sprite"]) - argument4;
m[?"xoffset"] = argument5;
m[?"yoffset"] = argument6;
m[?"title_xoffset"] = argument7;
m[?"title_yoffset"] = argument8;
return m;