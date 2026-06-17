var W = room_width;
var H = room_height;

var bg = make_color_rgb(255, 184, 88);
var pink = make_color_rgb(245, 150, 185);
var hotpink = make_color_rgb(230, 90, 160);
var purple = make_color_rgb(145, 95, 245);
var dark = make_color_rgb(90, 35, 85);
var shelf = make_color_rgb(125, 65, 40);
var shelf2 = make_color_rgb(95, 45, 30);
var label = make_color_rgb(240, 145, 125);
var skin = make_color_rgb(190, 120, 80);
var white = c_white;
var black = c_black;
var grey = c_silver;
var green = make_color_rgb(80, 190, 120);

draw_set_color(bg);
draw_rectangle(0, 0, W, H, false);

if (game_state == "menu")
{
    draw_set_color(pink);
    draw_rectangle(W * 0.22, H * 0.18, W * 0.78, H * 0.82, false);

    draw_set_color(white);
    draw_text(W/2 - 90, H * 0.25, "DRESS UP GAME");
    draw_text(W/2 - 130, H * 0.31, "make the perfect outfit");

    if (mouse_check_button(mb_left)
    && mouse_x > W/2 - 160 && mouse_x < W/2 + 160
    && mouse_y > H/2 - 40 && mouse_y < H/2 + 50)
    {
        draw_set_color(grey);
        draw_rectangle(W/2 - 145, H/2 - 25, W/2 + 145, H/2 + 35, false);
        draw_set_color(black);
        draw_text(W/2 - 35, H/2 - 5, "START");
    }
    else
    {
        draw_set_color(green);
        draw_rectangle(W/2 - 160, H/2 - 40, W/2 + 160, H/2 + 50, false);
        draw_set_color(white);
        draw_text(W/2 - 35, H/2 - 5, "START");
    }

    draw_set_color(white);
    draw_rectangle(W/2 - 150, H/2 + 100, W/2 - 120, H/2 + 130, false);
    draw_rectangle(W/2 - 150, H/2 + 140, W/2 - 120, H/2 + 170, false);
    draw_rectangle(W/2 - 150, H/2 + 180, W/2 - 120, H/2 + 210, false);

    draw_set_color(black);
    draw_text(W/2 - 105, H/2 + 108, "Fullscreen");
    draw_text(W/2 - 105, H/2 + 148, "Music");
    draw_text(W/2 - 105, H/2 + 188, "Sound");

    if (global.fullscreen) draw_text(W/2 - 143, H/2 + 105, "X");
    if (global.music) draw_text(W/2 - 143, H/2 + 145, "X");
    if (global.sound) draw_text(W/2 - 143, H/2 + 185, "X");
}
else
{
    draw_set_color(dark);
    draw_rectangle(0, 0, W * 0.30, H, false);

    draw_set_color(white);
    draw_text(30, 25, "< MENU");
    draw_text(W * 0.05, H * 0.08, "MODEL");
    draw_text(W * 0.05, H * 0.13, "Prompt: " + theme);

    var cx = W * 0.15;
    var cy = H * 0.36;

    draw_set_color(skin);
    draw_circle(cx, cy - 90, 28, false);
    draw_rectangle(cx - 22, cy - 60, cx + 22, cy + 70, false);
    draw_line(cx - 22, cy - 20, cx - 70, cy + 40);
    draw_line(cx + 22, cy - 20, cx + 70, cy + 40);
    draw_line(cx - 18, cy + 70, cx - 50, cy + 190);
    draw_line(cx + 18, cy + 70, cx + 50, cy + 190);

    draw_set_color(white);
    draw_text(W * 0.05, H * 0.72, "SCORE");
    draw_text(W * 0.05, H * 0.76, string(points) + " / 5");

    draw_text(W * 0.05, H * 0.82, "OUTFIT");
    draw_text(W * 0.05, H * 0.86, tops[top_choice]);
    draw_text(W * 0.05, H * 0.89, bottoms[bottom_choice]);
    draw_text(W * 0.05, H * 0.92, hats[hat_choice]);
    draw_text(W * 0.05, H * 0.95, accessories[accessory_choice]);
    draw_text(W * 0.05, H * 0.98, shoes_list[shoes_choice]);

    draw_set_color(bg);
    draw_rectangle(W * 0.30, 0, W, H, false);

    var sx1 = W * 0.34;
    var sx2 = W * 0.94;
    var ox = W * 0.42;
    var bw = (W * 0.48) / 4;

    // SHELVES
    draw_set_color(shelf2);
    draw_rectangle(sx1, H*0.13, sx2, H*0.28, false);
    draw_rectangle(sx1, H*0.27, sx2, H*0.42, false);
    draw_rectangle(sx1, H*0.41, sx2, H*0.56, false);
    draw_rectangle(sx1, H*0.55, sx2, H*0.70, false);
    draw_rectangle(sx1, H*0.69, sx2, H*0.84, false);

    draw_set_color(label);
    draw_rectangle(sx1, H*0.10, sx1 + 150, H*0.14, false);
    draw_rectangle(sx1, H*0.24, sx1 + 150, H*0.28, false);
    draw_rectangle(sx1, H*0.38, sx1 + 150, H*0.42, false);
    draw_rectangle(sx1, H*0.52, sx1 + 150, H*0.56, false);
    draw_rectangle(sx1, H*0.66, sx1 + 150, H*0.70, false);

    draw_set_color(white);
    draw_text(sx1 + 20, H*0.105, "Tops");
    draw_text(sx1 + 20, H*0.245, "Bottoms");
    draw_text(sx1 + 20, H*0.385, "Head");
    draw_text(sx1 + 20, H*0.525, "Accessories");
    draw_text(sx1 + 20, H*0.665, "Shoes");

    // OPTIONS
    for (var i = 0; i < 4; i += 1)
    {
        var x1 = ox + i * bw + 8;
        var x2 = ox + (i + 1) * bw - 8;

        draw_set_color(purple);
        draw_rectangle(x1, H*0.18, x2, H*0.25, false);
        draw_rectangle(x1, H*0.32, x2, H*0.39, false);
        draw_rectangle(x1, H*0.46, x2, H*0.53, false);
        draw_rectangle(x1, H*0.60, x2, H*0.67, false);
        draw_rectangle(x1, H*0.74, x2, H*0.81, false);

        draw_set_color(white);
        draw_text(x1 + 10, H*0.20, tops[i]);
        draw_text(x1 + 10, H*0.34, bottoms[i]);
        draw_text(x1 + 10, H*0.48, hats[i]);
        draw_text(x1 + 10, H*0.62, accessories[i]);
        draw_text(x1 + 10, H*0.76, shoes_list[i]);
    }

    // selected outlines
    draw_set_color(hotpink);
    draw_rectangle(ox + top_choice*bw + 8, H*0.18, ox + (top_choice+1)*bw - 8, H*0.25, true);
    draw_rectangle(ox + bottom_choice*bw + 8, H*0.32, ox + (bottom_choice+1)*bw - 8, H*0.39, true);
    draw_rectangle(ox + hat_choice*bw + 8, H*0.46, ox + (hat_choice+1)*bw - 8, H*0.53, true);
    draw_rectangle(ox + accessory_choice*bw + 8, H*0.60, ox + (accessory_choice+1)*bw - 8, H*0.67, true);
    draw_rectangle(ox + shoes_choice*bw + 8, H*0.74, ox + (shoes_choice+1)*bw - 8, H*0.81, true);

    // bottom buttons
    draw_set_color(purple);
    draw_rectangle(W*0.42, H*0.90, W*0.58, H*0.97, false);
    draw_rectangle(W*0.62, H*0.90, W*0.82, H*0.97, false);

    draw_set_color(white);
    draw_text(W*0.47, H*0.925, "SCORE");
    draw_text(W*0.67, H*0.925, "NEW PROMPT");
}