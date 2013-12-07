import oscP5.*;
import netP5.*;
import java.util.Random;

int locationX = 100;
int locationY = 100;


void setup()
{
  size(500, 500);//+100 for pause button
  frameRate(6);//speed of sequencers
  
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
}
