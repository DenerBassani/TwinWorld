var total = instance_number(obj_player);
var on_goal = 0;

with (obj_player)
{
    if (place_meeting(x, y, obj_goal))
        on_goal++;
}

if (on_goal == total)
{
    scr_next_level();
}