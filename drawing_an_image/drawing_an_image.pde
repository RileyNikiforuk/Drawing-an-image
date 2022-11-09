//To Do, add the printlns to verify the values
//Algorithm works when image is bigger than the CANVAS, not smaller
//Different Algorithm is necessary - work to get above 65%
//
//Global Variables
int appWidth, appHeight;
float backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight;
float smallerDimension, largerDimension, imageWidthRatio=0.0, imageHeightRatio=0.0;
Boolean widthLarger=false, heightLarger=false;
PImage pic;
Boolean nightMode=false;
//
size(1280, 720); //Landscape
//Copy Display Algorithm from Hello World
appWidth = width;
appHeight = height;
//
//Aspect Ratio of Background Image
//Obi-wan-star-wars-jedi-23864621-800-600.jpg
//Note: Dimensions are found in the image file / Right Click / Properties / Details
int picWidth = 1280;
int picHeight = 720;
//Image Orientation: Landscape, Square, Portrait
if ( picWidth >= picHeight ) { //True if Landscape or Square
  largerDimension = picWidth;
  smallerDimension = picHeight;
  widthLarger = true;
} else { //False if Portrait
  largerDimension = picHeight;
  smallerDimension = picWidth;
  heightLarger = true;
}
//
/*Aspect Ratio Calculations, Older Calculations
 if ( widthLarger == true ) imageWidthRatio = largerDimension / largerDimension;
 if ( widthLarger == true ) imageHeightRatio = smallerDimension / largerDimension;
 if ( heightLarger == true ) imageWidthRatio = smallerDimension / largerDimension;
 if ( heightLarger == true ) imageHeightRatio = largerDimension / largerDimension;
 */
//
//Better Image Stretch Algorithm
float picWidthAdjusted=0.0, picHeightAdjusted=0.0;
//We know the width is the larger dimension
if ( appWidth >= picWidth ) {
  picWidthAdjusted = appWidth; //stretching the larger dimension 
  //
  if ( widthLarger == true ) imageWidthRatio = largerDimension / largerDimension;
  if ( heightLarger == true ) imageWidthRatio = smallerDimension / largerDimension;
  //
  if ( appHeight >= picHeight ) {
    //Calculated Dimension b/c smaller than width
    if ( widthLarger == true ) imageHeightRatio = smallerDimension / largerDimension;
    if ( heightLarger == true ) imageHeightRatio = largerDimension / largerDimension;
    picHeightAdjusted = picWidthAdjusted * imageHeightRatio;
  } else {
    //Image smaller than CANVAS needs separate algorithm
  }
} else {
  //Image smaller than CANVAS, needs separate algorithm
}
//
//Population
pic = loadImage("../images used/maxresdefault.jpg");
backgroundImageX = appWidth*0;
backgroundImageY = appHeight*0;
backgroundImageWidth = appWidth-1;
backgroundImageHeight = appHeight-1;
//
println( appWidth, picWidth, picWidthAdjusted );
println( appHeight, picHeight, picHeightAdjusted );
//
//Rectangular Layout and Image Drawing to CANVAS
//rect( backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight );
//
if ( nightMode == false ) tint(255, 64); //Gray Scale, Day use: use 1/2 tint value for white (i.e. 128/256=1/2)
if ( nightMode == true ) tint(64, 64, 40); //RGB: Night Mode
image( pic, backgroundImageX, backgroundImageY, picWidthAdjusted, picHeightAdjusted);
