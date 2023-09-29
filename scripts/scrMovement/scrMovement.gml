function scrMovement(hor){
	if (place_free(x+ hor * 5, y)) {
		x += hor * 5;
	}
	
	image_xscale = hor;
}