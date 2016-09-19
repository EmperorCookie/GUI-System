///gui_skin_draw(sprite,subimg,x,y,width,height,blend,alpha)
if(!gui_skin_exists(argument0)) {
    exit;
}
var spr = argument0;
var asubimg = argument1;
var ax = argument2;
var ay = argument3;
var aw = max(1, argument4 - 1);
var ah = max(1, argument5 - 1);
var ablend = argument6;
var aalpha = argument7;
var m = gui_root().skins[?spr];
var u = m[?"top"];
var d = sprite_get_height(spr) - m[?"bottom"];
var l = m[?"left"];
var r = sprite_get_width(spr) - m[?"right"];
var bu = m[?"btop"];
var bd = m[?"bbottom"];
var bl = m[?"bleft"];
var br = m[?"bright"];
ax -= l - bl;
ay -= u - bu;
aw -= bl + br;
ah -= bu + bd;
var sw = sprite_get_width(spr) - l - r;
var sh = sprite_get_height(spr) - u - d;
var xs = aw / sw;
var ys = ah / sh;
draw_sprite_part_ext(spr, asubimg, 0, 0, l, u, ax, ay, 1, 1, ablend, aalpha); // TOP LEFT
draw_sprite_part_ext(spr, asubimg, 0, u, l, sh, ax, ay + u, 1, ys, ablend, aalpha); // MIDDLE LEFT
draw_sprite_part_ext(spr, asubimg, 0, u + sh, l, d, ax, ay + u + sh * ys, 1, 1, ablend, aalpha); // BOTTOM LEFT
draw_sprite_part_ext(spr, asubimg, l, 0, sw, u, ax + l, ay, xs, 1, ablend, aalpha); // TOP MIDDLE
draw_sprite_part_ext(spr, asubimg, l, u, sw, sh, ax + l, ay + u, xs, ys, ablend, aalpha); // MIDDLE
draw_sprite_part_ext(spr, asubimg, l, u + sh, sw, d, ax + l, ay + u + sh * ys, xs, 1, ablend, aalpha); // BOTTOM MIDDLE
draw_sprite_part_ext(spr, asubimg, l + sw, 0, r, u, ax + l + sw * xs, ay, 1, 1, ablend, aalpha); // TOP RIGHT
draw_sprite_part_ext(spr, asubimg, l + sw, u, r, sh, ax + l + sw * xs, ay + u, 1, ys, ablend, aalpha); // MIDDLE RIGHT
draw_sprite_part_ext(spr, asubimg, l + sw, u + sh, r, d, ax + l + sw * xs, ay + u + sh * ys, 1, 1, ablend, aalpha); // BOTTOM RIGHT