function scrChecktGravity(width){
	if (!collision_rectangle(x-width,y,x+width,y+1,Obj_block_colision,true,false) or vspeed != 0){
    gravity = 0.3;
    action = "jump";
	}
}