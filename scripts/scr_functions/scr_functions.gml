function __game_restart() {
  // This will destroy all instances. 
  // Yes, this will run their cleanup events as well as their destroy event.
  with(all) {
	instance_destroy();	
  }

  audio_stop_all();
  draw_texture_flush();


  room_goto(rm_jogo);
}

function transicao_tela() {
	room_goto(global.destino_tela);
}

function transicao_final() {
	global.transicao_init = false;
}

function game_end_colisao(){
	
	//Fazendo o background parar
	layer_hspeed("bg_arvores", 0);
	layer_hspeed("bg_reflexArvores", 0);
	layer_hspeed("bg_reflex2", 0);
	layer_hspeed("bg_agua", 0);
	
	global.player_vivo = false;
}