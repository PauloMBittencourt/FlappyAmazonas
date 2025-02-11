/// @description
if(!global.player_vivo) exit;

randomize();
var pos_y =  random_range(room_height/2, 0); 
instance_create_layer(room_width - 32, pos_y, "Instance_Passaros", obj_alerta);

alarm[0] = /*Tempo do alarme da caixa de alerta*/50 + 150;
