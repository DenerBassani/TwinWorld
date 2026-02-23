function scr_next_level()
{
    global.level_index++;

    if (global.level_index < array_length(global.level_list))
    {
        room_goto(global.level_list[global.level_index]);
    }
    else
    {
        show_message("Fim de jogo!");
    }
}