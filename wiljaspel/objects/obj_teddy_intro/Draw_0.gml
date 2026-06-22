var W = room_width;
var H = room_height;

var teddy_sprite = spr_teddy;

switch (dialogue_index)
{
    case 0: teddy_sprite = spr_teddy; break;
    case 1: teddy_sprite = spr_teddy2; break;
    case 2: teddy_sprite = spr_teddy2; break;
    case 3: teddy_sprite = spr_teddy3; break;
    case 4: teddy_sprite = spr_teddy; break;
    case 5: teddy_sprite = spr_teddy2; break;
    case 6: teddy_sprite = spr_teddy3; break;
    case 7: teddy_sprite = spr_teddy; break;
}

draw_set_color(make_color_rgb(245,150,185));
draw_rectangle(0, 0, W, H, false);

draw_sprite_ext(
    teddy_sprite,
    0,
    W * 0.5,
    H * 0.50,
    1.4,
    1.4,
    0,
    c_white,
    1
);

draw_set_alpha(1);
draw_set_color(c_white);
draw_rectangle(40, H - 190, W - 40, H - 40, false);

draw_set_alpha(0.65);
draw_set_color(make_color_rgb(60,30,80));
draw_rectangle(48, H - 182, W - 48, H - 48, false);

draw_set_alpha(1);

draw_set_color(c_white);

var txt = string_copy(dialogue[dialogue_index], 1, floor(text_pos));
draw_text(90, H - 150, txt);

if (finished_line)
{
    draw_text(W - 190, H - 80, "PRESS ENTER");
}