color yellow = color(242, 232, 114);
color green = color(0, 255, 0);
color axisColor = color(255);

public void setup() {
  size(1000, 1000, P2D);
  background(0);
  noLoop();
}

void DrawAxis() {
  int midX = width / 2;
  int midY = height / 2;
  stroke(axisColor);
  line(midX, 0, midX, height);
  line(0, midY, width, midY);
}

void DrawShape() {
  stroke(yellow);
  line(0, 0, 50, 100);
  stroke(green);
  line(50, 100, 100, 50);
  line(100, 50, 0, 0);
}
public void draw() {
  strokeWeight(4);
  DrawShape();
  translate(150, 150);
  DrawShape();
  pushMatrix();
  rotate(PI/3.0);
  DrawShape();
  translate(150, 150);
  DrawShape();
  popMatrix();
  scale(3.0);
  //rotate(-PI/4.0);
  DrawShape();
}
