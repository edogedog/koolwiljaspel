/// @description Insert description here
// You can write your code in this editor
if (keyboard_check_pressed(ord("1")))
{
    if (top == "T-Shirt")
    {
        top = "Sparkly Top";
        top_theme = "Party";
    }
    else
    {
        top = "T-Shirt";
        top_theme = "School";
    }
}

if (keyboard_check_pressed(ord("2")))
{
    if (bottom == "Jeans")
    {
        bottom = "Fancy Skirt";
        bottom_theme = "Dinner";
    }
    else
    {
        bottom = "Jeans";
        bottom_theme = "School";
    }
}

if (keyboard_check_pressed(ord("3")))
{
    if (head == "Hat")
    {
        head = "Tiara";
        head_theme = "Party";
    }
    else
    {
        head = "Hat";
        head_theme = "Beach";
    }
}

if (keyboard_check_pressed(ord("4")))
{
    if (accessory == "Necklace")
    {
        accessory = "Glow Bracelet";
        accessory_theme = "Party";
    }
    else
    {
        accessory = "Necklace";
        accessory_theme = "Dinner";
    }
}

if (keyboard_check_pressed(ord("5")))
{
    if (shoes == "Sneakers")
    {
        shoes = "Heels";
        shoes_theme = "Dinner";
    }
    else
    {
        shoes = "Sneakers";
        shoes_theme = "School";
    }
}


// här e pointsen
if (keyboard_check_pressed(vk_enter))
{
    points = 0;

    if (top_theme == theme) points += 1;
    if (bottom_theme == theme) points += 1;
    if (head_theme == theme) points += 1;
    if (accessory_theme == theme) points += 1;
    if (shoes_theme == theme) points += 1;
}