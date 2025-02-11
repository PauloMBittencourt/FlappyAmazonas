// Desenha os fantasmas
for (var i = 0; i < ds_list_size(fantasma_lista); i++) {
    var f = fantasma_lista[| i];
    draw_sprite_ext(sprite_index, image_index, f.x, f.y, image_xscale, image_yscale, image_angle, c_white, f.alpha);
}

// Desenha o sprite principal
draw_self();