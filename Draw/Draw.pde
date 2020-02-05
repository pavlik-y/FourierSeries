class CurveAnimator {
  private ArrayList<HarmonicParams> mStartParams;
  private ArrayList<HarmonicParams> mEndParams;
  private int mDuration;
  private int mStartTime;
  private float mTransitionRatio;
  private int mHarmonicRangeLow;
  private int mHarmonicRangeHigh;

  public CurveAnimator(
      ArrayList<HarmonicParams> startParams,
      ArrayList<HarmonicParams> endParams,
      int harmonicRangeLow,
      int harmonicRangeHigh,
      int duration) {
    mStartParams = startParams;
    mEndParams = endParams;
    mDuration = duration;
    mTransitionRatio = 0;
    mHarmonicRangeLow = harmonicRangeLow;
    mHarmonicRangeHigh = harmonicRangeHigh;
  }

  public void setup(int tickIndex) {
    mStartTime = tickIndex;
  }

  private void ApplyTransition() {
    for (HarmonicParams s : mStartParams) {
      if (abs(s.index) < mHarmonicRangeLow) {
        continue;
      }
      Harmonic h = curve.getHarmonic(s.index);
      if (abs(s.index) < mHarmonicRangeHigh) {
        h.r = s.r * (1.0 - mTransitionRatio);
        h.alpha = s.alpha * (1.0 - mTransitionRatio);
      } else {
        h.r = s.r;
        h.alpha = s.alpha;
      }
    }
    for (HarmonicParams e : mEndParams) {
      if (abs(e.index) >= mHarmonicRangeHigh)
        continue;
      Harmonic h = curve.getHarmonic(e.index);
      if (abs(e.index) < mHarmonicRangeLow) {
        h.r = e.r;
        h.alpha = e.alpha;
      } else {
        h.r += e.r * mTransitionRatio;
        h.alpha += e.alpha * mTransitionRatio;
      }
    }
    precalc.startPrecalc(curve, gSampleCount);
    DrivePrecalc(gBatchSize);
    curve.setPath(precalc.getPath(), precalc.getTimeDelta());
    curve = renderer.SwapCurve(curve);
  }

  public void tick(int tickIndex) {
    mTransitionRatio = (float)(tickIndex - mStartTime) / (float)mDuration;
    if (tickIndex % 3 == 0) {
      ApplyTransition();
    }
    if (tickIndex % 50 == 0)
      println(mTransitionRatio);
  }

  public boolean done() {
    return mTransitionRatio >= 1.0;
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
int gBatchSize = 250;

void DrivePrecalc(int batchSize) {
  while(!precalc.done())
    precalc.calcNextSample();
}

CurveAnimator animator = new CurveAnimator(Zero, MajorChord, 0, 1000, 200);

void setup() {
  setParams(Zero, curve);
  precalc.startPrecalc(curve, gSampleCount);
  DrivePrecalc(gSampleCount);
  curve.setPath(precalc.getPath(), precalc.getTimeDelta());
  renderer.SwapCurve(curve);
  curve = new FSCurve(200);

  size(1000, 1000, P2D);
  background(0);
  smooth(8);

  animator.setup(0);

  // noLoop();
}


int tickIndex = 0;
void draw() {
  if (!animator.done())
    animator.tick(tickIndex);
  renderer.draw(tickIndex);
  tickIndex++;
  // if (frameCount % 50 == 0) println(frameRate);
}

void keyPressed() {
  if (key != CODED)
    return;
  if (keyCode == LEFT) {
    // println(blendRatio);
  }
  if (keyCode == RIGHT) {
    // println(blendRatio);
  }
  if (keyCode == DOWN) {
    // println(blendRatio);
  }
  if (keyCode == UP) {
    // println(blendRatio);
  }
  // populatePath(0.01, maxHarmonic);
}
