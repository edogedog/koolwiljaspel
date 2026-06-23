dialogue = [
    "* Hey there!",
    "* I'm Teddy.",
    "* Welcome to my fashion challenge.",
    "* I will give you a theme.",
    "* Pick the outfit that matches best.",
    "* Click NEW PROMPT to get a theme.",
    "* Then press SCORE to see how well you did.",
    "* Good luck!"
];

dialogue_index = 0;
text_pos = 0;
text_speed = 0.6;
finished_line = false;

talk_sounds = [snd_teddy_talk, snd_teddy_talk2, snd_teddy_talk3];

last_char_played = 0;
talk_sound_delay = 3;