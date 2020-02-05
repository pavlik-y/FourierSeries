class FSCurveRenderer {
  private FSCurve mCurve;
  private PVector mTempPoint = new PVector();
  private PVector mPointAccumulator = new PVector();

  public FSCurve SwapCurve(FSCurve curve) {
    FSCurve oldCurve = mCurve;
    mCurve = curve;
    return oldCurve;
  }

  private void drawPath() {
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

  private void drawVectorChain(int tickIndex) {
    float t = mCurve.getTimeDelta() * ((float)tickIndex);

    beginShape();
    vertex(0, 0);
    mPointAccumulator.set(0, 0);
    for (Harmonic h : mCurve.getHarmonics()) {
      h.calcValue(t, mTempPoint);
      mPointAccumulator.add(mTempPoint);
      vertex(mPointAccumulator.x, mPointAccumulator.y);
    }
    endShape();
  }

  public void draw(int tickIndex) {
    clear();

    translate(500, 500);
    scale(1, -1);

    noFill();
    strokeWeight(1.5);
    stroke(255, 255, 0);
    drawPath();
    strokeWeight(1.5);
    stroke(255);
    drawVectorChain(tickIndex);
  }
}
