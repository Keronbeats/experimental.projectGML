function scrJump(width){
	if(collision_rectangle(x-width,y,x+width,y+1,Obj_block_colision,false,false) && vspeed == 0){
		vspeed= -8;
	}
	if (collision_rectangle(x-width,y,x+width,y+1,Obj_wideblock,false,false) && vspeed == 0){
		vspeed= -8;
	}
}