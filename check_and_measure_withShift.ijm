
k = 1;
V = newArray(150*8+1);
for(j=0;j<150;j++){
	for(i=1;i<5;i++){
		FILENAME_x = "C"+(3*i-1);
		FILENAME_y = "C"+(3*i);
		V[k*2-1] = getResult(FILENAME_x,j);
		V[k*2]   = getResult(FILENAME_y,j);
		k = k+1;
	}
}
n = 1;
shiftx = -6;
shifty = 256;
for(l=1;l<151;l++){
	for(m=1;m<5;m++){
		selectWindow("gar_1_tagrfp.tif");
		makePoint(V[n*2-1]+shiftx,V[n*2],'circle');
		run("Measure");		
		drawOval(V[n*2-1]+shiftx, V[n*2], 2, 2);

		makePoint(V[n*2-1],V[n*2]+shifty,'circle');
		run("Measure");
		drawOval(V[n*2-1], V[n*2]+shifty, 2, 2);	
		n = n+1;
	}
	run("Next Slice [>]");	
}
