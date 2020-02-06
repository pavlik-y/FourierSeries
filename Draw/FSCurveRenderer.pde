class FSCurveRenderer {
  private FSCurve mCurve;
  private PVector mTempPoint = new PVector();
  private PVector mPointAccumulator = new PVector();
  private int mHighlightedHarmonic = Integer.MIN_VALUE;
  private int mSampleCountTotal = 0;
  private int mSampleCountDrawn = 0;

  public FSCurve swapCurve(FSCurve curve) {
    FSCurve oldCurve = mCurve;
    mCurve = curve;
    return oldCurve;
  }

  public void setHighlightedHarmonic(int highlightedHarmonic) {
    mHighlightedHarmonic = highlightedHarmonic;
  }

  private void drawPath() {
    strokeWeight(1.5);
    stroke(255, 255, 0);
    beginShape();

    PVector start = null;
    for (PVector p : mCurve.getPath()) {
      if (start == null)
        start = p;
      vertex(p.x, p.y);
    }
    if (start != null)
      vertex(start.x, start.y);
    endShape();
  }

  private void drawSamples() {

  }


  private void drawVectorChain(int tickIndex) {
    float t = mCurve.getTimeDelta() * ((float)tickIndex);

    strokeWeight(1.5);
    stroke(255);
    beginShape();
    vertex(0, 0);
    mPointAccumulator.set(0, 0);
    for (Harmonic h : mCurve.getHarmonics()) {
      h.calcValue(t, mTempPoint);
      if (h.index != mHighlightedHarmonic) {
        mPointAccumulator.add(mTempPoint);
        vertex(mPointAccumulator.x, mPointAccumulator.y);
      } else {
        endShape();
        stroke(0, 255, 255);
        vertex(mPointAccumulator.x, mPointAccumulator.y);
        mPointAccumulator.add(mTempPoint);
        vertex(mPointAccumulator.x, mPointAccumulator.y);
        endShape();
        beginShape();
        stroke(255);
        vertex(mPointAccumulator.x, mPointAccumulator.y);
      }
    }
    endShape();
  }

  public void draw(int tickIndex) {
    clear();

    translate(500, 500);
    scale(1, -1);
    noFill();

    drawPath();
    drawVectorChain(tickIndex);
    drawSamples();
  }
}
