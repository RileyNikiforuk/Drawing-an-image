//Global Variables
int appWidth, appHeight;
float backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight;
float smallerDimension, largerDimension, imageWidthRatio=0.0, imageHeightRatio=0.0;
boolean widthLarger=false, heightLarger=false;
PImage pic;
boolean nightMode=false;
//
size(800, 600); //Landscape
//Copy Display Agorithm from hello world
appWidth = width;
appHeight = height;
//
//Aspect Ration of background Image
//maxresdefault.jpg
int picWidth = 1280;
int picHeight = 720;
//Image Orientation: Landscape, Square, Portrait
if ( picWidth >= picHeight ) { // True if Landscape or square
  largerDimension = picWidth;
  smallerDimension = picHeight;
  widthLarger = true;
} else { //False if Portrait
  largerDimension = picHeight;
  smallerDimension = picWidth;
  heightLarger = true;
}
//
/*aspect ratio calculations, Older calculations 
 if (widthLarger == true) imageWidthRatio = largerDimension / largerDimension;
 if (widthLarger == true) imageHeightRatio = smallerDimension / largerDimension;
 if (heightLarger == true) imageWidthRatio = smallerDimension / largerDimension;
 if (heightLarger == true) imageHeightRatio = largerDimension / largerDimension;
 */
//
//Better Image stretch algorithm
float picWidthAdjusted, picHeightAdjusted;
//we know the width is the longer dimension
if ( appWidth >= picWidth ) {
  picWidthAdjusted = appWidth;
  //
  if (widthLarger == true) imageWidthRatio = largerDimension / largerDimension;
 if (widthLarger == true) imageHeightRatio = smallerDimension / largerDimension;
 //
 if (  ) {} else {}
} else {
  //image smaller then canvas, needs seperate algorithm
}
//Population
pic = loadImage("../images used/maxresdefault.jpg");
backgroundImageX = appWidth*0;
backgroundImageY = appHeight*0; 
backgroundImageWidth = appWidth-1;
backgroundImageHeight = appHeight-1;
//
// Ajust Image Variables for aspect ratio
picWidthAdjusted = backgroundImageWidth * imageWidthRatio;
picHeightAdjusted = backgroundImageHeight * imageHeightRatio;
//
println( appWidth, picWidth, picWidthAdjusted );
println( appHeight, picHeight, picHeightAdjusted );
//Rectangular Layout and Image drawing to canvas
//rect(backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight);
//
if (nightMode == false)tint(255, 75, 125); //grey scale, day use: use 1/2 tint value for white (i.e. 128/256=1/2)
if (nightMode == true) tint(255, 75, 0); //NightMode
image(pic, backgroundImageX, backgroundImageY, picWidthAdjusted, picHeightAdjusted);
