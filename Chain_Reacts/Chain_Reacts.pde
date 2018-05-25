Ball[] balls;

void setup() {
  size(600, 600);
  balls = new Ball[30];
  for (int i = 0; i < balls.length; i++) {
    balls[i] = new Ball();
  }
  background(0);
}

void draw() {
  background(0);
  for (Ball b : balls) {
    changeState(b);
    color c = b.c;
    fill(c);
    b.deflect();
    b.act();
    ellipse(b.x, b.y, b.radius * 2, b.radius * 2);
  }
}

void changeState(Ball b) {
  if (b.state == 0) {
    for (Ball ba : balls) {
      if (ba.state == 1 || ba.state == 2) {
        if (abs(ba.x-b.x) < (ba.radius + b.radius) && (abs(ba.y-b.y) < ba.radius + b.radius)) {
          b.state = 1;
          return;
        }
      }
    }
  }
  if (b.radius == b.MAX_RADIUS && b.state == 1) {
    b.state = 2;
  } else if (b.state == 2 && b.radius == 0) {
    b.state = 3;
  }
}

void mouseClicked() {
  Ball[] temp = new Ball[balls.length + 1];
  int counter = 0;
  for (Ball b : balls) {
    temp[counter] = b;
    counter++;
  }
  temp[temp.length - 1] = new Ball(1, mouseX, mouseY);
  balls = temp;
}