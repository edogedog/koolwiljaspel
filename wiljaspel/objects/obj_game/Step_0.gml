var mx = mouse_x;
var my = mouse_y;

var W = room_width;
var H = room_height;

if (mouse_check_button_pressed(mb_left))
{
    if (game_state == "menu")
    {
        if (mx > W/2 - 160 && mx < W/2 + 160 && my > H/2 - 40 && my < H/2 + 50)
        {
            game_state = "game";
            if (global.sound) alexa_playsfx(snd_bling1);
        }

        if (mx > W/2 - 150 && mx < W/2 - 120 && my > H/2 + 100 && my < H/2 + 130)
        {
            global.fullscreen = !global.fullscreen;
            window_set_fullscreen(global.fullscreen);
        }

        if (mx > W/2 - 150 && mx < W/2 - 120 && my > H/2 + 140 && my < H/2 + 170)
        {
            global.music = !global.music;

            if (global.music)
            {
                audio_play_sound(msc_music1, 1, true);
            }
            else
            {
                audio_stop_sound(msc_music1);
            }
        }

        if (mx > W/2 - 150 && mx < W/2 - 120 && my > H/2 + 180 && my < H/2 + 210)
        {
            global.sound = !global.sound;
        }
    }

    else if (game_state == "game")
    {
        if (mx > W * 0.42 && mx < W * 0.90)
        {
            if (my > H * 0.18 && my < H * 0.27)
            {
                top_choice = floor((mx - W * 0.42) / ((W * 0.48) / 4));
                if (global.sound) alexa_playsfx(snd_bling3);
            }

            if (my > H * 0.32 && my < H * 0.41)
            {
                bottom_choice = floor((mx - W * 0.42) / ((W * 0.48) / 4));
                if (global.sound) alexa_playsfx(snd_bling3);
            }

            if (my > H * 0.46 && my < H * 0.55)
            {
                hat_choice = floor((mx - W * 0.42) / ((W * 0.48) / 4));
                if (global.sound) alexa_playsfx(snd_bling3);
            }

            if (my > H * 0.60 && my < H * 0.69)
            {
                accessory_choice = floor((mx - W * 0.42) / ((W * 0.48) / 4));
                if (global.sound) alexa_playsfx(snd_bling3);
            }

            if (my > H * 0.74 && my < H * 0.83)
            {
                shoes_choice = floor((mx - W * 0.42) / ((W * 0.48) / 4));
                if (global.sound) alexa_playsfx(snd_bling3);
            }
        }

        top_choice = clamp(top_choice, -1, 3);
        bottom_choice = clamp(bottom_choice, -1, 3);
        hat_choice = clamp(hat_choice, -1, 3);
        accessory_choice = clamp(accessory_choice, -1, 3);
        shoes_choice = clamp(shoes_choice, -1, 3);

        // SCORE only works if a prompt exists
        if (mx > W * 0.42 && mx < W * 0.58 && my > H * 0.90 && my < H * 0.97)
        {
            points = 0;

            if (theme != "")
            {
                if (top_choice != -1 && tops_theme[top_choice] == theme) points += 1;
                if (bottom_choice != -1 && bottoms_theme[bottom_choice] == theme) points += 1;
                if (hat_choice != -1 && hats_theme[hat_choice] == theme) points += 1;
                if (accessory_choice != -1 && accessories_theme[accessory_choice] == theme) points += 1;
                if (shoes_choice != -1 && shoes_theme[shoes_choice] == theme) points += 1;
            }

            if (global.sound) alexa_playsfx(snd_bling1);
        }

        // NEW PROMPT also resets outfit to naked
        if (mx > W * 0.62 && mx < W * 0.82 && my > H * 0.90 && my < H * 0.97)
        {
            theme = item_themes[irandom(3)];

            top_choice = -1;
            bottom_choice = -1;
            hat_choice = -1;
            accessory_choice = -1;
            shoes_choice = -1;

            points = 0;

            if (global.sound) alexa_playsfx(snd_bling2);
        }

        if (mx > 20 && mx < 120 && my > 20 && my < 60)
        {
            game_state = "menu";
        }
    }
}