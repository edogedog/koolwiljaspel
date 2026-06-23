if (!finished_line)
{
    text_pos += text_speed;

    var current_char = floor(text_pos);

    if (current_char > last_char_played)
    {
        if (global.sound)
        {
            if (current_char mod talk_sound_delay == 0
            && current_char < string_length(dialogue[dialogue_index]) - 1)
            {
                var snd = talk_sounds[irandom(array_length(talk_sounds) - 1)];
                var idd = audio_play_sound(snd, 1, false);
                audio_sound_gain(idd, 0.35, 0);
            }
        }

        last_char_played = current_char;
    }

    if (text_pos >= string_length(dialogue[dialogue_index]))
    {
        text_pos = string_length(dialogue[dialogue_index]);
        finished_line = true;
    }
}

if (keyboard_check_pressed(vk_enter))
{
    if (!finished_line)
    {
        text_pos = string_length(dialogue[dialogue_index]);
        finished_line = true;
    }
    else
    {
        dialogue_index += 1;

        if (dialogue_index >= array_length(dialogue))
        {
            global.intro_done = true;
            room_goto(Room1);
        }
        else
        {
            text_pos = 0;
            last_char_played = 0;
            finished_line = false;
        }
    }
}