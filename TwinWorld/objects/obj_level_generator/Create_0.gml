randomize();

var map = spr_map_1;
var grid = 32;

// Quantidade de frames do sprite
var total_frames = sprite_get_number(map);

// Sorteia qual mapa usar
var chosen_frame = irandom(total_frames - 1);

// Criar surface temporária
var surf = surface_create(sprite_get_width(map), sprite_get_height(map));
surface_set_target(surf);
draw_clear_alpha(c_black, 0);
draw_sprite(map, chosen_frame, 0, 0);
surface_reset_target();

var w = surface_get_width(surf);
var h = surface_get_height(surf);

for (var xx = 0; xx < w; xx++)
{
    for (var yy = 0; yy < h; yy++)
    {
        var col = surface_getpixel(surf, xx, yy);

        var px = xx * grid;
        var py = yy * grid;

        if (col == make_color_rgb(0,0,0))
        {
            continue;
        }
        else if (col == make_color_rgb(255,255,255))
        {
            instance_create_layer(px, py, "Instances", obj_wall);
        }
        else if (col == make_color_rgb(255,0,0))
        {
            instance_create_layer(px, py, "Instances", obj_player);
        }
        else if (col == make_color_rgb(0,255,0))
        {
            instance_create_layer(px, py, "Instances", obj_goal);
        }
    }
}

surface_free(surf);