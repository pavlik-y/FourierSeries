class CurveAnimator {
  private ArrayList<HarmonicParams> mStartParams;

  public CurveAnimator(
      ArrayList<HarmonicParams> startParams,
      ArrayList<HarmonicParams> endParams,
      int duration) {
    mStartParams = startParams;
    mEndParams = endParams;


  }

  public void setup(int tickIndex) {

  }
  public void tick(int tickIndex) {

  }
  public bool done() {

  }
}

void setParams(ArrayList<HarmonicParams> params, FSCurve curve) {
  for (HarmonicParams p : params) {
    Harmonic h = curve.getHarmonic(p.index);
    h.r = p.r;
    h.alpha = p.alpha;
  }
}

FSCurve curve = new FSCurve(200);
FSCurvePrecalc precalc = new FSCurvePrecalc();
FSCurveRenderer renderer = new FSCurveRenderer();
int gSampleCount = 1000;

void DrivePrecalc() {
  while(!precalc.done())
    precalc.calcNextSample();
}

void setup() {
  setParams(TrebleClef, curve);
  precalc.startPrecalc(curve, gSampleCount);
  DrivePrecalc();
  curve.setPath(precalc.getPath(), precalc.getTimeDelta());
  renderer.SwapCurve(curve);
  curve = new FSCurve(200);

  size(1000, 1000, P2D);
  background(0);
  smooth(8);

  // noLoop();
}


int tickIndex = 0;
void draw() {
  renderer.draw(tickIndex);
  tickIndex++;
  // if (frameCount % 50 == 0) println(frameRate);
}

void keyPressed() {
  if (key != CODED)
    return;
  if (keyCode == LEFT) {
    println(blendRatio);
  }
  if (keyCode == RIGHT) {
    println(blendRatio);
  }
  if (keyCode == DOWN) {
    println(blendRatio);
  }
  if (keyCode == UP) {
    println(blendRatio);
  }
  // populatePath(0.01, maxHarmonic);
}
