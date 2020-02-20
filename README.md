## How to use:

1. modify paths in check_and_measure.ijm and ManualCorrect.ijm
2. open image stack file
3. open labeled XY coordinates as Results.csv
4. run check_and_measure.ijm
5. rename labeld image stack
6. close Results table

7. (For all modifying positions)
     click modifying position with point selection tool  
     measure (M key)  
     click right position with point selection tool  
     measure (M key)   

8. save results table (option)
9. run ManualCorrect.ijm
10. save results table (option)

11. open image stack file
12. run check_and_measure.ijm for checking the result



---

To correct one by one
1. run measure_each_points_tagrfp_ROI.ijm
click one from the labeled four points

2. run Check_DLC_coordinatesROI.ijm 
and correct the incorrect point

3. run Check_and_measure_gcampROI.ijm
for measuring GCaMP intensity

