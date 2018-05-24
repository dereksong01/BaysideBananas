class Ball {

  int x, y;
  int xVel, yVel;
  int c1, c2, c3;

  Ball() {
    xVel = (int) (Math.random() * 10 + 1);
    yVel = (int) (Math.random() * 10 + 1);
    
    c1 = (int) (Math.random() * 256);
    c2 = (int) (Math.random() * 256);
    c3 = (int) (Math.random() * 256);

    x = (int) (Math.random() * 581 + 10);
    y = (int) (Math.random() * 581 + 10);
  }

  void move() {
    x += xVel;
    y += yVel;
  }
  
  void deflect() {
    if (x > 590 || x < 10) {
      xVel = -1 * xVel;
    }
    else if (y > 590 || y < 10) {
      yVel = -1 * yVel;
    }
  }
  
}
