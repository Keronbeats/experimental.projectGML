function scrMovement(hor,width){
	var xTo = x + hor * 4;
	var moved = false;
	for (var i=1;i<8;i++) {
		var wall = collision_rectangle(xTo-width, y-i-1, xTo+width,y-i,Obj_block_colision,true,true);
		if (!wall || !wall.solid){
			x = xTo;
			moved = true;
			if (vspeed == 0){
				y -= i - 1;
			}
			break;
		}
	}
	if(vspeed == 0 && moved) {
	for (var i=1;i<6;i++) {
			var wall = collision_rectangle(xTo-width, y+i-1, xTo+width, y+i,Obj_rampblock,true,true);
			if (wall){
				y +=i;
				break;
			}
		}
	}
	image_xscale = hor;
}