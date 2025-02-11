if(!global.player_vivo) exit;

randomize();
var pos_x = room_width + sprite_get_xoffset(spr_arvore);
var pos_y = random_range(room_height / 2, room_height - sprite_get_height(spr_arvore)); 
instance_create_layer(pos_x, pos_y, "Instance_Obstaculos", obj_obstaculo);

alarm[0] = 100;