void spiral(float xc, float yc, float rot){
  //xc and yc are the coordinates of the center
  //rot is the initial orientation
  //a defines radius growth
  int steps = 100;
  int windings=4;//spiral 1
  float a=10;
  float dt=windings*TWO_PI/steps;
  
  for(int i=0; i<100; i++){
    float t = i * dt;
    float x = i/a  * t * cos(t + rot);
    float y = i/a * t * sin(t + rot);
    circle(xc + x, yc +y,i);
    stroke(255-(i*255/100),i*255/100,255);
  // fill(255-(i*255/100),i*255/100,255);
  }
}

import processing.pdf.*;

void setup(){
  noLoop();
  beginRecord(PDF,"SPIRAL 2"+".pdf");//spiral 1
  size(400,400);
  stroke(255,0,0);
  strokeWeight(2);
  background(255);
}

void draw(){
  float x=width/2;
  float y=height/2;
  spiral(x,y,0);
  //spiral(x,y,PI/2);
//  spiral(x,y,PI);
//  spiral(x,y,3*PI/2);
  endRecord();
}
  
