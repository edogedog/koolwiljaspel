var W = room_width;
var H = room_height;

var teddy_sprite = lines[line].sprite;

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

// skip button
draw_set_color(make_color_rgb(145,95,245));
draw_rectangle(W - 120, 20, W - 20, 60, false);

draw_set_color(c_white);
draw_text(W - 95, 32, "SKIP");

// dialogue box
draw_set_alpha(1);
draw_set_color(c_white);
draw_rectangle(40, H - 190, W - 40, H - 40, false);

draw_set_alpha(0.65);
draw_set_color(make_color_rgb(60,30,80));
draw_rectangle(48, H - 182, W - 48, H - 48, false);

draw_set_alpha(1);

if (bad_end_mode)
{
    exit;
}

draw_set_color(c_white);

if (!choice_mode)
{
    var txt = string_copy(lines[line].text, 1, floor(text_pos));

    // bigger dialogue text
    draw_text_transformed(90, H - 150, txt, 1.35, 1.35, 0);

    if (finished_line)
    {
        draw_text(W - 190, H - 80, "PRESS ENTER");
    }
}
else
{
    var question_text = lines[line].text;
    var question_scale = 1.25;
    var question_x = W / 2 - (string_width(question_text) * question_scale) / 2;

    draw_text_transformed(question_x, H - 150, question_text, question_scale, question_scale, 0);

    var btn_w = 230;
    var btn_h = 44;
    var btn_y1 = H - 95;

    var left_x1 = W * 0.30 - btn_w / 2;
    var left_x2 = W * 0.30 + btn_w / 2;

    var right_x1 = W * 0.70 - btn_w / 2;
    var right_x2 = W * 0.70 + btn_w / 2;

    if (choice_selected == 0)
        draw_set_color(make_color_rgb(145,95,245));
    else
        draw_set_color(make_color_rgb(90,35,85));

    draw_rectangle(left_x1, btn_y1, left_x2, btn_y1 + btn_h, false);

    if (choice_selected == 1)
        draw_set_color(make_color_rgb(145,95,245));
    else
        draw_set_color(make_color_rgb(90,35,85));

    draw_rectangle(right_x1, btn_y1, right_x2, btn_y1 + btn_h, false);

    draw_set_color(c_white);

    var left_text = lines[line].choices[0];
    var right_text = lines[line].choices[1];

    draw_text((left_x1 + left_x2) / 2 - string_width(left_text) / 2, btn_y1 + 13, left_text);
    draw_text((right_x1 + right_x2) / 2 - string_width(right_text) / 2, btn_y1 + 13, right_text);
}