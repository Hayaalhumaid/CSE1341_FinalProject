/*
Haya Alhumaid
CSE 1341
Final project
*/
int w=30;
int h=30;
int s=20;

void setup(){
  size(500,500);
}

void draw(){
  background(255);
  for(int i=0; i<w; i++){
    line(i*s,0,i*s,height);
  }
  for (int i=0; i<h;i++){
  line(0,i*s,width,i*s);
  }
  
}