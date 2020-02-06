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
    mHarmonicRangeLow = min(mStartParams.size(), mHarmonicRangeLow);
    mHarmonicRangeHigh = harmonicRangeHigh;
    mHarmonicRangeHigh = min(mStartParams.size(), mHarmonicRangeHigh);
  }

  public void reset() {
    mTransitionRatio = 0;
    ApplyTransition();
  }

  public void start(int tickIndex) {
    mStartTime = tickIndex;
  }

  private void ApplyTransition() {
    for (int i = 0; i < mHarmonicRangeLow; i++) {
      HarmonicParams e = mEndParams.get(i);
      Harmonic h = curve.getHarmonic(e.index);
      h.r = e.r;
      h.alpha = e.alpha;
    }
    for (int i = mHarmonicRangeLow; i < mHarmonicRangeHigh; i++) {
      HarmonicParams s = mStartParams.get(i);
      HarmonicParams e = mEndParams.get(i);
      assert s.index == e.index;
      Harmonic h = curve.getHarmonic(s.index);
      h.r = s.r * (1.0 - mTransitionRatio) + e.r * mTransitionRatio;
      h.alpha = s.alpha * (1.0 - mTransitionRatio) + e.alpha * mTransitionRatio;
    }
    for (int i = mHarmonicRangeHigh; i < mStartParams.size(); i++) {
      HarmonicParams s = mStartParams.get(i);
      Harmonic h = curve.getHarmonic(s.index);
      h.r = s.r;
      h.alpha = s.alpha;
    }
    precalc.startPrecalc(curve, gSampleCount);
  }

  public void tick(int tickIndex) {
    mTransitionRatio = (float)(tickIndex - mStartTime) / (float)mDuration;
    if (precalc.done()) {
      ApplyTransition();
    }
    if (tickIndex % 50 == 0)
      println(mTransitionRatio);
  }

  public boolean done() {
    return mTransitionRatio >= 1.0;
  }
}
