import java.util.List;

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
}

static class FourierSeries {
  // private final PVector mValue = new PVector();
  private final ArrayList<Harmonic> mHarmonics = new ArrayList<Harmonic>();

  public void setHarmonic(int harmonicIndex, float r, float alpha) {
    for (Harmonic h : mHarmonics) {
      assert(h.index != harmonicIndex);
    }
    Harmonic h = new Harmonic(harmonicIndex);
    h.r = r;
    h.alpha = alpha;
    mHarmonics.add(h);
  }

  public void calcValue(float t) {
    for (Harmonic h : mHarmonics) {
      h.calcValue(t);
    }
  }

  public void getValue(int maxHarmonic, PVector outValue) {
    outValue.set(0.0, 0.0);
    for (int i = 0; i < maxHarmonic && i < mHarmonics.size(); i++) {
      Harmonic h = mHarmonics.get(i);
      outValue.add(h.value);
    }
  }

  public ArrayList<Harmonic> getHarmonics() {
    return mHarmonics;
  }
}

FourierSeries fs = new FourierSeries();

ArrayList<PVector> fsPath;

void populatePath(float step, int maxHarmonic) {
  fsPath = new ArrayList<PVector>();
  for (float t = 0; t <= TWO_PI; t += step) {
    fs.calcValue(t);
    PVector p = new PVector();
    fs.getValue(maxHarmonic, p);
    fsPath.add(p);
  }
}

void drawPath() {
  PVector start = null;
  for (PVector p : fsPath) {
    if (start != null) {
      line(start.x, start.y, p.x, p.y);
    }
    start = p;
  }
}

