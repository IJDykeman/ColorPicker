PImage colorImage;

int squareWidth = 0;
int squareHeight = 0;
int gridWidth = 16;

void setup(){
  ColorPallete.loadContent();
  colorImage = loadImage("colorPalette.png");
  size(colorImage.width+200, colorImage.height+200);
  squareWidth = colorImage.width/16;
  squareHeight = colorImage.height/16;
  
  for(int y=0;y<16;y++){
    for(int x=0;x<16;x++){
      println(""+'"'+(int)red(colorImage.get(x*squareWidth+3,y*squareHeight+3))+","
      +(int)green(colorImage.get(x*squareWidth+3,y*squareHeight+3))+","
        +(int)blue(colorImage.get(x*squareWidth+3,y*squareHeight+3))+'"'+',');
    }
  }
  
  for(int i=0;i<
}


void draw(){
  
  background(colorImage.get(mouseX,mouseY));
  fill(156);
  rect(-6,-6,width+6,30);
  fill(0);
  textSize(20);
  text(getNumFromLoc(mouseX,mouseY), width-80,20);
  fill(156);
  rect(0,0,colorImage.width+30,colorImage.height+30);
  image(colorImage,0,0);
}

int getNumFromLoc(int x, int y){
  x/=squareWidth;
  y/=squareHeight;
  return y*gridWidth + x%gridWidth;
}
