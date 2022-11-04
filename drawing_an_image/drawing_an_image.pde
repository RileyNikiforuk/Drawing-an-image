//Global Variables
int appWidth, appHeight;
float backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight;
PImage pic;
//
size(800, 600); //Landscape
//Copy Display Agorithm
appWidth = width;
appHeight = height;
//
//Population
pic = loadImage("../images used/maxresdefault.jpg");
backgroundImageX = appWidth*0;
backgroundImageY = appHeight*0; 
backgroundImageWidth = appWidth-1;
backgroundImageHeight = appHeight-1;
//
//Rectangular Layout and Image drawing to the canvas
rect(backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight);
//
tint(162, 95, 50); //use 1/2 tint value for white (i.e. 128/256=1/2)
//tint(92, 35, 0); //NightMode
image(pic, backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight);
