var W = room_width;
var H = room_height;

var bg = make_color_rgb(255, 184, 88);
var pink = make_color_rgb(245, 150, 185);
var hotpink = make_color_rgb(230, 90, 160);
var purple = make_color_rgb(145, 95, 245);
var dark = make_color_rgb(90, 35, 85);
var shelf2 = make_color_rgb(95, 45, 30);
var label = make_color_rgb(240, 145, 125);
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

    if (theme == "")
        draw_text(W * 0.05, H * 0.13, "Click NEW PROMPT");
    else
        draw_text(W * 0.05, H * 0.13, "Prompt: " + theme);

    // MODEL + CLOTHES
    var cx = W * 0.15;
    var cy = H * 0.36 + 50;

    draw_sprite(spr_model, 0, cx, cy);

    if (bottom_choice != -1)
        draw_sprite(bottom_sprites[bottom_choice], 0, cx, cy);

    if (top_choice != -1)
        draw_sprite(top_sprites[top_choice], 0, cx, cy);

    if (shoes_choice != -1)
        draw_sprite(shoe_sprites[shoes_choice], 0, cx, cy);

    if (hat_choice != -1)
        draw_sprite(hat_sprites[hat_choice], 0, cx, cy);

    if (accessory_choice != -1)
        draw_sprite(accessory_sprites[accessory_choice], 0, cx, cy);

    draw_set_color(white);
    draw_text(W * 0.05, H * 0.72, "SCORE");
    draw_text(W * 0.05, H * 0.76, string(points) + " / 5");

    draw_text(W * 0.05, H * 0.82, "OUTFIT");

    if (top_choice == -1)
        draw_text(W * 0.05, H * 0.86, "no top");
    else
        draw_text(W * 0.05, H * 0.86, tops[top_choice]);

    if (bottom_choice == -1)
        draw_text(W * 0.05, H * 0.89, "no bottom");
    else
        draw_text(W * 0.05, H * 0.89, bottoms[bottom_choice]);

    if (hat_choice == -1)
        draw_text(W * 0.05, H * 0.92, "no headpiece");
    else
        draw_text(W * 0.05, H * 0.92, hats[hat_choice]);

    if (accessory_choice == -1)
        draw_text(W * 0.05, H * 0.95, "no accessory");
    else
        draw_text(W * 0.05, H * 0.95, accessories[accessory_choice]);

    if (shoes_choice == -1)
        draw_text(W * 0.05, H * 0.98, "no shoes");
    else
        draw_text(W * 0.05, H * 0.98, shoes_list[shoes_choice]);

    draw_set_color(bg);
    draw_rectangle(W * 0.30, 0, W, H, false);

    var sx1 = W * 0.34;
    var sx2 = W * 0.94;
    var ox = W * 0.42;
    var bw = (W * 0.48) / 4;

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

    // CLOTHING SPRITES ON SHELVES
    for (var i = 0; i < 4; i += 1)
    {
        var x1 = ox + i * bw + 8;
        var x2 = ox + (i + 1) * bw - 8;
        var midx = (x1 + x2) / 2;

        draw_set_color(purple);
        draw_rectangle(x1, H*0.18, x2, H*0.25, false);
        draw_rectangle(x1, H*0.32, x2, H*0.39, false);
        draw_rectangle(x1, H*0.46, x2, H*0.53, false);
        draw_rectangle(x1, H*0.60, x2, H*0.67, false);
        draw_rectangle(x1, H*0.74, x2, H*0.81, false);

        draw_sprite_ext(top_sprites[i], 0, midx, H*0.215, 0.35, 0.35, 0, c_white, 1);
        draw_sprite_ext(bottom_sprites[i], 0, midx, H*0.355, 0.35, 0.35, 0, c_white, 1);
        draw_sprite_ext(hat_sprites[i], 0, midx, H*0.495, 0.35, 0.35, 0, c_white, 1);
        draw_sprite_ext(accessory_sprites[i], 0, midx, H*0.635, 0.35, 0.35, 0, c_white, 1);
        draw_sprite_ext(shoe_sprites[i], 0, midx, H*0.775, 0.35, 0.35, 0, c_white, 1);
    }

    draw_set_color(hotpink);

    if (top_choice != -1)
        draw_rectangle(ox + top_choice*bw + 8, H*0.18, ox + (top_choice+1)*bw - 8, H*0.25, true);

    if (bottom_choice != -1)
        draw_rectangle(ox + bottom_choice*bw + 8, H*0.32, ox + (bottom_choice+1)*bw - 8, H*0.39, true);

    if (hat_choice != -1)
        draw_rectangle(ox + hat_choice*bw + 8, H*0.46, ox + (hat_choice+1)*bw - 8, H*0.53, true);

    if (accessory_choice != -1)
        draw_rectangle(ox + accessory_choice*bw + 8, H*0.60, ox + (accessory_choice+1)*bw - 8, H*0.67, true);

    if (shoes_choice != -1)
        draw_rectangle(ox + shoes_choice*bw + 8, H*0.74, ox + (shoes_choice+1)*bw - 8, H*0.81, true);

    draw_set_color(purple);
    draw_rectangle(W*0.42, H*0.90, W*0.58, H*0.97, false);
    draw_rectangle(W*0.62, H*0.90, W*0.82, H*0.97, false);

    draw_set_color(white);
    draw_text(W*0.47, H*0.925, "SCORE");
    draw_text(W*0.67, H*0.925, "NEW PROMPT");
}