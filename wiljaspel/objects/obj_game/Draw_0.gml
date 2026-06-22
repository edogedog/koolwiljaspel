var W = room_width;
var H = room_height;

var bg = make_color_rgb(255, 184, 88);
var pink = make_color_rgb(245, 150, 185);
var purple = make_color_rgb(145, 95, 245);
var dark = make_color_rgb(90, 35, 85);
var shelf = make_color_rgb(100, 45, 30);
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
    draw_rectangle(W/2 - 150, H/2 + 220, W/2 - 120, H/2 + 250, false);

    draw_set_color(black);
    draw_text(W/2 - 105, H/2 + 108, "Fullscreen");
    draw_text(W/2 - 105, H/2 + 148, "Music");
    draw_text(W/2 - 105, H/2 + 188, "Sound");
    draw_text(W/2 - 105, H/2 + 228, "Skip Intro");

    if (global.fullscreen) draw_text(W/2 - 143, H/2 + 105, "X");
    if (global.music) draw_text(W/2 - 143, H/2 + 145, "X");
    if (global.sound) draw_text(W/2 - 143, H/2 + 185, "X");
    if (global.skip_intro) draw_text(W/2 - 143, H/2 + 225, "X");
}
else if (game_state == "game")
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

    var cx = W * 0.15;
    var cy = H * 0.36 + 70;

    draw_sprite(spr_model, 0, cx, cy);

    if (bottom_choice != -1)
        draw_sprite(bottom_model_sprites[bottom_choice], 0, cx, cy);

    if (top_choice != -1)
        draw_sprite(top_model_sprites[top_choice], 0, cx, cy);

    if (shoes_choice != -1)
        draw_sprite(shoe_model_sprites[shoes_choice], 0, cx, cy);

    if (hat_choice != -1)
        draw_sprite(hat_model_sprites[hat_choice], 0, cx, cy);

    if (accessory_choice != -1)
        draw_sprite(accessory_model_sprites[accessory_choice], 0, cx, cy);

    draw_set_color(white);
    draw_text(W * 0.05, H * 0.74, "SCORE");
    draw_text(W * 0.05, H * 0.78, string(points) + " / 5");

    draw_set_color(bg);
    draw_rectangle(W * 0.30, 0, W, H, false);

    var sx1 = W * 0.34;
    var sx2 = W * 0.94;
    var ox = W * 0.42;
    var bw = (W * 0.48) / 4;

    draw_set_color(shelf);
    draw_rectangle(sx1, H*0.11, sx2, H*0.25, false);
    draw_rectangle(sx1, H*0.26, sx2, H*0.40, false);
    draw_rectangle(sx1, H*0.41, sx2, H*0.55, false);
    draw_rectangle(sx1, H*0.56, sx2, H*0.70, false);
    draw_rectangle(sx1, H*0.71, sx2, H*0.85, false);

    draw_set_color(label);
    draw_rectangle(sx1, H*0.08, sx1 + 150, H*0.12, false);
    draw_rectangle(sx1, H*0.23, sx1 + 150, H*0.27, false);
    draw_rectangle(sx1, H*0.38, sx1 + 150, H*0.42, false);
    draw_rectangle(sx1, H*0.53, sx1 + 150, H*0.57, false);
    draw_rectangle(sx1, H*0.68, sx1 + 150, H*0.72, false);

    draw_set_color(white);
    draw_text(sx1 + 25, H*0.087, "Tops");
    draw_text(sx1 + 25, H*0.237, "Bottoms");
    draw_text(sx1 + 25, H*0.387, "Head");
    draw_text(sx1 + 25, H*0.537, "Accessories");
    draw_text(sx1 + 25, H*0.687, "Shoes");

    var top_x_offset = [0, 0, 0, 0];
    var top_y_offset = [20, 0, 0, 0];

    var bottom_x_offset = [0, 0, 0, 0];
    var bottom_y_offset = [-75, -35, -45, -65];

    var hat_x_offset = [0, 0, 0, 0];
    var hat_y_offset = [90, 130, 110, 80];

    var accessory_x_offset = [-80, -70, -70, -80];
    var accessory_y_offset = [-45, -35, -35, -60];

    var shoe_x_offset = [0, 0, 0, 0];
    var shoe_y_offset = [-150, -145, -150, -145];

    var top_scale = 0.75;
    var bottom_scale = 0.75;
    var hat_scale = 0.75;
    var accessory_scale = 0.75;
    var shoe_scale = 0.75;

    for (var i = 0; i < 4; i += 1)
    {
        var x1 = ox + i * bw + 8;
        var x2 = ox + (i + 1) * bw - 8;
        var midx = (x1 + x2) / 2;

        draw_set_color(purple);
        draw_rectangle(x1, H*0.15, x2, H*0.22, false);
        draw_rectangle(x1, H*0.30, x2, H*0.37, false);
        draw_rectangle(x1, H*0.45, x2, H*0.52, false);
        draw_rectangle(x1, H*0.60, x2, H*0.67, false);
        draw_rectangle(x1, H*0.75, x2, H*0.82, false);

        var top_s = top_scale;
        var bottom_s = bottom_scale;
        var hat_s = hat_scale;
        var accessory_s = accessory_scale;
        var shoe_s = shoe_scale;

        if (mouse_check_button(mb_left))
        {
            if (mouse_x > x1 && mouse_x < x2 && mouse_y > H*0.15 && mouse_y < H*0.22)
                top_s = top_scale * 0.9;

            if (mouse_x > x1 && mouse_x < x2 && mouse_y > H*0.30 && mouse_y < H*0.37)
                bottom_s = bottom_scale * 0.9;

            if (mouse_x > x1 && mouse_x < x2 && mouse_y > H*0.45 && mouse_y < H*0.52)
                hat_s = hat_scale * 0.9;

            if (mouse_x > x1 && mouse_x < x2 && mouse_y > H*0.60 && mouse_y < H*0.67)
                accessory_s = accessory_scale * 0.9;

            if (mouse_x > x1 && mouse_x < x2 && mouse_y > H*0.75 && mouse_y < H*0.82)
                shoe_s = shoe_scale * 0.9;
        }

        draw_sprite_ext(top_button_sprites[i], 0, midx + top_x_offset[i], H*0.185 + top_y_offset[i], top_s, top_s, 0, c_white, 1);
        draw_sprite_ext(bottom_button_sprites[i], 0, midx + bottom_x_offset[i], H*0.335 + bottom_y_offset[i], bottom_s, bottom_s, 0, c_white, 1);
        draw_sprite_ext(hat_button_sprites[i], 0, midx + hat_x_offset[i], H*0.485 + hat_y_offset[i], hat_s, hat_s, 0, c_white, 1);
        draw_sprite_ext(accessory_button_sprites[i], 0, midx + accessory_x_offset[i], H*0.635 + accessory_y_offset[i], accessory_s, accessory_s, 0, c_white, 1);
        draw_sprite_ext(shoe_button_sprites[i], 0, midx + shoe_x_offset[i], H*0.785 + shoe_y_offset[i], shoe_s, shoe_s, 0, c_white, 1);
    }

    draw_set_color(purple);
    draw_rectangle(W*0.42, H*0.90, W*0.58, H*0.97, false);
    draw_rectangle(W*0.62, H*0.90, W*0.82, H*0.97, false);

    draw_set_color(white);
    draw_text(W*0.47, H*0.925, "SCORE");
    draw_text(W*0.67, H*0.925, "NEW PROMPT");
}