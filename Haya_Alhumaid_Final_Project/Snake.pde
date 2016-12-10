class Snake {
  int size;
  int xloc;
  int yloc;
  int direction;
  int box;
  float applex;
  float appley;
  boolean gameover=false;
  ArrayList<Integer> x= new ArrayList<Integer>();
  ArrayList<Integer> y= new ArrayList<Integer>();
  int[] dx = {0, 0, 1, -1}, dy = {1, -1, 0, 0};
  Snake() {
    size=20;
    x.add(10);
    y.add(10);
    xloc = 30;
    yloc = 30;
    box = 20;
    applex=int(random(25));
    appley=int(random(25));
    direction= 0;
  }
  void endGame() {
    if (snake1.x.get(0)>=width/box||snake1.x.get(0)<=0||snake1.y.get(0)>=height/box||snake1.y.get(0)<=0) {
      gameover=true;
      textAlign(CENTER);

      text("GAME OVER: PRESS SPACE", width/2, height/2);
    }
  }
  void resetGame() {
    if (gameover) {
      if (keyPressed&&key==' ') {
        x.clear();
        y.clear();
        x.add(5);
        y.add(5);
        gameover = false;
        score=0;
      }
    }
  }

  void drawSnake() {
    for (int i=0; i<x.size(); i++) {
      fill(0, 0, 255);
      rect(x.get(i)*box, y.get(i)*box, box, box);
    }
    fill(255, 0, 0);
    rect(applex*box, appley*box, box, box);
    if (!gameover&&frameCount%5==0) {
      moveSnake();
    }
  }

  void moveSnake() {
    x.add(0, x.get(0)+dx[direction]);
    y.add(0, y.get(0)+dy[direction]);
    if (x.get(0) < 0 || y.get(0) < 0 || x.get(0) >= width/box || y.get(0) >= height/box) {
      gameover = true;
    }
    for (int i=1; i<x.size(); i++) {


      if (x.get(0)==x.get(i) && y.get(0) == y.get(i));
    }

    if (x.get(0)==applex&& y.get(0)==appley) {

      applex = (int)random(0, box);
      appley = (int)random(0, box);
      score ++;
    } else {
      x.remove(x.size()-1);
      y.remove(y.size()-1);
    }


    if (key == CODED) {
      if (keyCode== DOWN) {

        direction= 0;
      } 
      if (keyCode==UP) {

        direction = 1;
      }
      if (keyCode==RIGHT) {

        direction = 2;
      }
      if (keyCode==LEFT) {

        direction = 3;
      }
    }
  }
}