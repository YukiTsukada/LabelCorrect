// load manually corrected coordinates as a table


// Get corrected XY labels from results table
NumTable = getValue("results.count");
NumPoints = NumTable/2;
X = newArray(NumPoints);
Y = newArray(NumPoints);
Xnew = newArray(NumPoints);
Ynew = newArray(NumPoints);
SLICE = newArray(NumPoints);
for(i=0;i<NumPoints;i++){
	X[i] = getResult("X",2*i);
	Y[i] = getResult("Y",2*i);
	Xnew[i] = getResult("X",2*i+1);
	Ynew[i] = getResult("Y",2*i+1);
	SLICE[i] = getResult("Slice",2*i);
}

// Open labeled XY coordinates
Table.reset("Results");
Table.open("/Users/yuki-ts/Desktop/LabelCorrect/Results.csv");
Table.rename("Results.csv","Results");

// Asighn new labels
NumTableNew = getValue("results.count");
dist = newArray(4);
for(j=0;j<NumPoints;j++){
	swapX1 = getResult("C2",SLICE[j]-1);
	swapY1 = getResult("C3",SLICE[j]-1);
	swapX2 = getResult("C5",SLICE[j]-1);
	swapY2 = getResult("C6",SLICE[j]-1);
	swapX3 = getResult("C8",SLICE[j]-1);
	swapY3 = getResult("C9",SLICE[j]-1);
	swapX4 = getResult("C11",SLICE[j]-1);
	swapY4 = getResult("C12",SLICE[j]-1);

	dist[0] = (swapX1 - X[j])*(swapX1 - X[j]) + (swapY1 - Y[j])*(swapY1 - Y[j]);
	dist[1] = (swapX2 - X[j])*(swapX2 - X[j]) + (swapY2 - Y[j])*(swapY2 - Y[j]);
	dist[2] = (swapX3 - X[j])*(swapX3 - X[j]) + (swapY3 - Y[j])*(swapY3 - Y[j]);
	dist[3] = (swapX4 - X[j])*(swapX4 - X[j]) + (swapY4 - Y[j])*(swapY4 - Y[j]);

	dist_min = Array.findMinima(dist,1);
	if(dist_min[0] == 0){
	 setResult("C2",SLICE[j]-1,Xnew[j]);
	 setResult("C3",SLICE[j]-1,Ynew[j]);
	 print("1st point");
	 }
	else if(dist_min[0] == 1){
	 setResult("C5",SLICE[j]-1,Xnew[j]);
	 setResult("C6",SLICE[j]-1,Ynew[j]);
	 print("2nd point");	 
	 }
	else if(dist_min[0] == 2){
	 setResult("C8",SLICE[j]-1,Xnew[j]);
	 setResult("C9",SLICE[j]-1,Ynew[j]);
	 print("3rd point");	 
	 }
	else if(dist_min[0] == 3){
	 setResult("C11",SLICE[j]-1,Xnew[j]);
	 setResult("C12",SLICE[j]-1,Ynew[j]);
	 print("4th point");	 
	 }
}

// Table.save(file path);