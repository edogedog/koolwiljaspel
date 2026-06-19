var W = room_width;
var H = room_height;

draw_set_color(c_black);
draw_rectangle(0, 0, W, H, false);

draw_sprite(spr_teddy, 0, W/2, H*0.34);

draw_set_color(c_white);
draw_rectangle(50, H - 190, W - 50, H - 40, true);

draw_set_color(c_black);
draw_rectangle(58, H - 182, W - 58, H - 48, false);

draw_set_color(c_white);

var shown_text = string_copy(dialogue[dialogue_index], 1, floor(text_pos));
draw_text(90, H - 150, shown_text);

if (finished_line)
{
    draw_text(W - 190, H - 85, "ENTER");
}