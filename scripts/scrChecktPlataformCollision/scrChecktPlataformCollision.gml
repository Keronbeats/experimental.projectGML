function scrChecktPlataformCollision(width){
	var plataform = collision_rectangle(x-width,y,x+width,y+1,ObjsmallFlyblock2,true,true);
	if (plataform && vspeed==0){
	x += plataform.hspeed;
	}

	var plataform = collision_rectangle(x-width,y,x+width,y+1,ObjsmallFlyblock,true,true);
	if (plataform){
	y += plataform.vspeed;
	}
}