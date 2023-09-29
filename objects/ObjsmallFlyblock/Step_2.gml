if (x > xto && hspeed > 0) {
    hspeed	*= -1;
} else if (x < xfrom && hspeed < 0) {
    hspeed	*= -1;
} else if(y > yto && vspeed > 0) {
    vspeed	*= -1;
} else if(y < yfrom && vspeed < 0) {
    vspeed	*= -1;
}