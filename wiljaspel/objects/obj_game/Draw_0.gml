if (game_state == "menu")
{
    draw_text(250, 100, "DRESS UP GAME");

    if (mouse_check_button(mb_left)
    && mouse_x > 200 && mouse_x < 400
    && mouse_y > 180 && mouse_y < 230)
    {
        draw_rectangle(205, 185, 395, 225, true);
        draw_text(277, 197, "START");
    }
    else
    {
        draw_rectangle(200, 180, 400, 230, true);
        draw_text(275, 195, "START");
    }
}
else if (game_state == "game")
{
    draw_text(50, 50, "Prompt: " + theme);

    // TOP
    if (mouse_check_button(mb_left)
    && mouse_x > 50 && mouse_x < 300
    && mouse_y > 100 && mouse_y < 140)
    {
        draw_rectangle(55, 105, 295, 135, true);
        draw_text(62, 117, "Top: " + tops[top_choice]);
    }
    else
    {
        draw_rectangle(50, 100, 300, 140, true);
        draw_text(60, 115, "Top: " + tops[top_choice]);
    }

    // BOTTOM
    if (mouse_check_button(mb_left)
    && mouse_x > 50 && mouse_x < 300
    && mouse_y > 150 && mouse_y < 190)
    {
        draw_rectangle(55, 155, 295, 185, true);
        draw_text(62, 167, "Bottom: " + bottoms[bottom_choice]);
    }
    else
    {
        draw_rectangle(50, 150, 300, 190, true);
        draw_text(60, 165, "Bottom: " + bottoms[bottom_choice]);
    }

    // HAT
    if (mouse_check_button(mb_left)
    && mouse_x > 50 && mouse_x < 300
    && mouse_y > 200 && mouse_y < 240)
    {
        draw_rectangle(55, 205, 295, 235, true);
        draw_text(62, 217, "Hat: " + hats[hat_choice]);
    }
    else
    {
        draw_rectangle(50, 200, 300, 240, true);
        draw_text(60, 215, "Hat: " + hats[hat_choice]);
    }

    // ACCESSORY
    if (mouse_check_button(mb_left)
    && mouse_x > 50 && mouse_x < 300
    && mouse_y > 250 && mouse_y < 290)
    {
        draw_rectangle(55, 255, 295, 285, true);
        draw_text(62, 267, "Accessory: " + accessories[accessory_choice]);
    }
    else
    {
        draw_rectangle(50, 250, 300, 290, true);
        draw_text(60, 265, "Accessory: " + accessories[accessory_choice]);
    }

    // SHOES
    if (mouse_check_button(mb_left)
    && mouse_x > 50 && mouse_x < 300
    && mouse_y > 300 && mouse_y < 340)
    {
        draw_rectangle(55, 305, 295, 335, true);
        draw_text(62, 317, "Shoes: " + shoes_list[shoes_choice]);
    }
    else
    {
        draw_rectangle(50, 300, 300, 340, true);
        draw_text(60, 315, "Shoes: " + shoes_list[shoes_choice]);
    }

    // SCORE BUTTON
    if (mouse_check_button(mb_left)
    && mouse_x > 400 && mouse_x < 550
    && mouse_y > 150 && mouse_y < 200)
    {
        draw_rectangle(405, 155, 545, 195, true);
        draw_text(447, 167, "SCORE");
    }
    else
    {
        draw_rectangle(400, 150, 550, 200, true);
        draw_text(445, 165, "SCORE");
    }

    // NEW PROMPT BUTTON
    if (mouse_check_button(mb_left)
    && mouse_x > 400 && mouse_x < 550
    && mouse_y > 220 && mouse_y < 270)
    {
        draw_rectangle(405, 225, 545, 265, true);
        draw_text(422, 237, "NEW PROMPT");
    }
    else
    {
        draw_rectangle(400, 220, 550, 270, true);
        draw_text(420, 235, "NEW PROMPT");
    }

    draw_text(400, 320, "Score: " + string(points) + "/5");

    draw_text(50, 400, "Click clothing boxes to change outfit");
    draw_text(50, 430, "Click SCORE to submit outfit");
}