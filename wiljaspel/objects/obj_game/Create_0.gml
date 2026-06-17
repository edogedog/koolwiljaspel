/// @description Insert description here
// You can write your code in this editor
game_state = "menu";
// Prompts
theme = "PARTY";

// Clothes lists
tops = ["sparkly top", "blouse", "bikini top", "t-shirt"];
bottoms = ["skirt", "long skirt", "sarrong", "jeans"];
hats = ["diadem", "earrings", "flower", "glasses"];
accessories = ["red solo cup", "clutch", "little beach bag", "book"];
shoes_list = ["heels", "mary jane", "flipflops", "sneakers"];

// Themes for each clothing item
item_themes = ["PARTY", "DINNER", "BEACH", "SCHOOL"];

// Which clothing is selected
top_choice = 0;
bottom_choice = 0;
hat_choice = 0;
accessory_choice = 0;
shoes_choice = 0;

points = 0;

audio_play_sound(msc_music1,1,false)