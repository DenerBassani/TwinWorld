function scr_can_move(nx, ny)
{
    var inst = instance_place(nx, ny, obj_wall);

    if (inst != noone)
    {
        if (inst.world != world)
            return true; // parede do outro mundo não bloqueia
        else
            return false;
    }

    return true;
}