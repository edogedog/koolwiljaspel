if (bad_end_mode)
{
    bad_end_timer += 1;

    if (bad_end_timer >= room_speed * 5)
    {
        game_end();
    }

    exit;
}

// skip button
if (mouse_check_button_pressed(mb_left))
{
    if (mouse_x > room_width - 120 && mouse_x < room_width - 20
    && mouse_y > 20 && mouse_y < 60)
    {
        global.intro_done = true;
        room_goto(Room1);
    }
}

function teddy_go_to_line(_next_line)
{
    if (variable_struct_exists(lines[_next_line], "bad_end"))
    {
        line = _next_line;
        choice_mode = false;
        bad_end_mode = true;
        bad_end_timer = 0;

        text_pos = 0;
        last_char_played = 0;
        finished_line = true;

        audio_stop_all();

        exit;
    }

    line = _next_line;
    choice_mode = false;
    text_pos = 0;
    last_char_played = 0;
    finished_line = false;
}

if (!choice_mode)
{
    if (!finished_line)
    {
        text_pos += text_speed;

        var current_char = floor(text_pos);

        if (current_char > last_char_played)
        {
            if (global.sound)
            {
                if (current_char mod talk_sound_delay == 0
                && current_char < string_length(lines[line].text) - 1)
                {
                    var snd = talk_sounds[irandom(array_length(talk_sounds) - 1)];
                    var idd = audio_play_sound(snd, 1, false);
                    audio_sound_gain(idd, 0.35, 0);
                }
            }

            last_char_played = current_char;
        }

        if (text_pos >= string_length(lines[line].text))
        {
            text_pos = string_length(lines[line].text);
            finished_line = true;
        }
    }

    if (keyboard_check_pressed(vk_enter))
    {
        if (!finished_line)
        {
            text_pos = string_length(lines[line].text);
            finished_line = true;
        }
        else
        {
            if (variable_struct_exists(lines[line], "choices"))
            {
                choice_mode = true;
                choice_selected = 0;
            }
            else
            {
                var next_line = lines[line].next;

                if (next_line == -1)
                {
                    global.intro_done = true;
                    room_goto(Room1);
                }
                else
                {
                    teddy_go_to_line(next_line);
                }
            }
        }
    }
}
else
{
    var W = room_width;
    var H = room_height;

    var btn_w = 230;
    var btn_h = 44;
    var btn_y1 = H - 95;
    var btn_y2 = btn_y1 + btn_h;

    var left_x1 = W * 0.30 - btn_w / 2;
    var left_x2 = W * 0.30 + btn_w / 2;

    var right_x1 = W * 0.70 - btn_w / 2;
    var right_x2 = W * 0.70 + btn_w / 2;

    if (keyboard_check_pressed(vk_left) || keyboard_check_pressed(ord("A")))
        choice_selected = 0;

    if (keyboard_check_pressed(vk_right) || keyboard_check_pressed(ord("D")))
        choice_selected = 1;

    if (mouse_x > left_x1 && mouse_x < left_x2 && mouse_y > btn_y1 && mouse_y < btn_y2)
    {
        choice_selected = 0;

        if (mouse_check_button_pressed(mb_left))
        {
            if (global.sound) alexa_playsfx(snd_bling1);
            teddy_go_to_line(lines[line].next[0]);
        }
    }

    if (mouse_x > right_x1 && mouse_x < right_x2 && mouse_y > btn_y1 && mouse_y < btn_y2)
    {
        choice_selected = 1;

        if (mouse_check_button_pressed(mb_left))
        {
            if (global.sound) alexa_playsfx(snd_bling1);
            teddy_go_to_line(lines[line].next[1]);
        }
    }

    if (keyboard_check_pressed(vk_enter))
    {
        if (global.sound) alexa_playsfx(snd_bling1);
        teddy_go_to_line(lines[line].next[choice_selected]);
    }
}