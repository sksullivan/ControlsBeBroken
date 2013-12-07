import oscP5.*;
import netP5.*;
import java.util.Random;

int locationX = 100;
int locationY = 100;
boolean keyup = false;
boolean keyright = false;
boolean keyleft = false;
boolean keydown = false;
int deadlyBoxX = new int[5];
int deadlyBoxY = new int[5];
int deadlyBoxSizeX = new int[5];
int deadlyBoxSizeY = new int[5];

void setup()
{
  size(500, 500);//+100 for pause button
  frameRate(60);//speed of sequencers
  
  //multi[4][4] = 1; Set up initial board programatically;
  
}

void draw()
{
  background(255,255,255);
  fill(0,0,0,255);
  rect(locationX-5,locationY-5,10,10);
  step();
}



void step()
{
  if (keyup) locationY--;
  if (keydown) locationY++;
  if (keyleft) locationX--;
  if (keyright) locationX++;
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP) keyup = true; 
    if (keyCode == DOWN) keydown = true; 
    if (keyCode == LEFT) keyleft = true; 
    if (keyCode == RIGHT) keyright = true; 
  }
}
 
void keyReleased() {
  if (key == CODED) {
    if (keyCode == UP) keyup = false; 
    if (keyCode == DOWN) keydown = false; 
    if (keyCode == LEFT) keyleft = false; 
    if (keyCode == RIGHT) keyright = false; 
  }
}
