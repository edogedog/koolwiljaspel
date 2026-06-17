if (game_state == "menu")
{
    if (keyboard_check_pressed(vk_enter))
    {
        game_state = "game";
    }
}
else if (game_state == "game")
{
    if (keyboard_check_pressed(ord("1"))) 
	{
		top_choice += 1;
		alexa_playsfx(snd_bling3)
	}
    if (keyboard_check_pressed(ord("2"))) 
	{
		bottom_choice += 1;
		alexa_playsfx(snd_bling3)
	}
    if (keyboard_check_pressed(ord("3"))) 
	{
		hat_choice += 1;
		alexa_playsfx(snd_bling3)
	}
    if (keyboard_check_pressed(ord("4"))) 
	{
		accessory_choice += 1;
		alexa_playsfx(snd_bling3)
	}
    if (keyboard_check_pressed(ord("5"))) 
	{
		shoes_choice += 1;
		alexa_playsfx(snd_bling3)
	}

    if (top_choice > 3) top_choice = 0;
    if (bottom_choice > 3) bottom_choice = 0;
    if (hat_choice > 3) hat_choice = 0;
    if (accessory_choice > 3) accessory_choice = 0;
    if (shoes_choice > 3) shoes_choice = 0;

    if (keyboard_check_pressed(vk_enter))
    {
        points = 0;
		alexa_playsfx(snd_bling1)
        if (item_themes[top_choice] == theme) points += 1;
        if (item_themes[bottom_choice] == theme) points += 1;
        if (item_themes[hat_choice] == theme) points += 1;
        if (item_themes[accessory_choice] == theme) points += 1;
        if (item_themes[shoes_choice] == theme) points += 1;
    }
}

if (keyboard_check_pressed(ord("T")))
{
    theme = item_themes[irandom(3)];
    points = 0;
		alexa_playsfx(snd_bling2)
}