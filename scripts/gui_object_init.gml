///gui_object_init()
parent = noone; // ID OF PARENT
children = ds_list_create(); // LIST OF ALL CHILDREN
width = 32;
height = 32;
hover = 0; // IF MOUSE IS HOVERING
enabled = 1; // DISABLED OBJECTS WILL ALWAYS HAVE hover SET TO 0
hidden = 0; // INVERSE VISIBLE BECAUSE GAMEMAKER ALREADY USES visible
visible = 0; // DISABLE AUTOMATIC DRAWING
//xoffset = 0;
//yoffset = 0;