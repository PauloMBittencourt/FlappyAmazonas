function scr_endgame(){
	if (global.player_vivo) exit;
	
	//Para a sprite subir e cair em seguida
	//hspeed = -2;
	//vspeed = -2;
	
	///Reiniciando o jogo
	alarm[0] = game_get_speed(gamespeed_fps) * 5;
	
	global.destino_tela = rm_inicio;
	
	//Criando a transição 1
	layer_sequence_create("Transicao", 0, 0, sqc_transicao);
}