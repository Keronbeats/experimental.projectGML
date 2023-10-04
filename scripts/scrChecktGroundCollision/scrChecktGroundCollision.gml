function scrChecktGroundCollision(width){
	var ground = collision_rectangle(x-width,y,x+width,y+vspeed,Obj_block_colision,true,false);
    if (ground && y <= ground.y + 3){
        y= ground.y;
        vspeed = 0;
        gravity = 0;
    }
}