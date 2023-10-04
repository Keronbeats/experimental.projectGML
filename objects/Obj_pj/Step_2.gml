//colisiones con bloques.
scrChecktGravity(width){
}
//bloque colision
if (vspeed > 0){
    scrChecktGroundCollision(width);
} else if (vspeed < 0){
	//callendo
    scrChecktCellingCollision(width, heigth);
}
//Cambios de sprite
scrUpdateSprite();

//colision con plataforma en movimiento
scrChecktPlataformCollision(width);