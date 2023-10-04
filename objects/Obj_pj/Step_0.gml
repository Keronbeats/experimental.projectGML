//verifica el movimiento derecha o izquierda.
var hor = keyboard_check(vk_right) - keyboard_check(vk_left);
//mueve la orientacion de el sprite dependiendo de la direccion a la que se avanza y cambia entre sprites.
if (hor != 0) {
	scrMovement(hor);
	
	action = "walk";
} else if (vspeed == 0) {
	action = "idle";
}
//realiza el salto, solo una vez en bloque de colision
if (keyboard_check_pressed(vk_space)){
	scrJump(width);
}
//salto en plataforma de colision