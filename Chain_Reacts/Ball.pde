class Ball {

  final static int MOVING = 0;
  final static int GROWING = 1;
  final static int SHRINKING = 2;
  final static int DEAD = 3;
  final float CHANGE_FACTOR = .25;
  final float MAX_RADIUS = 50;

  float x, y;
  float xVel, yVel;
  float radius;
  color c;
  int state;

  Ball() {
    xVel = (float) (Math.random() * 7 + 3);
    yVel = (float) (Math.random() * 7 + 3);

    c = color((int) (Math.random() * 266), (int) (Math.random() * 266), (int) (Math.random() * 266));

    x = (float) (Math.random() * 581 + 10);
    y = (float) (Math.random() * 581 + 10);

    radius = 10;

    state = 0;
  }
  
  Ball(int s, float _x, float _y) {
    x = _x;
    y = _y;
    xVel = 0;
    yVel = 0;
    state = s;
    radius = 0;
    c = color((int) (Math.random() * 266), (int) (Math.random() * 266), (int) (Math.random() * 266));
  }

  void act() {
    if (state == 0) {
      x += xVel; 
      y += yVel;
    } 
    else if (state == 1) {
      radius += CHANGE_FACTOR;
    } 
    else if (state == 2) {
      radius -= CHANGE_FACTOR;
    } 
    else if (state == 3) {
      return;
    }
  }

  void deflect() {
    if (x > 590) {
      x = x - 10;
      xVel = -1 * xVel;
    } else if (x < 10) {
      x = x + 10;
      xVel = -1 * xVel;
    } else if (y > 590) {
      y = y - 10;
      yVel = -1 * yVel;
    } else if (y < 10) {
      y = y + 10;
      yVel = -1 * yVel;
    }
  }
}
