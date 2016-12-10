/*
Haya Alhumaid
 CSE 1341
 Final project
 */

Snake snake1= new Snake();
int score=0;
int box=20;

void setup() {
  size(500, 500);
  background(255);
}

void draw() {
  //Vertical Grid
  background(255);
  for (float i = 0; i < width; i = i+20) {
    line(0, i, 500, i);
  }
  //Horizontal Grid
  for (float i = 0; i < width; i = i+20) {
    line(i, 0, i, 500);
  }
  snake1.drawSnake();
  snake1.endGame();
  snake1.resetGame();
  textSize(25);
  text(score, 30, box);
}