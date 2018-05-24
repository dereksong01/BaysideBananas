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
    color c = color(b.c1, b.c2, b.c3);
    fill(c);
    b.deflect();
    b.move();
    ellipse(b.x,b.y,20,20);
  }
}
