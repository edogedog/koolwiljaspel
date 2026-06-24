lines = [
    { text: "* Hey there!", sprite: spr_teddy, next: 1 },
    { text: "* I'm Teddy.", sprite: spr_teddy2, next: 2 },

    {
        text: "* What kind of artist are you?",
        sprite: spr_teddy,
        choices: ["Cute artist", "Cool artist"],
        next: [3, 5]
    },

    { text: "* A cute artist! I like that.", sprite: spr_teddy2, next: 4 },
    { text: "* Soft colors always tell a story.", sprite: spr_teddy, next: 7 },

    { text: "* A cool artist! Nice choice.", sprite: spr_teddy2, next: 6 },
    { text: "* Bold outfits make people remember you.", sprite: spr_teddy, next: 7 },

    {
        text: "* Will you help me with the fashion challenge?",
        sprite: spr_teddy,
        choices: ["Yes", "No"],
        next: [8, 11]
    },

    { text: "* Really? Thank you!", sprite: spr_teddy2, next: 9 },
    { text: "* Then let's make the best outfit ever.", sprite: spr_teddy, next: 10 },
    { text: "* Press the prompt button to get a theme then choose your fit, good luck!", sprite: spr_teddy2, next: -1 },

    { text: "", sprite: spr_teddy3, bad_end: true }
];

line = 0;

text_pos = 0;
text_speed = 0.6;
finished_line = false;

choice_mode = false;
choice_selected = 0;

talk_sounds = [snd_teddy_talk, snd_teddy_talk2, snd_teddy_talk3];
last_char_played = 0;
talk_sound_delay = 3;

bad_end_mode = false;
bad_end_timer = 0;