void setup() {
  // size(640, 360, P2D);
  size(1000, 1000, P2D);
  background(0);
  smooth(8);

  // noLoop();
  fs.setHarmonic(0, 11.219076, -1.570797);
  fs.setHarmonic(1, 241.829284, -1.570796);
  fs.setHarmonic(-1, 18.299421, 1.570796);
  fs.setHarmonic(2, 28.505397, -1.570797);
  fs.setHarmonic(-2, 45.613548, -1.570798);
  fs.setHarmonic(3, 15.890958, 1.570799);
  fs.setHarmonic(-3, 17.359094, 1.570794);
  fs.setHarmonic(4, 38.473332, -1.570796);
  fs.setHarmonic(-4, 1.812366, 1.570788);
  fs.setHarmonic(5, 9.183512, 1.570795);
  fs.setHarmonic(-5, 2.687330, 1.570792);
  fs.setHarmonic(6, 20.176094, 1.570794);
  fs.setHarmonic(-6, 5.021383, -1.570805);
  fs.setHarmonic(7, 15.399178, -1.570801);
  fs.setHarmonic(-7, 1.590416, -1.570809);
  fs.setHarmonic(8, 1.257349, 1.570793);
  fs.setHarmonic(-8, 3.702488, 1.570782);
  fs.setHarmonic(9, 1.341533, -1.570798);
  fs.setHarmonic(-9, 0.372146, -1.570802);
  fs.setHarmonic(10, 5.060513, 1.570786);
  fs.setHarmonic(-10, 0.446615, 1.570787);
  fs.setHarmonic(11, 1.264946, -1.570812);
  fs.setHarmonic(-11, 2.742414, -1.570820);
  fs.setHarmonic(12, 2.319178, -1.570815);
  fs.setHarmonic(-12, 1.701964, 1.570770);
  fs.setHarmonic(13, 0.514147, 1.570772);
  fs.setHarmonic(-13, 0.255384, 1.570735);
  fs.setHarmonic(14, 0.380053, 1.570755);
  fs.setHarmonic(-14, 0.390953, 1.570765);
  fs.setHarmonic(15, 1.734300, 1.570770);
  fs.setHarmonic(-15, 0.972558, -1.570841);
  fs.setHarmonic(16, 1.978430, -1.570830);
  fs.setHarmonic(-16, 0.362797, -1.570850);
  fs.setHarmonic(17, 0.219450, 1.570778);
  fs.setHarmonic(-17, 0.965665, 1.570741);
  fs.setHarmonic(18, 0.219220, -1.570806);
  fs.setHarmonic(-18, 0.118511, -1.570814);
  fs.setHarmonic(19, 1.115403, 1.570748);
  fs.setHarmonic(-19, 0.135135, 1.570766);
  fs.setHarmonic(20, 0.322367, -1.570857);
  fs.setHarmonic(-20, 0.911034, -1.570869);
  fs.setHarmonic(21, 0.665674, -1.570861);
  fs.setHarmonic(-21, 0.608419, 1.570722);
  fs.setHarmonic(22, 0.175870, 1.570726);
  fs.setHarmonic(-22, 0.098116, 1.570638);
  fs.setHarmonic(23, 0.123169, 1.570670);
  fs.setHarmonic(-23, 0.149213, 1.570713);
  fs.setHarmonic(24, 0.612427, 1.570722);
  fs.setHarmonic(-24, 0.402255, -1.570904);
  fs.setHarmonic(25, 0.747118, -1.570885);
  fs.setHarmonic(-25, 0.157447, -1.570921);
  fs.setHarmonic(26, 0.088566, 1.570750);
  fs.setHarmonic(-26, 0.437585, 1.570674);
  fs.setHarmonic(27, 0.086420, -1.570820);
  fs.setHarmonic(-27, 0.057575, -1.570832);
  fs.setHarmonic(28, 0.479250, 1.570684);
  fs.setHarmonic(-28, 0.064429, 1.570733);
  fs.setHarmonic(29, 0.144861, -1.570932);
  fs.setHarmonic(-29, 0.450788, -1.570943);
  fs.setHarmonic(30, 0.311473, -1.570935);
  fs.setHarmonic(-30, 0.310291, 1.570651);
  fs.setHarmonic(31, 0.087578, 1.570655);
  fs.setHarmonic(-31, 0.051658, 1.570495);
  fs.setHarmonic(32, 0.060266, 1.570538);
  fs.setHarmonic(-32, 0.078139, 1.570638);
  fs.setHarmonic(33, 0.310469, 1.570651);
  fs.setHarmonic(-33, 0.218870, -1.570993);
  fs.setHarmonic(34, 0.389709, -1.570966);
  fs.setHarmonic(-34, 0.087679, -1.571020);
  fs.setHarmonic(35, 0.047604, 1.570711);
  fs.setHarmonic(-35, 0.248958, 1.570581);
  fs.setHarmonic(36, 0.045925, -1.570842);
  fs.setHarmonic(-36, 0.033930, -1.570858);
  fs.setHarmonic(37, 0.265298, 1.570594);
  fs.setHarmonic(-37, 0.037605, 1.570688);
  fs.setHarmonic(38, 0.081972, -1.571036);
  fs.setHarmonic(-38, 0.268479, -1.571042);
  fs.setHarmonic(39, 0.179912, -1.571036);
  fs.setHarmonic(-39, 0.187880, 1.570556);
  fs.setHarmonic(40, 0.052236, 1.570559);
  fs.setHarmonic(-40, 0.031856, 1.570308);
  fs.setHarmonic(41, 0.035626, 1.570360);
  fs.setHarmonic(-41, 0.047993, 1.570538);
  fs.setHarmonic(42, 0.187193, 1.570555);
  fs.setHarmonic(-42, 0.137483, -1.571110);
  fs.setHarmonic(43, 0.238715, -1.571073);
  fs.setHarmonic(-43, 0.055835, -1.571148);
  fs.setHarmonic(44, 0.029669, 1.570659);
  fs.setHarmonic(-44, 0.160580, 1.570462);
  fs.setHarmonic(45, 0.028433, -1.570869);
  fs.setHarmonic(-45, 0.022351, -1.570889);
  fs.setHarmonic(46, 0.168182, 1.570477);
  fs.setHarmonic(-46, 0.024628, 1.570631);
  fs.setHarmonic(47, 0.052646, -1.571169);
  fs.setHarmonic(-47, 0.178106, -1.571167);
  fs.setHarmonic(48, 0.117001, -1.571165);
  fs.setHarmonic(-48, 0.125942, 1.570437);
  fs.setHarmonic(49, 0.034644, 1.570439);
  fs.setHarmonic(-49, 0.021613, 1.570077);
  fs.setHarmonic(50, 0.023494, 1.570134);
  fs.setHarmonic(-50, 0.032459, 1.570415);
  fs.setHarmonic(51, 0.125043, 1.570435);
  fs.setHarmonic(-51, 0.094371, -1.571254);
  fs.setHarmonic(52, 0.161070, -1.571207);
  fs.setHarmonic(-52, 0.038675, -1.571304);
  fs.setHarmonic(53, 0.020248, 1.570595);
  fs.setHarmonic(-53, 0.112177, 1.570318);
  fs.setHarmonic(54, 0.019322, -1.570904);
  fs.setHarmonic(-54, 0.015832, -1.570928);
  fs.setHarmonic(55, 0.116046, 1.570334);
  fs.setHarmonic(-55, 0.017378, 1.570561);
  fs.setHarmonic(56, 0.036640, -1.571332);
  fs.setHarmonic(-56, 0.126809, -1.571317);
  fs.setHarmonic(57, 0.082117, -1.571322);
  fs.setHarmonic(-57, 0.090311, 1.570295);
  fs.setHarmonic(58, 0.024640, 1.570294);
  fs.setHarmonic(-58, 0.015634, 1.569801);
  fs.setHarmonic(59, 0.016642, 1.569862);
  fs.setHarmonic(-59, 0.023418, 1.570267);
  fs.setHarmonic(60, 0.089389, 1.570290);
  fs.setHarmonic(-60, 0.068805, -1.571424);
  fs.setHarmonic(61, 0.115945, -1.571366);
  fs.setHarmonic(-61, 0.028381, -1.571488);
  fs.setHarmonic(62, 0.014695, 1.570518);
  fs.setHarmonic(-62, 0.082815, 1.570148);
  fs.setHarmonic(63, 0.013981, -1.570945);
  fs.setHarmonic(-63, 0.011802, -1.570972);
  fs.setHarmonic(64, 0.084861, 1.570164);
  fs.setHarmonic(-64, 0.012920, 1.570480);
  fs.setHarmonic(65, 0.026958, -1.571525);
  fs.setHarmonic(-65, 0.094911, -1.571493);
  fs.setHarmonic(66, 0.060784, -1.571506);
  fs.setHarmonic(-66, 0.067947, 1.570131);
  fs.setHarmonic(67, 0.018415, 1.570124);
  fs.setHarmonic(-67, 0.011841, 1.569483);
  fs.setHarmonic(68, 0.012398, 1.569542);
  fs.setHarmonic(-68, 0.017697, 1.570096);
  fs.setHarmonic(69, 0.067060, 1.570122);
  fs.setHarmonic(-69, 0.052407, -1.571620);
  fs.setHarmonic(70, 0.087426, -1.571552);
  fs.setHarmonic(-70, 0.021722, -1.571700);
  fs.setHarmonic(71, 0.011149, 1.570430);
  fs.setHarmonic(-71, 0.063669, 1.569953);
  fs.setHarmonic(72, 0.010585, -1.570993);
  fs.setHarmonic(-72, 0.009138, -1.571024);
  fs.setHarmonic(73, 0.064739, 1.569967);
  fs.setHarmonic(-73, 0.009984, 1.570387);
  fs.setHarmonic(74, 0.020659, -1.571747);
  fs.setHarmonic(-74, 0.073731, -1.571693);
  fs.setHarmonic(75, 0.046796, -1.571718);
  fs.setHarmonic(-75, 0.052993, 1.569943);
  fs.setHarmonic(76, 0.014281, 1.569929);
  fs.setHarmonic(-76, 0.009284, 1.569121);
  fs.setHarmonic(77, 0.009590, 1.569174);
  fs.setHarmonic(-77, 0.013849, 1.569902);
  fs.setHarmonic(78, 0.052159, 1.569929);
  fs.setHarmonic(-78, 0.041263, -1.571842);
  fs.setHarmonic(79, 0.068262, -1.571764);
  fs.setHarmonic(-79, 0.017167, -1.571940);
  fs.setHarmonic(80, 0.008748, 1.570330);
  fs.setHarmonic(-80, 0.050494, 1.569733);
  fs.setHarmonic(81, 0.008292, -1.571047);
  fs.setHarmonic(-81, 0.007286, -1.571082);
  fs.setHarmonic(82, 0.051007, 1.569744);
  fs.setHarmonic(-82, 0.007949, 1.570283);
  fs.setHarmonic(83, 0.016334, -1.571999);
  fs.setHarmonic(-83, 0.058950, -1.571917);
  fs.setHarmonic(84, 0.037132, -1.571958);
  fs.setHarmonic(-84, 0.042501, 1.569732);
  fs.setHarmonic(85, 0.011396, 1.569709);
  fs.setHarmonic(-85, 0.007479, 1.568717);
  fs.setHarmonic(86, 0.007636, 1.568759);
  fs.setHarmonic(-86, 0.011137, 1.569684);
  fs.setHarmonic(87, 0.041724, 1.569712);
  fs.setHarmonic(-87, 0.033345, -1.572090);
  fs.setHarmonic(88, 0.054771, -1.572003);
  fs.setHarmonic(-88, 0.013915, -1.572208);
  fs.setHarmonic(89, 0.007048, 1.570217);
  fs.setHarmonic(-89, 0.041040, 1.569488);
  fs.setHarmonic(90, 0.006672, -1.571108);
  fs.setHarmonic(-90, 0.005946, -1.571146);
  fs.setHarmonic(91, 0.041220, 1.569494);
  fs.setHarmonic(-91, 0.006480, 1.570166);
  fs.setHarmonic(92, 0.013237, -1.572280);
  fs.setHarmonic(-92, 0.048228, -1.572167);
  fs.setHarmonic(93, 0.030178, -1.572226);
  fs.setHarmonic(-93, 0.034857, 1.569499);
  fs.setHarmonic(94, 0.009305, 1.569465);
  fs.setHarmonic(-94, 0.006157, 1.568270);
  fs.setHarmonic(95, 0.006222, 1.568297);
  fs.setHarmonic(-95, 0.009153, 1.569443);
  fs.setHarmonic(96, 0.034133, 1.569471);
  fs.setHarmonic(-96, 0.027517, -1.572365);
  fs.setHarmonic(97, 0.044916, -1.572268);
  fs.setHarmonic(-97, 0.011511, -1.572502);
  fs.setHarmonic(98, 0.005799, 1.570092);
  fs.setHarmonic(-98, 0.034027, 1.569218);
  fs.setHarmonic(99, 0.005485, -1.571175);
  fs.setHarmonic(-99, 0.004946, -1.571217);
  fs.setHarmonic(100, 0.034002, 1.569217);
  fs.setHarmonic(-100, 0.005385, 1.570038);
  fs.setHarmonic(101, 0.010943, -1.572591);
  fs.setHarmonic(-101, 0.040201, -1.572440);
  fs.setHarmonic(102, 0.025009, -1.572522);
  fs.setHarmonic(-102, 0.029115, 1.569243);
  fs.setHarmonic(103, 0.007741, 1.569196);
  fs.setHarmonic(-103, 0.005160, 1.567782);
  fs.setHarmonic(104, 0.005167, 1.567786);
  fs.setHarmonic(-104, 0.007659, 1.569179);
  fs.setHarmonic(105, 0.028440, 1.569206);
  fs.setHarmonic(-105, 0.023102, -1.572664);
  fs.setHarmonic(106, 0.037500, -1.572558);
  fs.setHarmonic(-106, 0.009685, -1.572824);
  fs.setHarmonic(107, 0.004856, 1.569955);
  fs.setHarmonic(-107, 0.028681, 1.568924);
  fs.setHarmonic(108, 0.004589, -1.571249);
  fs.setHarmonic(-108, 0.004180, -1.571294);
  fs.setHarmonic(109, 0.028526, 1.568914);
  fs.setHarmonic(-109, 0.004547, 1.569898);
  fs.setHarmonic(110, 0.009198, -1.572931);
  fs.setHarmonic(-110, 0.034037, -1.572738);
  fs.setHarmonic(111, 0.021063, -1.572845);
  fs.setHarmonic(-111, 0.024693, 1.568965);
  fs.setHarmonic(112, 0.006540, 1.568902);
  fs.setHarmonic(-112, 0.004389, 1.567253);
  fs.setHarmonic(113, 0.004358, 1.567227);
  fs.setHarmonic(-113, 0.006505, 1.568892);
  fs.setHarmonic(114, 0.024062, 1.568917);
  fs.setHarmonic(-114, 0.019679, -1.572989);
  fs.setHarmonic(115, 0.031781, -1.572876);
  fs.setHarmonic(-115, 0.008264, -1.573173);
  fs.setHarmonic(116, 0.004126, 1.569807);
  fs.setHarmonic(-116, 0.024511, 1.568606);
  fs.setHarmonic(117, 0.003897, -1.571330);
  fs.setHarmonic(-117, 0.003579, -1.571377);
  fs.setHarmonic(118, 0.024274, 1.568584);
  fs.setHarmonic(-118, 0.003892, 1.569747);
  fs.setHarmonic(119, 0.007839, -1.573301);
  fs.setHarmonic(-119, 0.029200, -1.573059);
  fs.setHarmonic(120, 0.017982, -1.573196);
  fs.setHarmonic(-120, 0.021214, 1.568664);
  fs.setHarmonic(121, 0.005599, 1.568584);
  fs.setHarmonic(-121, 0.003781, 1.566682);
  fs.setHarmonic(122, 0.003725, 1.566621);
  fs.setHarmonic(-122, 0.005596, 1.568583);
  fs.setHarmonic(123, 0.020624, 1.568603);
  fs.setHarmonic(-123, 0.016970, -1.573339);
  fs.setHarmonic(124, 0.027277, -1.573219);
  fs.setHarmonic(-124, 0.007137, -1.573548);
  fs.setHarmonic(125, 0.003549, 1.569646);
  fs.setHarmonic(-125, 0.021197, 1.568263);
  fs.setHarmonic(126, 0.003351, -1.571417);
  fs.setHarmonic(-126, 0.003100, -1.571467);
  fs.setHarmonic(127, 0.020907, 1.568228);
  fs.setHarmonic(-127, 0.003370, 1.569584);
  fs.setHarmonic(128, 0.006761, -1.573701);
  fs.setHarmonic(-128, 0.025335, -1.573405);
  fs.setHarmonic(129, 0.015531, -1.573575);
  fs.setHarmonic(-129, 0.018429, 1.568342);
  fs.setHarmonic(130, 0.004847, 1.568241);
  fs.setHarmonic(-130, 0.003292, 1.566072);
  fs.setHarmonic(131, 0.003220, 1.565966);
  fs.setHarmonic(-131, 0.004866, 1.568251);
  fs.setHarmonic(132, 0.017874, 1.568266);
  fs.setHarmonic(-132, 0.014789, -1.573714);
  fs.setHarmonic(133, 0.023669, -1.573588);
  fs.setHarmonic(-133, 0.006229, -1.573949);
  fs.setHarmonic(134, 0.003086, 1.569473);
  fs.setHarmonic(-134, 0.018519, 1.567897);
  fs.setHarmonic(135, 0.002912, -1.571510);
  fs.setHarmonic(-135, 0.002712, -1.571563);
  fs.setHarmonic(136, 0.018196, 1.567846);
  fs.setHarmonic(-136, 0.002947, 1.569410);
  fs.setHarmonic(137, 0.005890, -1.574130);
  fs.setHarmonic(-137, 0.022197, -1.573773);
  fs.setHarmonic(138, 0.013550, -1.573981);
  fs.setHarmonic(-138, 0.016163, 1.567998);
  fs.setHarmonic(139, 0.004238, 1.567873);
  fs.setHarmonic(-139, 0.002894, 1.565421);
  fs.setHarmonic(140, 0.002811, 1.565264);
  fs.setHarmonic(-140, 0.004272, 1.567897);
  fs.setHarmonic(141, 0.015640, 1.567904);
  fs.setHarmonic(-141, 0.013008, -1.574114);
  fs.setHarmonic(142, 0.020733, -1.573984);
  fs.setHarmonic(-142, 0.005485, -1.574377);
  fs.setHarmonic(143, 0.002708, 1.569289);
  fs.setHarmonic(-143, 0.016323, 1.567507);
  fs.setHarmonic(144, 0.002555, -1.571610);
  fs.setHarmonic(-144, 0.002393, -1.571665);
  fs.setHarmonic(145, 0.015981, 1.567437);
  fs.setHarmonic(-145, 0.002599, 1.569225);
  fs.setHarmonic(146, 0.005178, -1.574589);
  fs.setHarmonic(-146, 0.019614, -1.574165);
  fs.setHarmonic(147, 0.011926, -1.574415);
  fs.setHarmonic(-147, 0.014296, 1.567632);
  fs.setHarmonic(148, 0.003737, 1.567481);
  fs.setHarmonic(-148, 0.002565, 1.564731);
  fs.setHarmonic(149, 0.002476, 1.564513);
  fs.setHarmonic(-149, 0.003782, 1.567521);
  fs.setHarmonic(150, 0.013802, 1.567519);
  fs.setHarmonic(-150, 0.011534, -1.574538);
  fs.setHarmonic(151, 0.018312, -1.574405);
  fs.setHarmonic(-151, 0.004869, -1.574830);
  fs.setHarmonic(152, 0.002396, 1.569092);
  fs.setHarmonic(-152, 0.014501, 1.567094);
  fs.setHarmonic(153, 0.002260, -1.571716);
  fs.setHarmonic(-153, 0.002128, -1.571773);
  fs.setHarmonic(154, 0.014149, 1.567001);
  fs.setHarmonic(-154, 0.002311, 1.569029);
  fs.setHarmonic(155, 0.004588, -1.575076);
  fs.setHarmonic(-155, 0.017463, -1.574580);
  fs.setHarmonic(156, 0.010578, -1.574876);
  fs.setHarmonic(-156, 0.012738, 1.567245);
  fs.setHarmonic(157, 0.003320, 1.567065);
  fs.setHarmonic(-157, 0.002289, 1.564003);
  fs.setHarmonic(158, 0.002196, 1.563715);
  fs.setHarmonic(-158, 0.003372, 1.567123);
  fs.setHarmonic(159, 0.012271, 1.567110);
  fs.setHarmonic(-159, 0.010301, -1.574986);
  fs.setHarmonic(160, 0.016294, -1.574852);
  fs.setHarmonic(-160, 0.004352, -1.575309);
  fs.setHarmonic(161, 0.002136, 1.568884);
  fs.setHarmonic(-161, 0.012972, 1.566657);
  fs.setHarmonic(162, 0.002014, -1.571829);
  fs.setHarmonic(-162, 0.001905, -1.571888);
  fs.setHarmonic(163, 0.012615, 1.566540);
  fs.setHarmonic(-163, 0.002068, 1.568821);
  fs.setHarmonic(164, 0.004094, -1.575593);
  fs.setHarmonic(-164, 0.015652, -1.575018);
  fs.setHarmonic(165, 0.009447, -1.575364);
  fs.setHarmonic(-165, 0.011426, 1.566837);
  fs.setHarmonic(166, 0.002969, 1.566624);
  fs.setHarmonic(-166, 0.002057, 1.563236);
  fs.setHarmonic(167, 0.001962, 1.562869);
  fs.setHarmonic(-167, 0.003027, 1.566704);
  fs.setHarmonic(168, 0.010982, 1.566678);
  fs.setHarmonic(-168, 0.009258, -1.575457);
  fs.setHarmonic(169, 0.014593, -1.575325);
  fs.setHarmonic(-169, 0.003915, -1.575813);
  fs.setHarmonic(170, 0.001916, 1.568664);
  fs.setHarmonic(-170, 0.011676, 1.566198);
  fs.setHarmonic(171, 0.001806, -1.571947);
  fs.setHarmonic(-171, 0.001715, -1.572008);
  fs.setHarmonic(172, 0.011319, 1.566053);
  fs.setHarmonic(-172, 0.001862, 1.568603);
  fs.setHarmonic(173, 0.003676, -1.576139);
  fs.setHarmonic(-173, 0.014114, -1.575478);
  fs.setHarmonic(174, 0.008489, -1.575880);
  fs.setHarmonic(-174, 0.010309, 1.566409);
  fs.setHarmonic(175, 0.002672, 1.566160);
  fs.setHarmonic(-175, 0.001859, 1.562431);
  fs.setHarmonic(176, 0.001763, 1.561975);
  fs.setHarmonic(-176, 0.002733, 1.566263);
  fs.setHarmonic(177, 0.009887, 1.566221);
  fs.setHarmonic(-177, 0.008369, -1.575953);
  fs.setHarmonic(178, 0.013146, -1.575823);
  fs.setHarmonic(-178, 0.003541, -1.576341);
  fs.setHarmonic(179, 0.001728, 1.568433);
  fs.setHarmonic(-179, 0.010569, 1.565716);
  fs.setHarmonic(180, 0.001629, -1.572072);
  fs.setHarmonic(-180, 0.001553, -1.572135);
  fs.setHarmonic(181, 0.010214, 1.565539);
  fs.setHarmonic(-181, 0.001686, 1.568374);
  fs.setHarmonic(182, 0.003319, -1.576714);
  fs.setHarmonic(-182, 0.012795, -1.575961);
  fs.setHarmonic(183, 0.007670, -1.576422);
  fs.setHarmonic(-183, 0.009351, 1.565959);
  fs.setHarmonic(184, 0.002417, 1.565671);
  fs.setHarmonic(-184, 0.001689, 1.561589);
  fs.setHarmonic(185, 0.001593, 1.561033);
  fs.setHarmonic(-185, 0.002480, 1.565801);
  fs.setHarmonic(186, 0.008949, 1.565742);
  fs.setHarmonic(-186, 0.007604, -1.576471);
  fs.setHarmonic(187, 0.011905, -1.576347);
  fs.setHarmonic(-187, 0.003220, -1.576895);
  fs.setHarmonic(188, 0.001567, 1.568190);
  fs.setHarmonic(-188, 0.009615, 1.565212);
  fs.setHarmonic(189, 0.001477, -1.572204);
  fs.setHarmonic(-189, 0.001413, -1.572267);
  fs.setHarmonic(190, 0.009264, 1.565000);
  fs.setHarmonic(-190, 0.001534, 1.568134);
  fs.setHarmonic(191, 0.003012, -1.577317);
  fs.setHarmonic(-191, 0.011657, -1.576465);
  fs.setHarmonic(192, 0.006965, -1.576992);
  fs.setHarmonic(-192, 0.008523, 1.565490);
  fs.setHarmonic(193, 0.002197, 1.565159);
  fs.setHarmonic(-193, 0.001542, 1.560710);
  fs.setHarmonic(194, 0.001447, 1.560045);
  fs.setHarmonic(-194, 0.002262, 1.565319);
  fs.setHarmonic(195, 0.008140, 1.565239);
  fs.setHarmonic(-195, 0.006942, -1.577013);
  fs.setHarmonic(196, 0.010834, -1.576896);
  fs.setHarmonic(-196, 0.002941, -1.577472);
  fs.setHarmonic(197, 0.001428, 1.567936);
  fs.setHarmonic(-197, 0.008787, 1.564686);
  fs.setHarmonic(198, 0.001346, -1.572341);
  fs.setHarmonic(-198, 0.001292, -1.572405);
  fs.setHarmonic(199, 0.008442, 1.564436);
  fs.setHarmonic(-199, 0.001402, 1.567884);
  populatePath(0.01, maxHarmonic);
}

