game_state = "menu";

global.fullscreen = false;
global.music = true;
global.sound = true;

item_themes = ["PARTY", "DINNER", "BEACH", "SCHOOL"];

// no prompt at start
theme = "";

// mixed-up clothing order
tops = ["bikini", "sparkly", "t-shirt", "blouse"];
tops_theme = ["BEACH", "PARTY", "SCHOOL", "DINNER"];
top_sprites = [spr_bikinitop, spr_sparklytop, spr_tshirt, spr_blouse];

bottoms = ["jeans", "sarong", "skirt", "long skirt"];
bottoms_theme = ["SCHOOL", "BEACH", "PARTY", "DINNER"];
bottom_sprites = [spr_jeans, spr_sarong, spr_skirt, spr_longskirt];

hats = ["glasses", "diadem", "flower", "earrings"];
hats_theme = ["SCHOOL", "PARTY", "BEACH", "DINNER"];
hat_sprites = [spr_glasses, spr_diadem, spr_flower, spr_earrings];

accessories = ["clutch", "book", "solo cup", "beach bag"];
accessories_theme = ["DINNER", "SCHOOL", "PARTY", "BEACH"];
accessory_sprites = [spr_clutch, spr_book, spr_solocup, spr_beachbag];

shoes_list = ["sneakers", "heels", "flipflops", "mary jane"];
shoes_theme = ["SCHOOL", "PARTY", "BEACH", "DINNER"];
shoe_sprites = [spr_sneakers, spr_heels, spr_flipflops, spr_maryjane];

// -1 means nothing is selected
top_choice = -1;
bottom_choice = -1;
hat_choice = -1;
accessory_choice = -1;
shoes_choice = -1;

points = 0;

if (global.music)
{
    audio_play_sound(msc_music1, 1, true);
}