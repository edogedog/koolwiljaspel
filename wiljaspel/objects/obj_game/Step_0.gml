var mx = mouse_x;
var my = mouse_y;

if (mouse_check_button_pressed(mb_left))
{
    if (game_state == "menu")
    {
        // START button
        if (mx > 200 && mx < 400 && my > 180 && my < 230)
        {
            game_state = "game";
        }
    }

    else if (game_state == "game")
    {
        // TOP
        if (mx > 50 && mx < 300 && my > 100 && my < 140)
        {
            top_choice += 1;
            alexa_playsfx(snd_bling3);
        }

        // BOTTOM
        if (mx > 50 && mx < 300 && my > 150 && my < 190)
        {
            bottom_choice += 1;
            alexa_playsfx(snd_bling3);
        }

        // HAT
        if (mx > 50 && mx < 300 && my > 200 && my < 240)
        {
            hat_choice += 1;
            alexa_playsfx(snd_bling3);
        }

        // ACCESSORY
        if (mx > 50 && mx < 300 && my > 250 && my < 290)
        {
            accessory_choice += 1;
            alexa_playsfx(snd_bling3);
        }

        // SHOES
        if (mx > 50 && mx < 300 && my > 300 && my < 340)
        {
            shoes_choice += 1;
            alexa_playsfx(snd_bling3);
        }

        // SCORE
        if (mx > 400 && mx < 550 && my > 150 && my < 200)
        {
            points = 0;

            if (item_themes[top_choice] == theme) points += 1;
            if (item_themes[bottom_choice] == theme) points += 1;
            if (item_themes[hat_choice] == theme) points += 1;
            if (item_themes[accessory_choice] == theme) points += 1;
            if (item_themes[shoes_choice] == theme) points += 1;

            alexa_playsfx(snd_bling1);
        }

        // NEW PROMPT
        if (mx > 400 && mx < 550 && my > 220 && my < 270)
        {
            theme = item_themes[irandom(3)];
            points = 0;
            alexa_playsfx(snd_bling2);
        }
    }
}

if (top_choice > 3) top_choice = 0;
if (bottom_choice > 3) bottom_choice = 0;
if (hat_choice > 3) hat_choice = 0;
if (accessory_choice > 3) accessory_choice = 0;
if (shoes_choice > 3) shoes_choice = 0;