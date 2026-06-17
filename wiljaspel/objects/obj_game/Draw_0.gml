if (game_state == "menu")
{
    draw_text(250, 100, "DRESS UP GAME");

    draw_rectangle(200, 180, 400, 230, true);
    draw_text(275, 195, "START");
}
else if (game_state == "game")
{
    draw_text(50, 50, "Prompt: " + theme);

    // TOP
    draw_rectangle(50, 100, 300, 140, true);
    draw_text(60, 115, "Top: " + tops[top_choice]);

    // BOTTOM
    draw_rectangle(50, 150, 300, 190, true);
    draw_text(60, 165, "Bottom: " + bottoms[bottom_choice]);

    // HAT
    draw_rectangle(50, 200, 300, 240, true);
    draw_text(60, 215, "Hat: " + hats[hat_choice]);

    // ACCESSORY
    draw_rectangle(50, 250, 300, 290, true);
    draw_text(60, 265, "Accessory: " + accessories[accessory_choice]);

    // SHOES
    draw_rectangle(50, 300, 300, 340, true);
    draw_text(60, 315, "Shoes: " + shoes_list[shoes_choice]);

    // SCORE BUTTON
    draw_rectangle(400, 150, 550, 200, true);
    draw_text(445, 165, "SCORE");

    // NEW PROMPT BUTTON
    draw_rectangle(400, 220, 550, 270, true);
    draw_text(420, 235, "NEW PROMPT");

    // SCORE DISPLAY
    draw_text(400, 320, "Score: " + string(points) + "/5");

    // HELP TEXT
    draw_text(50, 400, "Click clothing boxes to change outfit");
    draw_text(50, 430, "Click SCORE to submit outfit");
}