///gui_create(x,y,object)
var i = instance_create(round(argument0), round(argument1), gui_base);
with(i) {
    gui_object_init();
    gui_parent_set(other.id);
    instance_change(argument2, 1);
}
return i;