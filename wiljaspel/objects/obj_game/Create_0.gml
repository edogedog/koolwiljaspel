game_state = "menu";

tops = ["sparkly top", "blouse", "bikini top", "t-shirt"];
bottoms = ["skirt", "long skirt", "sarrong", "jeans"];
hats = ["diadem", "earrings", "flower", "glasses"];
accessories = ["red solo cup", "clutch", "little beach bag", "book"];
shoes_list = ["heels", "mary jane", "flipflops", "sneakers"];

item_themes = ["PARTY", "DINNER", "BEACH", "SCHOOL"];

theme = item_themes[irandom(3)];

top_choice = 0;
bottom_choice = 0;
hat_choice = 0;
accessory_choice = 0;
shoes_choice = 0;

points = 0;

audio_play_sound(msc_music1, 1, false);