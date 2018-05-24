class Ball {

  float x, y;
  int angle, speed, colour;

  Ball() {
    angle = (int) (Math.random() * 360);
    speed = (int) (Math.random() * 11);
    colour = (int) (Math.random() * 256);

    x = (float) (Math.random() * 600 - 99);
    y = (float) (Math.random() * 600 - 99);
  }

  void move() {
    x += speed*cos(angle);
    y += speed*sin(angle);
  }
  
  void deflect() {
    if (x >= 590) {
      angle = (int) (Math.random() * 360); //these are only temporary
    }
    else if (x <= 10) {
      angle = (int) (Math.random() * 360);
    }
    else if (y >= 590) {
      angle = (int) (Math.random() * 360);
    }
    else if (y <= 10) {
      angle = (int) (Math.random() * 360);
    }
  }
}
