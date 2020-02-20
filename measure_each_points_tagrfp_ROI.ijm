
k = 1;
V = newArray(150*2+1);
for(j=0;j<150;j++){
	for(i=1;i<2;i++){
		FILENAME_x = "C"+(3*i-1);
		FILENAME_y = "C"+(3*i);
		V[k*2-1] = getResult(FILENAME_x,j);
		V[k*2]   = getResult(FILENAME_y,j);
		k = k+1;
	}
}
n = 1;
for(l=1;l<151;l++){
		selectWindow("IK3554ttx-7_02-1_20190730_tagrfp.tif");
		makeOval(V[n*2-1],V[n*2], 6, 6);
		roiManager("add");
		n = n+1;
	run("Next Slice [>]");	
}
roiManager("measure");
roiManager("save","/Users/ryokotatsumi/Desktop/SMD_test_lumencore/20190730_IK3554ttx-7/IK3554ttx-7_02-1_20190730/nrVroi.zip");