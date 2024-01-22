/***** Opens an image, selects the channel containing Ly6G stained Neutrophils and analyses total volume in a z-stack
 *  IMPORTANT: Run this code in ImageJ - Process - Batch - Macro (ImageJ Batch Process module)
 *  First select a folder with all your images as the Input... ; then select a folder that will contain the excel files containing information about the volume in Output...
 *  To load at startup, this macro file should reside inside /macros/AutoRun/
 */

run("Split Channels");

setSlice(nSlices/2);
Place="C:/Users/MODIFY THIS LINE";  // Modify to place excel tables to your analysis folder
Name=getTitle();
run("Subtract Background...", "rolling=15 stack");
run("Gaussian Blur 3D...", "x=1 y=1 z=1");
run("3D Objects Counter", "threshold=500 slice=10 min.=300 max.=20971520 exclude_objects_on_edges statistics summary");
selectWindow("Statistics for "+Name);

saveAs("Results", Place+"Volume "+Name+".csv");

close();
close();