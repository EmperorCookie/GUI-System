///skin_draw(id,subimg,title,x,y,width,height,blend,alpha)
if(!skin_exists(argument0)) {
    exit;
}
var m = argument0;
var asubimg = argument1;
var at = argument2;
var ax = argument3;
var ay = argument4;
var aw = max(1, argument5);
var ah = max(1, argument6);
var ablend = argument7;
var aalpha = argument8;
var spr = m[?"sprite"];
var u = m[?"top"];
var d = m[?"bottom"];
var l = m[?"left"];
var r = m[?"right"];
ax -= l;
ay -= u;
var sw = sprite_get_width(spr) - l - r;
var sh = sprite_get_height(spr) - u - d;
var xs = aw / sw;
var ys = ah / sh;
draw_sprite_part_ext(spr, asubimg, 0, 0, l, u, ax, ay, 1, 1, ablend, aalpha);
draw_sprite_part_ext(spr, asubimg, 0, u, l, sh, ax, ay + u, 1, ys, ablend, aalpha);
draw_sprite_part_ext(spr, asubimg, 0, u + sh, l, d, ax, ay + u + sh * ys, 1, 1, ablend, aalpha);
draw_sprite_part_ext(spr, asubimg, l, 0, sw, u, ax + l, ay, xs, 1, ablend, aalpha);
draw_sprite_part_ext(spr, asubimg, l, u, sw, sh, ax + l, ay + u, xs, ys, ablend, aalpha);
draw_sprite_part_ext(spr, asubimg, l, u + sh, sw, d, ax + l, ay + u + sh * ys, xs, 1, ablend, aalpha);
draw_sprite_part_ext(spr, asubimg, l + sw, 0, r, u, ax + l + sw * xs, ay, 1, 1, ablend, aalpha);
draw_sprite_part_ext(spr, asubimg, l + sw, u, r, sh, ax + l + sw * xs, ay + u, 1, ys, ablend, aalpha);
draw_sprite_part_ext(spr, asubimg, l + sw, u + sh, r, d, ax + l + sw * xs, ay + u + sh * ys, 1, 1, ablend, aalpha);