function scr_move_grid(mx, my)
{
    var gx = x + (mx * global.grid);
    var gy = y + (my * global.grid);

    if (scr_can_move(gx, gy))
    {
        x = gx;
        y = gy;
    }
}