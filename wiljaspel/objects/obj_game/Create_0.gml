if (variable_global_exists("intro_done") && global.intro_done)
{
    game_state = "game";
    global.intro_done = false;
}
else
{
    game_state = "menu";
}

global.fullscreen = false;
global.music = true;
global.sound = true;

if (!variable_global_exists("skip_intro"))
{
    global.skip_intro = false;
}

item_themes = ["PARTY", "DINNER", "BEACH", "SCHOOL"];
theme = "";

tops = ["bikini", "sparkly", "t-shirt", "blouse"];
tops_theme = ["BEACH", "PARTY", "SCHOOL", "DINNER"];

bottoms = ["jeans", "sarong", "skirt", "long skirt"];
bottoms_theme = ["SCHOOL", "BEACH", "PARTY", "DINNER"];

hats = ["glasses", "diadem", "flower", "earrings"];
hats_theme = ["SCHOOL", "PARTY", "BEACH", "DINNER"];

accessories = ["clutch", "book", "solo cup", "beach bag"];
accessories_theme = ["DINNER", "SCHOOL", "PARTY", "BEACH"];

shoes_list = ["sneakers", "heels", "flipflops", "mary jane"];
shoes_theme = ["SCHOOL", "PARTY", "BEACH", "DINNER"];

top_button_sprites = [spr_bikinitopbutton, spr_sparklytop, spr_tshirtbutton, spr_blousebutton];
bottom_button_sprites = [spr_jeans, spr_sarongbutton, spr_skirt, spr_longskirt];
hat_button_sprites = [spr_glasses, spr_diadem, spr_flower, spr_earrings];
accessory_button_sprites = [spr_clutch, spr_book, spr_solocup, spr_beachbag];
shoe_button_sprites = [spr_sneakers, spr_heels, spr_flipflops, spr_maryjane];

top_model_sprites = [spr_bikinitop, spr_sparklytop, spr_tshirt, spr_blouse];
bottom_model_sprites = [spr_jeans, spr_sarong, spr_skirt, spr_longskirt];
hat_model_sprites = [spr_glasses, spr_diadem, spr_flower, spr_earrings];
accessory_model_sprites = [spr_clutch, spr_book, spr_solocup, spr_beachbag];
shoe_model_sprites = [spr_sneakers, spr_heels, spr_flipflops, spr_maryjane];

top_choice = -1;
bottom_choice = -1;
hat_choice = -1;
accessory_choice = -1;
shoes_choice = -1;

points = 0;

// prevents music doubling
if (global.music)
{
    if (!audio_is_playing(msc_music1))
    {
        audio_play_sound(msc_music1, 1, true);
    }
}