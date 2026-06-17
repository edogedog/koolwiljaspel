game_state = "menu";

global.fullscreen = false;
global.music = true;
global.sound = true;

item_themes = ["PARTY", "DINNER", "BEACH", "SCHOOL"];
theme = item_themes[irandom(3)];

// mixed-up clothing order
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

top_choice = 0;
bottom_choice = 0;
hat_choice = 0;
accessory_choice = 0;
shoes_choice = 0;

points = 0;

if (global.music)
{
    audio_play_sound(msc_music1, 1, true);
}