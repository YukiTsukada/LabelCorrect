selectWindow("IK3554ttx-7_02-1_20190730_tagrfp.tif");
open("/Users/ryokotatsumi/Desktop/SMD_test_lumencore/20190730_IK3554ttx-7/IK3554ttx-7_02-1_20190730/nrVroi.zip");

k = 1;
n = roiManager("count");
for(i=0; i<n; i++){
	roiManager("select", i);
	title = "ROI reposition";
	msg = "If necessary, move roi to the correct position, then click \"OK\".";
	waitForUser(title, msg);
	roiManager("update");
	k = k+1;
}
roiManager("deselect");
roiManager("measure");
roiManager("save","/Users/ryokotatsumi/Desktop/SMD_test_lumencore/20190730_IK3554ttx-7/IK3554ttx-7_02-1_20190730/nrVroi.zip");