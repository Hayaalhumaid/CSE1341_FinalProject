/*
Haya Alhumaid
CSE 1341
Final project
*/
int w=30;
int h=30;
int s=20;
ArrayList<Integer> x= new ArrayList<Integer>();
ArrayList<Integer> y= new ArrayList<Integer>();

void setup(){
  size(500,500);
  x.add(5);
  y.add(5);
}

void draw(){
  background(255);
  for(int i=0; i<w; i++){
    line(i*s,0,i*s,height);
  }
  for (int i=0; i<h;i++){
  line(0,i*s,width,i*s);
  }
  for (int i=0; i<x.size(); i++) {
    fill(0, 0, 255);
    rect(x.get(i)*s, y.get(i)*s, s, s);
  }
 
  
}