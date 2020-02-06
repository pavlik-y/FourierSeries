
static class Harmonic {
  public int index;
  public float r;
  public float alpha;
  public final float harmonicMultiplier;
  public final PVector value = new PVector();

  public Harmonic(int index) {
    this.index = index;
    this.harmonicMultiplier = float(index);
  }

  public void calcValue(float t) {
    value.set(r*cos(alpha + t * harmonicMultiplier),
              r*sin(alpha + t * harmonicMultiplier));
  }
  public void calcValue(float t, PVector value) {
    value.set(r*cos(alpha + t * harmonicMultiplier),
              r*sin(alpha + t * harmonicMultiplier));
  }

}

static class FSCurve {
  public FSCurve(int harmonicCount) {
    mHarmonics = new ArrayList<Harmonic>();
    mHarmonics.ensureCapacity(harmonicCount*2+1);
    mHarmonics.add(new Harmonic(0));
    for (int i = 1; i < harmonicCount; i++) {
      mHarmonics.add(new Harmonic(i));
      mHarmonics.add(new Harmonic(-i));
    }
  }

  private static int harmonicIndexToArrayPosition(int harmonicIndex) {
    if (harmonicIndex > 0)
      return harmonicIndex * 2 - 1;
    else
      return (-harmonicIndex) * 2;
  }

  public void setPath(ArrayList<PVector> path, float timeDelta) {
    mPath = path;
    mTimeDelta = timeDelta;
  }

  public ArrayList<PVector> getPath() {
    return mPath;
  }

  public float getTimeDelta() {
    return mTimeDelta;
  }

  public Harmonic getHarmonic(int harmonicIndex) {
    return mHarmonics.get(harmonicIndexToArrayPosition(harmonicIndex));
  }

  public ArrayList<Harmonic> getHarmonics() {
    return mHarmonics;
  }

  public void calcValue(float t, PVector outValue, PVector tempValue) {
    outValue.set(0, 0);
    for (Harmonic h : mHarmonics) {
      h.calcValue(t, tempValue);
      outValue.add(tempValue);
    }
  }

  ArrayList<PVector> mPath;
  ArrayList<Harmonic> mHarmonics;
  float mTimeDelta;
}

class FSCurvePrecalc {
  private FSCurve mCurve;
  private int mSampleCount;
  private int mNextSampleIndex;
  private float mTimeDelta;
  private ArrayList<PVector> mPath;
  private PVector mTempValue = new PVector();

  public void startPrecalc(FSCurve curve, int sampleCount) {
    mCurve = curve;
    mSampleCount = sampleCount;
    mNextSampleIndex = 0;
    mTimeDelta = TWO_PI / (float)sampleCount;
    mPath = new ArrayList<PVector>();
    mPath.ensureCapacity(mSampleCount);
  }

  public boolean done() {
    return mNextSampleIndex == mSampleCount;
  }

  public void calcNextSample() {
    float t = mTimeDelta * mNextSampleIndex;
    PVector sample = new PVector();
    mCurve.calcValue(t, sample, mTempValue);
    mPath.add(sample);
    mNextSampleIndex++;
  }
  public ArrayList<PVector> getPath() {
    return mPath;
  }
  public float getTimeDelta() {
    return mTimeDelta;
  }
}
