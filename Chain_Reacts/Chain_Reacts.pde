Ball what;

void setup() {
  size(600, 600);
  what = new Ball();
  background(0);
}

void draw() {
  background(0);
  what.deflect();
  color c = color(what.colour,0,0);
  fill(c);
  ellipse(what.x, what.y, 20, 20);
  what.move();
}
