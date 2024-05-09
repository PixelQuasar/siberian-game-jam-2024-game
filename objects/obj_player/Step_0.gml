if global.move_speed != 0{
	
	var mspeed = global.move_speed+global.roll;
	var mspeed_diag = (global.move_speed+global.roll)*0.75;
	
	switch (global.movedir){
	case 1: {x+= mspeed; break;}
	case 2: {x+= mspeed_diag; y-=mspeed_diag; break;}
	case 3: {y-= mspeed; break;}
	case 4: {x-= mspeed_diag; y-=mspeed_diag; break;}
	case 5: {x-= mspeed; break;}
	case 6: {x-=mspeed_diag; y+=mspeed_diag; break;}
	case 7: {y+=mspeed; break;}
	case 8: {x+=mspeed_diag; y+=mspeed_diag; break;}
	}
	
}

x = round(x);
y = round(y);