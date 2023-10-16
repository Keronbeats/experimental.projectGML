function scrChecktGravity(width){
	if (!collision_rectangle(x-width,floor(y),x+width,ceil(y),Obj_block_colision,true,false) or vspeed != 0){
    gravity = 0.3;
    action = "jump";
	}
}