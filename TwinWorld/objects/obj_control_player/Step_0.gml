var mx = keyboard_check_pressed(vk_right) - keyboard_check_pressed(vk_left);
var my = keyboard_check_pressed(vk_down) - keyboard_check_pressed(vk_up);

if (mx != 0 || my != 0)
{
    with (obj_player)
    {
        scr_move_grid(mx, my);
    }
}