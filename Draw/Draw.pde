
FSCurve curve = new FSCurve(200);
FSCurvePrecalc precalc = new FSCurvePrecalc();
FSCurveRenderer renderer = new FSCurveRenderer();
int gSampleCount = 1000;
int gBatchSize = 250;

void DrivePrecalc(int batchSize) {
  if (precalc.done())
    return;
  for (int i = 0; i < batchSize; i++) {
    precalc.calcNextSample();
    if (precalc.done()) {
      curve.setPath(precalc.getPath(), precalc.getTimeDelta());
      curve = renderer.swapCurve(curve);
    }
  }
}

CurveAnimator currentAnimator = null;
int nextAnimatorIndex = 0;
ArrayList<CurveAnimator> animationSequence = new ArrayList<CurveAnimator>();

void setup() {
  animationSequence.add(new CurveAnimator(Zero, Mickey, 0, 1, 60));
  animationSequence.add(new CurveAnimator(Zero, Mickey, 1, 2, 120));
  animationSequence.add(new CurveAnimator(Zero, Mickey, 2, 10, 200));
  animationSequence.add(new CurveAnimator(Zero, Mickey, 10, 1000, 200));
  animationSequence.add(new CurveAnimator(Mickey, Circle, 0, 1000, 200));
  animationSequence.add(new CurveAnimator(Circle, Square, 0, 1000, 60));
  animationSequence.add(new CurveAnimator(Square, TrebleClef, 0, 1000, 200));
  animationSequence.add(new CurveAnimator(TrebleClef, Zero, 0, 1000, 100));
  animationSequence.add(new CurveAnimator(Zero, MajorChord, 0, 1000, 100));

  size(1000, 1000, P2D);
  background(0);
  smooth(8);

  animationSequence.get(0).reset();
  DrivePrecalc(gSampleCount);
  curve = new FSCurve(200);

  // noLoop();
}


int tickIndex = 0;
void draw() {
  if (currentAnimator != null) {
    currentAnimator.tick(tickIndex);
    if (currentAnimator.done())
      currentAnimator = null;
  }
  DrivePrecalc(gBatchSize);
  renderer.draw(tickIndex);
  tickIndex++;
  // if (frameCount % 50 == 0) println(frameRate);
}

void keyPressed() {
  if (key != CODED)
    return;
  if (keyCode == LEFT) {
    if (nextAnimatorIndex == 0)
      return;
    nextAnimatorIndex--;
    animationSequence.get(nextAnimatorIndex).reset();
  }
  if (keyCode == RIGHT) {
    if (nextAnimatorIndex >= animationSequence.size())
      return;
    currentAnimator = animationSequence.get(nextAnimatorIndex);
    currentAnimator.reset();
    currentAnimator.start(tickIndex);
    nextAnimatorIndex++;
  }
  if (keyCode == DOWN) {
    // println(blendRatio);
  }
  if (keyCode == UP) {
    // println(blendRatio);
  }
  // populatePath(0.01, maxHarmonic);
}
