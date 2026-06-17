if (game_state == "menu")
{
    draw_text(100, 100, "DRESS UP GAME");
    draw_text(100, 160, "Press ENTER to start");
}
else if (game_state == "game")
{
    draw_text(100, 100, "Prompt: " + theme);

    draw_text(100, 150, "1 Top: " + tops[top_choice]);
    draw_text(100, 180, "2 Bottom: " + bottoms[bottom_choice]);
    draw_text(100, 210, "3 Hat: " + hats[hat_choice]);
    draw_text(100, 240, "4 Accessory: " + accessories[accessory_choice]);
    draw_text(100, 270, "5 Shoes: " + shoes_list[shoes_choice]);

    draw_text(100, 330, "Press 1-5 to change clothes");
    draw_text(100, 360, "Press ENTER to score");
    draw_text(100, 390, "Score: " + string(points) + "/5");
}