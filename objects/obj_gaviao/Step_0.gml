// Adiciona a posição atual à lista
var fantasma = { x: x, y: y, alpha: fantasma_alpha };
ds_list_add(fantasma_lista, fantasma);

// Remove fantasmas antigos se a lista estiver cheia
if (ds_list_size(fantasma_lista) > fantasma_max) {
    ds_list_delete(fantasma_lista, 0);
}

// Reduz a transparência dos fantasmas
for (var i = 0; i < ds_list_size(fantasma_lista); i++) {
    var f = fantasma_lista[| i];
    f.alpha -= fantasma_decay;
    if (f.alpha <= 0) {
        ds_list_delete(fantasma_lista, i);
        i--;
    }
}

if(x <= 0)
{
	ds_list_destroy(fantasma_lista);
	instance_destroy();
}