float t = 0.0;

PVector tempLS = new PVector();
PVector tempLE = new PVector();
int maxHarmonic = 0;

void drawVectorChain() {
  tempLS.set(0, 0);
  tempLE.set(0, 0);
  int i = 0;
  for (Harmonic h : fs.getHarmonics()) {
    if (i >= maxHarmonic) break;
    i++;
    tempLE.add(h.value);
    line(tempLS.x, tempLS.y, tempLE.x, tempLE.y);
    tempLS.set(tempLE);
  }
}

void draw() {
  clear();

  translate(500, 500);
  scale(1, -1);

  noFill();
  fs.calcValue(t);
  strokeWeight(1.5);
  stroke(255, 255, 0);
  drawPath();
  strokeWeight(1.5);
  stroke(255);
  drawVectorChain();
    // ellipse(fs.mValue.x, fs.mValue.y, 20, 20);
    t += 0.01;


  // fill(255);
  // beginShape();
  // noFill();
  // for (float t = 0.0; t <= TWO_PI; t += 0.01) {
  // }
  // endShape();
  if (frameCount % 50 == 0) println(frameRate);
}

void keyPressed() {
  if (key != CODED)
    return;
  if (keyCode == LEFT) {
    maxHarmonic--;
    println(maxHarmonic);
  }
  if (keyCode == RIGHT) {
    maxHarmonic++;
    println(maxHarmonic);
  }
  populatePath(0.01, maxHarmonic);
}