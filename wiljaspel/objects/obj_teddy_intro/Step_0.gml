if (!finished_line)
{
    text_pos += text_speed;

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
            finished_line = false;
        }
    }
}