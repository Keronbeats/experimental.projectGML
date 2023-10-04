function scrChecktCellingCollision(width,height){
	var ceiling = collision_rectangle(x-width,y-height,x+width,y-height+vspeed,Obj_block_colision,true,false);
    if (ceiling && ceiling.oneSide == false){
        y = ceiling.y + ceiling.sprite_height + height;
        vspeed = 0;
    }
}