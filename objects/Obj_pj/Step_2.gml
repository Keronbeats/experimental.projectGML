//colisiones con bloques.
if (!collision_rectangle(x-8,y,x+8,y+1,Obj_block_colision,true,false) or vspeed != 0){
    gravity = 0.3;
    action = "jump";
}
//bloque colision
if (vspeed > 0){
    var ground = collision_rectangle(x-8,y,x+8,y+vspeed,Obj_block_colision,true,false);
    if (ground && y <= ground.y + 3){
        y= ground.y;
        vspeed = 0;
        gravity = 0;
    }
} else if (vspeed < 0){
    var ceiling = collision_rectangle(x-8,y-61,x+8,y-61+vspeed,Obj_block_colision,true,false);
    if (ceiling && ceiling.oneSide == false){
        y = ceiling.y + ceiling.sprite_height + 61;
        vspeed = 0;
    }
}

sprite_index = asset_get_index("spr" + weapon + action);

//colision con plataforma en movimiento
var plataform = collision_rectangle(x-6,y,x+6,y+1,ObjsmallFlyblock2,true,true);
if (plataform){
	x += plataform.hspeed;
}

var plataform = collision_rectangle(x-6,y,x+6,y+1,ObjsmallFlyblock,true,true);
if (plataform && vspeed == 0){
	y += plataform.vspeed;
}