void setup() {
  size(1000, 1000, P2D);
  noLoop();

  background(0);
  smooth(8);
  strokeWeight(2);
}

void draw() {
  ellipseMode(RADIUS);
  circle(65, 65, 65);
  circle(295, 65, 65);
  circle(180, 185, 110);
}