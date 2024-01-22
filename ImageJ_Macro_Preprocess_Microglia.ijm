/***** Opens an image, selects the channel containing Ly6G stained Neutrophils and analyses total volume in a z-stack
 *  IMPORTANT: Run this code in ImageJ - Process - Batch - Macro (ImageJ Batch Process module)
 *  First select a folder with all your images as the Input... ; then select a folder that will contain the excel files containing information about the volume in Output...
 *  To load at startup, this macro file should reside inside /macros/AutoRun/
 */

run("Remove Outliers...", "radius=1 threshold=50 which=Bright stack");

run("Subtract Background...", "rolling=20 sliding stack");
close();