import java.util.List;

static class HarmonicParams {
  final public int index;
  final public float r;
  final public float alpha;

  public HarmonicParams(int index, float r, float alpha) {
    this.index = index;
    this.r = r;
    this.alpha = alpha;
  }
}
static ArrayList<HarmonicParams> Mickey = new ArrayList<HarmonicParams>();
static ArrayList<HarmonicParams> TrebleClef = new ArrayList<HarmonicParams>();

static {
  Mickey.add(new HarmonicParams(0, 11.219076, -1.570797));
  Mickey.add(new HarmonicParams(1, 241.829284, -1.570796));
  Mickey.add(new HarmonicParams(-1, 18.299421, 1.570796));
  Mickey.add(new HarmonicParams(2, 28.505397, -1.570797));
  Mickey.add(new HarmonicParams(-2, 45.613548, -1.570798));
  Mickey.add(new HarmonicParams(3, 15.890958, 1.570799));
  Mickey.add(new HarmonicParams(-3, 17.359094, 1.570794));
  Mickey.add(new HarmonicParams(4, 38.473332, -1.570796));
  Mickey.add(new HarmonicParams(-4, 1.812366, 1.570788));
  Mickey.add(new HarmonicParams(5, 9.183512, 1.570795));
  Mickey.add(new HarmonicParams(-5, 2.687330, 1.570792));
  Mickey.add(new HarmonicParams(6, 20.176094, 1.570794));
  Mickey.add(new HarmonicParams(-6, 5.021383, -1.570805));
  Mickey.add(new HarmonicParams(7, 15.399178, -1.570801));
  Mickey.add(new HarmonicParams(-7, 1.590416, -1.570809));
  Mickey.add(new HarmonicParams(8, 1.257349, 1.570793));
  Mickey.add(new HarmonicParams(-8, 3.702488, 1.570782));
  Mickey.add(new HarmonicParams(9, 1.341533, -1.570798));
  Mickey.add(new HarmonicParams(-9, 0.372146, -1.570802));
  Mickey.add(new HarmonicParams(10, 5.060513, 1.570786));
  Mickey.add(new HarmonicParams(-10, 0.446615, 1.570787));
  Mickey.add(new HarmonicParams(11, 1.264946, -1.570812));
  Mickey.add(new HarmonicParams(-11, 2.742414, -1.570820));
  Mickey.add(new HarmonicParams(12, 2.319178, -1.570815));
  Mickey.add(new HarmonicParams(-12, 1.701964, 1.570770));
  Mickey.add(new HarmonicParams(13, 0.514147, 1.570772));
  Mickey.add(new HarmonicParams(-13, 0.255384, 1.570735));
  Mickey.add(new HarmonicParams(14, 0.380053, 1.570755));
  Mickey.add(new HarmonicParams(-14, 0.390953, 1.570765));
  Mickey.add(new HarmonicParams(15, 1.734300, 1.570770));
  Mickey.add(new HarmonicParams(-15, 0.972558, -1.570841));
  Mickey.add(new HarmonicParams(16, 1.978430, -1.570830));
  Mickey.add(new HarmonicParams(-16, 0.362797, -1.570850));
  Mickey.add(new HarmonicParams(17, 0.219450, 1.570778));
  Mickey.add(new HarmonicParams(-17, 0.965665, 1.570741));
  Mickey.add(new HarmonicParams(18, 0.219220, -1.570806));
  Mickey.add(new HarmonicParams(-18, 0.118511, -1.570814));
  Mickey.add(new HarmonicParams(19, 1.115403, 1.570748));
  Mickey.add(new HarmonicParams(-19, 0.135135, 1.570766));
  Mickey.add(new HarmonicParams(20, 0.322367, -1.570857));
  Mickey.add(new HarmonicParams(-20, 0.911034, -1.570869));
  Mickey.add(new HarmonicParams(21, 0.665674, -1.570861));
  Mickey.add(new HarmonicParams(-21, 0.608419, 1.570722));
  Mickey.add(new HarmonicParams(22, 0.175870, 1.570726));
  Mickey.add(new HarmonicParams(-22, 0.098116, 1.570638));
  Mickey.add(new HarmonicParams(23, 0.123169, 1.570670));
  Mickey.add(new HarmonicParams(-23, 0.149213, 1.570713));
  Mickey.add(new HarmonicParams(24, 0.612427, 1.570722));
  Mickey.add(new HarmonicParams(-24, 0.402255, -1.570904));
  Mickey.add(new HarmonicParams(25, 0.747118, -1.570885));
  Mickey.add(new HarmonicParams(-25, 0.157447, -1.570921));
  Mickey.add(new HarmonicParams(26, 0.088566, 1.570750));
  Mickey.add(new HarmonicParams(-26, 0.437585, 1.570674));
  Mickey.add(new HarmonicParams(27, 0.086420, -1.570820));
  Mickey.add(new HarmonicParams(-27, 0.057575, -1.570832));
  Mickey.add(new HarmonicParams(28, 0.479250, 1.570684));
  Mickey.add(new HarmonicParams(-28, 0.064429, 1.570733));
  Mickey.add(new HarmonicParams(29, 0.144861, -1.570932));
  Mickey.add(new HarmonicParams(-29, 0.450788, -1.570943));
  Mickey.add(new HarmonicParams(30, 0.311473, -1.570935));
  Mickey.add(new HarmonicParams(-30, 0.310291, 1.570651));
  Mickey.add(new HarmonicParams(31, 0.087578, 1.570655));
  Mickey.add(new HarmonicParams(-31, 0.051658, 1.570495));
  Mickey.add(new HarmonicParams(32, 0.060266, 1.570538));
  Mickey.add(new HarmonicParams(-32, 0.078139, 1.570638));
  Mickey.add(new HarmonicParams(33, 0.310469, 1.570651));
  Mickey.add(new HarmonicParams(-33, 0.218870, -1.570993));
  Mickey.add(new HarmonicParams(34, 0.389709, -1.570966));
  Mickey.add(new HarmonicParams(-34, 0.087679, -1.571020));
  Mickey.add(new HarmonicParams(35, 0.047604, 1.570711));
  Mickey.add(new HarmonicParams(-35, 0.248958, 1.570581));
  Mickey.add(new HarmonicParams(36, 0.045925, -1.570842));
  Mickey.add(new HarmonicParams(-36, 0.033930, -1.570858));
  Mickey.add(new HarmonicParams(37, 0.265298, 1.570594));
  Mickey.add(new HarmonicParams(-37, 0.037605, 1.570688));
  Mickey.add(new HarmonicParams(38, 0.081972, -1.571036));
  Mickey.add(new HarmonicParams(-38, 0.268479, -1.571042));
  Mickey.add(new HarmonicParams(39, 0.179912, -1.571036));
  Mickey.add(new HarmonicParams(-39, 0.187880, 1.570556));
  Mickey.add(new HarmonicParams(40, 0.052236, 1.570559));
  Mickey.add(new HarmonicParams(-40, 0.031856, 1.570308));
  Mickey.add(new HarmonicParams(41, 0.035626, 1.570360));
  Mickey.add(new HarmonicParams(-41, 0.047993, 1.570538));
  Mickey.add(new HarmonicParams(42, 0.187193, 1.570555));
  Mickey.add(new HarmonicParams(-42, 0.137483, -1.571110));
  Mickey.add(new HarmonicParams(43, 0.238715, -1.571073));
  Mickey.add(new HarmonicParams(-43, 0.055835, -1.571148));
  Mickey.add(new HarmonicParams(44, 0.029669, 1.570659));
  Mickey.add(new HarmonicParams(-44, 0.160580, 1.570462));
  Mickey.add(new HarmonicParams(45, 0.028433, -1.570869));
  Mickey.add(new HarmonicParams(-45, 0.022351, -1.570889));
  Mickey.add(new HarmonicParams(46, 0.168182, 1.570477));
  Mickey.add(new HarmonicParams(-46, 0.024628, 1.570631));
  Mickey.add(new HarmonicParams(47, 0.052646, -1.571169));
  Mickey.add(new HarmonicParams(-47, 0.178106, -1.571167));
  Mickey.add(new HarmonicParams(48, 0.117001, -1.571165));
  Mickey.add(new HarmonicParams(-48, 0.125942, 1.570437));
  Mickey.add(new HarmonicParams(49, 0.034644, 1.570439));
  Mickey.add(new HarmonicParams(-49, 0.021613, 1.570077));
  Mickey.add(new HarmonicParams(50, 0.023494, 1.570134));
  Mickey.add(new HarmonicParams(-50, 0.032459, 1.570415));
  Mickey.add(new HarmonicParams(51, 0.125043, 1.570435));
  Mickey.add(new HarmonicParams(-51, 0.094371, -1.571254));
  Mickey.add(new HarmonicParams(52, 0.161070, -1.571207));
  Mickey.add(new HarmonicParams(-52, 0.038675, -1.571304));
  Mickey.add(new HarmonicParams(53, 0.020248, 1.570595));
  Mickey.add(new HarmonicParams(-53, 0.112177, 1.570318));
  Mickey.add(new HarmonicParams(54, 0.019322, -1.570904));
  Mickey.add(new HarmonicParams(-54, 0.015832, -1.570928));
  Mickey.add(new HarmonicParams(55, 0.116046, 1.570334));
  Mickey.add(new HarmonicParams(-55, 0.017378, 1.570561));
  Mickey.add(new HarmonicParams(56, 0.036640, -1.571332));
  Mickey.add(new HarmonicParams(-56, 0.126809, -1.571317));
  Mickey.add(new HarmonicParams(57, 0.082117, -1.571322));
  Mickey.add(new HarmonicParams(-57, 0.090311, 1.570295));
  Mickey.add(new HarmonicParams(58, 0.024640, 1.570294));
  Mickey.add(new HarmonicParams(-58, 0.015634, 1.569801));
  Mickey.add(new HarmonicParams(59, 0.016642, 1.569862));
  Mickey.add(new HarmonicParams(-59, 0.023418, 1.570267));
  Mickey.add(new HarmonicParams(60, 0.089389, 1.570290));
  Mickey.add(new HarmonicParams(-60, 0.068805, -1.571424));
  Mickey.add(new HarmonicParams(61, 0.115945, -1.571366));
  Mickey.add(new HarmonicParams(-61, 0.028381, -1.571488));
  Mickey.add(new HarmonicParams(62, 0.014695, 1.570518));
  Mickey.add(new HarmonicParams(-62, 0.082815, 1.570148));
  Mickey.add(new HarmonicParams(63, 0.013981, -1.570945));
  Mickey.add(new HarmonicParams(-63, 0.011802, -1.570972));
  Mickey.add(new HarmonicParams(64, 0.084861, 1.570164));
  Mickey.add(new HarmonicParams(-64, 0.012920, 1.570480));
  Mickey.add(new HarmonicParams(65, 0.026958, -1.571525));
  Mickey.add(new HarmonicParams(-65, 0.094911, -1.571493));
  Mickey.add(new HarmonicParams(66, 0.060784, -1.571506));
  Mickey.add(new HarmonicParams(-66, 0.067947, 1.570131));
  Mickey.add(new HarmonicParams(67, 0.018415, 1.570124));
  Mickey.add(new HarmonicParams(-67, 0.011841, 1.569483));
  Mickey.add(new HarmonicParams(68, 0.012398, 1.569542));
  Mickey.add(new HarmonicParams(-68, 0.017697, 1.570096));
  Mickey.add(new HarmonicParams(69, 0.067060, 1.570122));
  Mickey.add(new HarmonicParams(-69, 0.052407, -1.571620));
  Mickey.add(new HarmonicParams(70, 0.087426, -1.571552));
  Mickey.add(new HarmonicParams(-70, 0.021722, -1.571700));
  Mickey.add(new HarmonicParams(71, 0.011149, 1.570430));
  Mickey.add(new HarmonicParams(-71, 0.063669, 1.569953));
  Mickey.add(new HarmonicParams(72, 0.010585, -1.570993));
  Mickey.add(new HarmonicParams(-72, 0.009138, -1.571024));
  Mickey.add(new HarmonicParams(73, 0.064739, 1.569967));
  Mickey.add(new HarmonicParams(-73, 0.009984, 1.570387));
  Mickey.add(new HarmonicParams(74, 0.020659, -1.571747));
  Mickey.add(new HarmonicParams(-74, 0.073731, -1.571693));
  Mickey.add(new HarmonicParams(75, 0.046796, -1.571718));
  Mickey.add(new HarmonicParams(-75, 0.052993, 1.569943));
  Mickey.add(new HarmonicParams(76, 0.014281, 1.569929));
  Mickey.add(new HarmonicParams(-76, 0.009284, 1.569121));
  Mickey.add(new HarmonicParams(77, 0.009590, 1.569174));
  Mickey.add(new HarmonicParams(-77, 0.013849, 1.569902));
  Mickey.add(new HarmonicParams(78, 0.052159, 1.569929));
  Mickey.add(new HarmonicParams(-78, 0.041263, -1.571842));
  Mickey.add(new HarmonicParams(79, 0.068262, -1.571764));
  Mickey.add(new HarmonicParams(-79, 0.017167, -1.571940));
  Mickey.add(new HarmonicParams(80, 0.008748, 1.570330));
  Mickey.add(new HarmonicParams(-80, 0.050494, 1.569733));
  Mickey.add(new HarmonicParams(81, 0.008292, -1.571047));
  Mickey.add(new HarmonicParams(-81, 0.007286, -1.571082));
  Mickey.add(new HarmonicParams(82, 0.051007, 1.569744));
  Mickey.add(new HarmonicParams(-82, 0.007949, 1.570283));
  Mickey.add(new HarmonicParams(83, 0.016334, -1.571999));
  Mickey.add(new HarmonicParams(-83, 0.058950, -1.571917));
  Mickey.add(new HarmonicParams(84, 0.037132, -1.571958));
  Mickey.add(new HarmonicParams(-84, 0.042501, 1.569732));
  Mickey.add(new HarmonicParams(85, 0.011396, 1.569709));
  Mickey.add(new HarmonicParams(-85, 0.007479, 1.568717));
  Mickey.add(new HarmonicParams(86, 0.007636, 1.568759));
  Mickey.add(new HarmonicParams(-86, 0.011137, 1.569684));
  Mickey.add(new HarmonicParams(87, 0.041724, 1.569712));
  Mickey.add(new HarmonicParams(-87, 0.033345, -1.572090));
  Mickey.add(new HarmonicParams(88, 0.054771, -1.572003));
  Mickey.add(new HarmonicParams(-88, 0.013915, -1.572208));
  Mickey.add(new HarmonicParams(89, 0.007048, 1.570217));
  Mickey.add(new HarmonicParams(-89, 0.041040, 1.569488));
  Mickey.add(new HarmonicParams(90, 0.006672, -1.571108));
  Mickey.add(new HarmonicParams(-90, 0.005946, -1.571146));
  Mickey.add(new HarmonicParams(91, 0.041220, 1.569494));
  Mickey.add(new HarmonicParams(-91, 0.006480, 1.570166));
  Mickey.add(new HarmonicParams(92, 0.013237, -1.572280));
  Mickey.add(new HarmonicParams(-92, 0.048228, -1.572167));
  Mickey.add(new HarmonicParams(93, 0.030178, -1.572226));
  Mickey.add(new HarmonicParams(-93, 0.034857, 1.569499));
  Mickey.add(new HarmonicParams(94, 0.009305, 1.569465));
  Mickey.add(new HarmonicParams(-94, 0.006157, 1.568270));
  Mickey.add(new HarmonicParams(95, 0.006222, 1.568297));
  Mickey.add(new HarmonicParams(-95, 0.009153, 1.569443));
  Mickey.add(new HarmonicParams(96, 0.034133, 1.569471));
  Mickey.add(new HarmonicParams(-96, 0.027517, -1.572365));
  Mickey.add(new HarmonicParams(97, 0.044916, -1.572268));
  Mickey.add(new HarmonicParams(-97, 0.011511, -1.572502));
  Mickey.add(new HarmonicParams(98, 0.005799, 1.570092));
  Mickey.add(new HarmonicParams(-98, 0.034027, 1.569218));
  Mickey.add(new HarmonicParams(99, 0.005485, -1.571175));
  Mickey.add(new HarmonicParams(-99, 0.004946, -1.571217));
  Mickey.add(new HarmonicParams(100, 0.034002, 1.569217));
  Mickey.add(new HarmonicParams(-100, 0.005385, 1.570038));
  Mickey.add(new HarmonicParams(101, 0.010943, -1.572591));
  Mickey.add(new HarmonicParams(-101, 0.040201, -1.572440));
  Mickey.add(new HarmonicParams(102, 0.025009, -1.572522));
  Mickey.add(new HarmonicParams(-102, 0.029115, 1.569243));
  Mickey.add(new HarmonicParams(103, 0.007741, 1.569196));
  Mickey.add(new HarmonicParams(-103, 0.005160, 1.567782));
  Mickey.add(new HarmonicParams(104, 0.005167, 1.567786));
  Mickey.add(new HarmonicParams(-104, 0.007659, 1.569179));
  Mickey.add(new HarmonicParams(105, 0.028440, 1.569206));
  Mickey.add(new HarmonicParams(-105, 0.023102, -1.572664));
  Mickey.add(new HarmonicParams(106, 0.037500, -1.572558));
  Mickey.add(new HarmonicParams(-106, 0.009685, -1.572824));
  Mickey.add(new HarmonicParams(107, 0.004856, 1.569955));
  Mickey.add(new HarmonicParams(-107, 0.028681, 1.568924));
  Mickey.add(new HarmonicParams(108, 0.004589, -1.571249));
  Mickey.add(new HarmonicParams(-108, 0.004180, -1.571294));
  Mickey.add(new HarmonicParams(109, 0.028526, 1.568914));
  Mickey.add(new HarmonicParams(-109, 0.004547, 1.569898));
  Mickey.add(new HarmonicParams(110, 0.009198, -1.572931));
  Mickey.add(new HarmonicParams(-110, 0.034037, -1.572738));
  Mickey.add(new HarmonicParams(111, 0.021063, -1.572845));
  Mickey.add(new HarmonicParams(-111, 0.024693, 1.568965));
  Mickey.add(new HarmonicParams(112, 0.006540, 1.568902));
  Mickey.add(new HarmonicParams(-112, 0.004389, 1.567253));
  Mickey.add(new HarmonicParams(113, 0.004358, 1.567227));
  Mickey.add(new HarmonicParams(-113, 0.006505, 1.568892));
  Mickey.add(new HarmonicParams(114, 0.024062, 1.568917));
  Mickey.add(new HarmonicParams(-114, 0.019679, -1.572989));
  Mickey.add(new HarmonicParams(115, 0.031781, -1.572876));
  Mickey.add(new HarmonicParams(-115, 0.008264, -1.573173));
  Mickey.add(new HarmonicParams(116, 0.004126, 1.569807));
  Mickey.add(new HarmonicParams(-116, 0.024511, 1.568606));
  Mickey.add(new HarmonicParams(117, 0.003897, -1.571330));
  Mickey.add(new HarmonicParams(-117, 0.003579, -1.571377));
  Mickey.add(new HarmonicParams(118, 0.024274, 1.568584));
  Mickey.add(new HarmonicParams(-118, 0.003892, 1.569747));
  Mickey.add(new HarmonicParams(119, 0.007839, -1.573301));
  Mickey.add(new HarmonicParams(-119, 0.029200, -1.573059));
  Mickey.add(new HarmonicParams(120, 0.017982, -1.573196));
  Mickey.add(new HarmonicParams(-120, 0.021214, 1.568664));
  Mickey.add(new HarmonicParams(121, 0.005599, 1.568584));
  Mickey.add(new HarmonicParams(-121, 0.003781, 1.566682));
  Mickey.add(new HarmonicParams(122, 0.003725, 1.566621));
  Mickey.add(new HarmonicParams(-122, 0.005596, 1.568583));
  Mickey.add(new HarmonicParams(123, 0.020624, 1.568603));
  Mickey.add(new HarmonicParams(-123, 0.016970, -1.573339));
  Mickey.add(new HarmonicParams(124, 0.027277, -1.573219));
  Mickey.add(new HarmonicParams(-124, 0.007137, -1.573548));
  Mickey.add(new HarmonicParams(125, 0.003549, 1.569646));
  Mickey.add(new HarmonicParams(-125, 0.021197, 1.568263));
  Mickey.add(new HarmonicParams(126, 0.003351, -1.571417));
  Mickey.add(new HarmonicParams(-126, 0.003100, -1.571467));
  Mickey.add(new HarmonicParams(127, 0.020907, 1.568228));
  Mickey.add(new HarmonicParams(-127, 0.003370, 1.569584));
  Mickey.add(new HarmonicParams(128, 0.006761, -1.573701));
  Mickey.add(new HarmonicParams(-128, 0.025335, -1.573405));
  Mickey.add(new HarmonicParams(129, 0.015531, -1.573575));
  Mickey.add(new HarmonicParams(-129, 0.018429, 1.568342));
  Mickey.add(new HarmonicParams(130, 0.004847, 1.568241));
  Mickey.add(new HarmonicParams(-130, 0.003292, 1.566072));
  Mickey.add(new HarmonicParams(131, 0.003220, 1.565966));
  Mickey.add(new HarmonicParams(-131, 0.004866, 1.568251));
  Mickey.add(new HarmonicParams(132, 0.017874, 1.568266));
  Mickey.add(new HarmonicParams(-132, 0.014789, -1.573714));
  Mickey.add(new HarmonicParams(133, 0.023669, -1.573588));
  Mickey.add(new HarmonicParams(-133, 0.006229, -1.573949));
  Mickey.add(new HarmonicParams(134, 0.003086, 1.569473));
  Mickey.add(new HarmonicParams(-134, 0.018519, 1.567897));
  Mickey.add(new HarmonicParams(135, 0.002912, -1.571510));
  Mickey.add(new HarmonicParams(-135, 0.002712, -1.571563));
  Mickey.add(new HarmonicParams(136, 0.018196, 1.567846));
  Mickey.add(new HarmonicParams(-136, 0.002947, 1.569410));
  Mickey.add(new HarmonicParams(137, 0.005890, -1.574130));
  Mickey.add(new HarmonicParams(-137, 0.022197, -1.573773));
  Mickey.add(new HarmonicParams(138, 0.013550, -1.573981));
  Mickey.add(new HarmonicParams(-138, 0.016163, 1.567998));
  Mickey.add(new HarmonicParams(139, 0.004238, 1.567873));
  Mickey.add(new HarmonicParams(-139, 0.002894, 1.565421));
  Mickey.add(new HarmonicParams(140, 0.002811, 1.565264));
  Mickey.add(new HarmonicParams(-140, 0.004272, 1.567897));
  Mickey.add(new HarmonicParams(141, 0.015640, 1.567904));
  Mickey.add(new HarmonicParams(-141, 0.013008, -1.574114));
  Mickey.add(new HarmonicParams(142, 0.020733, -1.573984));
  Mickey.add(new HarmonicParams(-142, 0.005485, -1.574377));
  Mickey.add(new HarmonicParams(143, 0.002708, 1.569289));
  Mickey.add(new HarmonicParams(-143, 0.016323, 1.567507));
  Mickey.add(new HarmonicParams(144, 0.002555, -1.571610));
  Mickey.add(new HarmonicParams(-144, 0.002393, -1.571665));
  Mickey.add(new HarmonicParams(145, 0.015981, 1.567437));
  Mickey.add(new HarmonicParams(-145, 0.002599, 1.569225));
  Mickey.add(new HarmonicParams(146, 0.005178, -1.574589));
  Mickey.add(new HarmonicParams(-146, 0.019614, -1.574165));
  Mickey.add(new HarmonicParams(147, 0.011926, -1.574415));
  Mickey.add(new HarmonicParams(-147, 0.014296, 1.567632));
  Mickey.add(new HarmonicParams(148, 0.003737, 1.567481));
  Mickey.add(new HarmonicParams(-148, 0.002565, 1.564731));
  Mickey.add(new HarmonicParams(149, 0.002476, 1.564513));
  Mickey.add(new HarmonicParams(-149, 0.003782, 1.567521));
  Mickey.add(new HarmonicParams(150, 0.013802, 1.567519));
  Mickey.add(new HarmonicParams(-150, 0.011534, -1.574538));
  Mickey.add(new HarmonicParams(151, 0.018312, -1.574405));
  Mickey.add(new HarmonicParams(-151, 0.004869, -1.574830));
  Mickey.add(new HarmonicParams(152, 0.002396, 1.569092));
  Mickey.add(new HarmonicParams(-152, 0.014501, 1.567094));
  Mickey.add(new HarmonicParams(153, 0.002260, -1.571716));
  Mickey.add(new HarmonicParams(-153, 0.002128, -1.571773));
  Mickey.add(new HarmonicParams(154, 0.014149, 1.567001));
  Mickey.add(new HarmonicParams(-154, 0.002311, 1.569029));
  Mickey.add(new HarmonicParams(155, 0.004588, -1.575076));
  Mickey.add(new HarmonicParams(-155, 0.017463, -1.574580));
  Mickey.add(new HarmonicParams(156, 0.010578, -1.574876));
  Mickey.add(new HarmonicParams(-156, 0.012738, 1.567245));
  Mickey.add(new HarmonicParams(157, 0.003320, 1.567065));
  Mickey.add(new HarmonicParams(-157, 0.002289, 1.564003));
  Mickey.add(new HarmonicParams(158, 0.002196, 1.563715));
  Mickey.add(new HarmonicParams(-158, 0.003372, 1.567123));
  Mickey.add(new HarmonicParams(159, 0.012271, 1.567110));
  Mickey.add(new HarmonicParams(-159, 0.010301, -1.574986));
  Mickey.add(new HarmonicParams(160, 0.016294, -1.574852));
  Mickey.add(new HarmonicParams(-160, 0.004352, -1.575309));
  Mickey.add(new HarmonicParams(161, 0.002136, 1.568884));
  Mickey.add(new HarmonicParams(-161, 0.012972, 1.566657));
  Mickey.add(new HarmonicParams(162, 0.002014, -1.571829));
  Mickey.add(new HarmonicParams(-162, 0.001905, -1.571888));
  Mickey.add(new HarmonicParams(163, 0.012615, 1.566540));
  Mickey.add(new HarmonicParams(-163, 0.002068, 1.568821));
  Mickey.add(new HarmonicParams(164, 0.004094, -1.575593));
  Mickey.add(new HarmonicParams(-164, 0.015652, -1.575018));
  Mickey.add(new HarmonicParams(165, 0.009447, -1.575364));
  Mickey.add(new HarmonicParams(-165, 0.011426, 1.566837));
  Mickey.add(new HarmonicParams(166, 0.002969, 1.566624));
  Mickey.add(new HarmonicParams(-166, 0.002057, 1.563236));
  Mickey.add(new HarmonicParams(167, 0.001962, 1.562869));
  Mickey.add(new HarmonicParams(-167, 0.003027, 1.566704));
  Mickey.add(new HarmonicParams(168, 0.010982, 1.566678));
  Mickey.add(new HarmonicParams(-168, 0.009258, -1.575457));
  Mickey.add(new HarmonicParams(169, 0.014593, -1.575325));
  Mickey.add(new HarmonicParams(-169, 0.003915, -1.575813));
  Mickey.add(new HarmonicParams(170, 0.001916, 1.568664));
  Mickey.add(new HarmonicParams(-170, 0.011676, 1.566198));
  Mickey.add(new HarmonicParams(171, 0.001806, -1.571947));
  Mickey.add(new HarmonicParams(-171, 0.001715, -1.572008));
  Mickey.add(new HarmonicParams(172, 0.011319, 1.566053));
  Mickey.add(new HarmonicParams(-172, 0.001862, 1.568603));
  Mickey.add(new HarmonicParams(173, 0.003676, -1.576139));
  Mickey.add(new HarmonicParams(-173, 0.014114, -1.575478));
  Mickey.add(new HarmonicParams(174, 0.008489, -1.575880));
  Mickey.add(new HarmonicParams(-174, 0.010309, 1.566409));
  Mickey.add(new HarmonicParams(175, 0.002672, 1.566160));
  Mickey.add(new HarmonicParams(-175, 0.001859, 1.562431));
  Mickey.add(new HarmonicParams(176, 0.001763, 1.561975));
  Mickey.add(new HarmonicParams(-176, 0.002733, 1.566263));
  Mickey.add(new HarmonicParams(177, 0.009887, 1.566221));
  Mickey.add(new HarmonicParams(-177, 0.008369, -1.575953));
  Mickey.add(new HarmonicParams(178, 0.013146, -1.575823));
  Mickey.add(new HarmonicParams(-178, 0.003541, -1.576341));
  Mickey.add(new HarmonicParams(179, 0.001728, 1.568433));
  Mickey.add(new HarmonicParams(-179, 0.010569, 1.565716));
  Mickey.add(new HarmonicParams(180, 0.001629, -1.572072));
  Mickey.add(new HarmonicParams(-180, 0.001553, -1.572135));
  Mickey.add(new HarmonicParams(181, 0.010214, 1.565539));
  Mickey.add(new HarmonicParams(-181, 0.001686, 1.568374));
  Mickey.add(new HarmonicParams(182, 0.003319, -1.576714));
  Mickey.add(new HarmonicParams(-182, 0.012795, -1.575961));
  Mickey.add(new HarmonicParams(183, 0.007670, -1.576422));
  Mickey.add(new HarmonicParams(-183, 0.009351, 1.565959));
  Mickey.add(new HarmonicParams(184, 0.002417, 1.565671));
  Mickey.add(new HarmonicParams(-184, 0.001689, 1.561589));
  Mickey.add(new HarmonicParams(185, 0.001593, 1.561033));
  Mickey.add(new HarmonicParams(-185, 0.002480, 1.565801));
  Mickey.add(new HarmonicParams(186, 0.008949, 1.565742));
  Mickey.add(new HarmonicParams(-186, 0.007604, -1.576471));
  Mickey.add(new HarmonicParams(187, 0.011905, -1.576347));
  Mickey.add(new HarmonicParams(-187, 0.003220, -1.576895));
  Mickey.add(new HarmonicParams(188, 0.001567, 1.568190));
  Mickey.add(new HarmonicParams(-188, 0.009615, 1.565212));
  Mickey.add(new HarmonicParams(189, 0.001477, -1.572204));
  Mickey.add(new HarmonicParams(-189, 0.001413, -1.572267));
  Mickey.add(new HarmonicParams(190, 0.009264, 1.565000));
  Mickey.add(new HarmonicParams(-190, 0.001534, 1.568134));
  Mickey.add(new HarmonicParams(191, 0.003012, -1.577317));
  Mickey.add(new HarmonicParams(-191, 0.011657, -1.576465));
  Mickey.add(new HarmonicParams(192, 0.006965, -1.576992));
  Mickey.add(new HarmonicParams(-192, 0.008523, 1.565490));
  Mickey.add(new HarmonicParams(193, 0.002197, 1.565159));
  Mickey.add(new HarmonicParams(-193, 0.001542, 1.560710));
  Mickey.add(new HarmonicParams(194, 0.001447, 1.560045));
  Mickey.add(new HarmonicParams(-194, 0.002262, 1.565319));
  Mickey.add(new HarmonicParams(195, 0.008140, 1.565239));
  Mickey.add(new HarmonicParams(-195, 0.006942, -1.577013));
  Mickey.add(new HarmonicParams(196, 0.010834, -1.576896));
  Mickey.add(new HarmonicParams(-196, 0.002941, -1.577472));
  Mickey.add(new HarmonicParams(197, 0.001428, 1.567936));
  Mickey.add(new HarmonicParams(-197, 0.008787, 1.564686));
  Mickey.add(new HarmonicParams(198, 0.001346, -1.572341));
  Mickey.add(new HarmonicParams(-198, 0.001292, -1.572405));
  Mickey.add(new HarmonicParams(199, 0.008442, 1.564436));
  Mickey.add(new HarmonicParams(-199, 0.001402, 1.567884));

  TrebleClef.add(new HarmonicParams(0, 0, 0));
  TrebleClef.add(new HarmonicParams(1, 23.989402, -1.379237));
  TrebleClef.add(new HarmonicParams(-1, 23.562803, -2.047383));
  TrebleClef.add(new HarmonicParams(2, 84.132195, 0.723013));
  TrebleClef.add(new HarmonicParams(-2, 78.498524, 2.314895));
  TrebleClef.add(new HarmonicParams(3, 81.140340, -1.607081));
  TrebleClef.add(new HarmonicParams(-3, 90.394640, -1.841552));
  TrebleClef.add(new HarmonicParams(4, 22.009040, 2.629877));
  TrebleClef.add(new HarmonicParams(-4, 36.626787, -0.118128));
  TrebleClef.add(new HarmonicParams(5, 18.846065, 2.656057));
  TrebleClef.add(new HarmonicParams(-5, 31.370174, -1.067126));
  TrebleClef.add(new HarmonicParams(6, 19.767906, 3.040399));
  TrebleClef.add(new HarmonicParams(-6, 15.456823, 0.014069));
  TrebleClef.add(new HarmonicParams(7, 27.973759, 0.280883));
  TrebleClef.add(new HarmonicParams(-7, 21.387632, -1.855639));
  TrebleClef.add(new HarmonicParams(8, 3.079311, -2.163714));
  TrebleClef.add(new HarmonicParams(-8, 30.450762, -1.080654));
  TrebleClef.add(new HarmonicParams(9, 14.656410, 2.929884));
  TrebleClef.add(new HarmonicParams(-9, 12.952240, 0.191942));
  TrebleClef.add(new HarmonicParams(10, 9.382635, -0.234142));
  TrebleClef.add(new HarmonicParams(-10, 9.946120, -3.031376));
  TrebleClef.add(new HarmonicParams(11, 2.818112, 0.203303));
  TrebleClef.add(new HarmonicParams(-11, 6.956659, -2.292310));
  TrebleClef.add(new HarmonicParams(12, 4.574720, 0.962272));
  TrebleClef.add(new HarmonicParams(-12, 4.277315, -2.060510));
  TrebleClef.add(new HarmonicParams(13, 8.343961, -2.177383));
  TrebleClef.add(new HarmonicParams(-13, 4.841774, 1.411758));
  TrebleClef.add(new HarmonicParams(14, 3.151888, 2.083093));
  TrebleClef.add(new HarmonicParams(-14, 7.966438, 2.534117));
  TrebleClef.add(new HarmonicParams(15, 7.357045, 0.111628));
  TrebleClef.add(new HarmonicParams(-15, 3.249923, -2.724487));
  TrebleClef.add(new HarmonicParams(16, 2.674869, -2.096293));
  TrebleClef.add(new HarmonicParams(-16, 1.512663, 2.747378));
  TrebleClef.add(new HarmonicParams(17, 3.034683, -2.693521));
  TrebleClef.add(new HarmonicParams(-17, 2.332429, -2.541774));
  TrebleClef.add(new HarmonicParams(18, 2.164397, -2.246828));
  TrebleClef.add(new HarmonicParams(-18, 3.910065, -0.800543));
  TrebleClef.add(new HarmonicParams(19, 4.412152, 1.736417));
  TrebleClef.add(new HarmonicParams(-19, 2.348399, 1.427479));
  TrebleClef.add(new HarmonicParams(20, 2.331428, 0.441737));
  TrebleClef.add(new HarmonicParams(-20, 3.468054, -2.427892));
  TrebleClef.add(new HarmonicParams(21, 2.435712, -2.156273));
  TrebleClef.add(new HarmonicParams(-21, 2.722539, -0.691493));
  TrebleClef.add(new HarmonicParams(22, 0.580220, 1.595564));
  TrebleClef.add(new HarmonicParams(-22, 0.312315, -0.590665));
  TrebleClef.add(new HarmonicParams(23, 0.902476, 1.909219));
  TrebleClef.add(new HarmonicParams(-23, 1.599940, 0.786380));
  TrebleClef.add(new HarmonicParams(24, 1.147021, 0.645057));
  TrebleClef.add(new HarmonicParams(-24, 2.128424, 2.394368));
  TrebleClef.add(new HarmonicParams(25, 1.005698, -1.113970));
  TrebleClef.add(new HarmonicParams(-25, 1.706374, -2.110714));
  TrebleClef.add(new HarmonicParams(26, 0.906076, -2.617127));
  TrebleClef.add(new HarmonicParams(-26, 1.134804, 0.201760));
  TrebleClef.add(new HarmonicParams(27, 0.448392, 2.347768));
  TrebleClef.add(new HarmonicParams(-27, 1.731472, 1.990931));
  TrebleClef.add(new HarmonicParams(28, 1.099534, 1.798851));
  TrebleClef.add(new HarmonicParams(-28, 0.294145, 2.773714));
  TrebleClef.add(new HarmonicParams(29, 0.779966, -0.189680));
  TrebleClef.add(new HarmonicParams(-29, 1.389606, 2.982015));
  TrebleClef.add(new HarmonicParams(30, 1.389532, -1.910803));
  TrebleClef.add(new HarmonicParams(-30, 0.946381, -1.333876));
  TrebleClef.add(new HarmonicParams(31, 0.787440, 2.090559));
  TrebleClef.add(new HarmonicParams(-31, 0.855125, 1.185519));
  TrebleClef.add(new HarmonicParams(32, 0.165736, 2.310904));
  TrebleClef.add(new HarmonicParams(-32, 0.409383, -2.164298));
  TrebleClef.add(new HarmonicParams(33, 0.069285, 1.630523));
  TrebleClef.add(new HarmonicParams(-33, 0.144317, -1.816172));
  TrebleClef.add(new HarmonicParams(34, 1.023890, -0.531497));
  TrebleClef.add(new HarmonicParams(-34, 0.654907, -2.180295));
  TrebleClef.add(new HarmonicParams(35, 0.789045, -2.697033));
  TrebleClef.add(new HarmonicParams(-35, 0.939744, -0.852091));
  TrebleClef.add(new HarmonicParams(36, 0.777016, 2.154434));
  TrebleClef.add(new HarmonicParams(-36, 0.440580, 1.046073));
  TrebleClef.add(new HarmonicParams(37, 0.373918, -0.428166));
  TrebleClef.add(new HarmonicParams(-37, 0.256890, -3.051262));
  TrebleClef.add(new HarmonicParams(38, 0.190195, -1.813261));
  TrebleClef.add(new HarmonicParams(-38, 0.119194, 2.442524));
  TrebleClef.add(new HarmonicParams(39, 0.080201, 1.633091));
  TrebleClef.add(new HarmonicParams(-39, 0.346687, -1.862735));
  TrebleClef.add(new HarmonicParams(40, 0.574896, -2.768492));
  TrebleClef.add(new HarmonicParams(-40, 0.426549, 0.183504));
  TrebleClef.add(new HarmonicParams(41, 0.513525, 1.520873));
  TrebleClef.add(new HarmonicParams(-41, 0.542655, 1.790366));
  TrebleClef.add(new HarmonicParams(42, 0.267193, -0.666952));
  TrebleClef.add(new HarmonicParams(-42, 0.331918, -2.307439));
  TrebleClef.add(new HarmonicParams(43, 0.200224, 2.962836));
  TrebleClef.add(new HarmonicParams(-43, 0.080073, -2.949140));
  TrebleClef.add(new HarmonicParams(44, 0.138347, 0.450437));
  TrebleClef.add(new HarmonicParams(-44, 0.074413, 2.051684));
  TrebleClef.add(new HarmonicParams(45, 0.123822, 2.961977));
  TrebleClef.add(new HarmonicParams(-45, 0.046483, 2.790650));
  TrebleClef.add(new HarmonicParams(46, 0.240103, 1.133778));
  TrebleClef.add(new HarmonicParams(-46, 0.477965, 2.385048));
  TrebleClef.add(new HarmonicParams(47, 0.328699, -1.254295));
  TrebleClef.add(new HarmonicParams(-47, 0.380340, -2.492414));
  TrebleClef.add(new HarmonicParams(48, 0.097899, -0.157187));
  TrebleClef.add(new HarmonicParams(-48, 0.183073, 0.455807));
  TrebleClef.add(new HarmonicParams(49, 0.034098, -0.735124));
  TrebleClef.add(new HarmonicParams(-49, 0.218025, -2.945901));
  TrebleClef.add(new HarmonicParams(50, 0.285102, -2.745147));
  TrebleClef.add(new HarmonicParams(-50, 0.011694, -3.048563));
  TrebleClef.add(new HarmonicParams(51, 0.133432, 0.106663));
  TrebleClef.add(new HarmonicParams(-51, 0.165609, -1.336290));
  TrebleClef.add(new HarmonicParams(52, 0.138240, 3.087070));
  TrebleClef.add(new HarmonicParams(-52, 0.168819, -0.856488));
  TrebleClef.add(new HarmonicParams(53, 0.209769, 1.948786));
  TrebleClef.add(new HarmonicParams(-53, 0.078066, 2.268410));
  TrebleClef.add(new HarmonicParams(54, 0.143372, -2.330179));
  TrebleClef.add(new HarmonicParams(-54, 0.151118, -1.118823));
  TrebleClef.add(new HarmonicParams(55, 0.096922, 1.500022));
  TrebleClef.add(new HarmonicParams(-55, 0.058357, 0.147794));
  TrebleClef.add(new HarmonicParams(56, 0.074272, 1.882183));
  TrebleClef.add(new HarmonicParams(-56, 0.115726, 1.569913));
  TrebleClef.add(new HarmonicParams(57, 0.012486, -1.818802));
  TrebleClef.add(new HarmonicParams(-57, 0.100715, 2.191670));
  TrebleClef.add(new HarmonicParams(58, 0.068084, 1.558542));
  TrebleClef.add(new HarmonicParams(-58, 0.085133, -2.896657));
  TrebleClef.add(new HarmonicParams(59, 0.022949, -1.417143));
  TrebleClef.add(new HarmonicParams(-59, 0.023443, -1.715743));
  TrebleClef.add(new HarmonicParams(60, 0.064370, -2.824698));
  TrebleClef.add(new HarmonicParams(-60, 0.223794, 1.945483));
  TrebleClef.add(new HarmonicParams(61, 0.165403, 1.871129));
  TrebleClef.add(new HarmonicParams(-61, 0.043822, -2.793681));
  TrebleClef.add(new HarmonicParams(62, 0.079326, -0.305342));
  TrebleClef.add(new HarmonicParams(-62, 0.153326, 3.066899));
  TrebleClef.add(new HarmonicParams(63, 0.167035, -1.859622));
  TrebleClef.add(new HarmonicParams(-63, 0.072390, -1.728930));
  TrebleClef.add(new HarmonicParams(64, 0.050208, 1.751677));
  TrebleClef.add(new HarmonicParams(-64, 0.100965, 1.679023));
  TrebleClef.add(new HarmonicParams(65, 0.051348, -2.769020));
  TrebleClef.add(new HarmonicParams(-65, 0.102081, -1.315021));
  TrebleClef.add(new HarmonicParams(66, 0.005152, 2.185476));
  TrebleClef.add(new HarmonicParams(-66, 0.022976, -1.872929));
  TrebleClef.add(new HarmonicParams(67, 0.203634, -0.636305));
  TrebleClef.add(new HarmonicParams(-67, 0.128760, -2.245829));
  TrebleClef.add(new HarmonicParams(68, 0.141344, -2.874370));
  TrebleClef.add(new HarmonicParams(-68, 0.164910, -0.811201));
  TrebleClef.add(new HarmonicParams(69, 0.142119, 2.232001));
  TrebleClef.add(new HarmonicParams(-69, 0.050817, 0.870080));
  TrebleClef.add(new HarmonicParams(70, 0.049985, -0.648989));
  TrebleClef.add(new HarmonicParams(-70, 0.039693, -2.896398));
  TrebleClef.add(new HarmonicParams(71, 0.046655, -1.936283));
  TrebleClef.add(new HarmonicParams(-71, 0.055475, 2.134165));
  TrebleClef.add(new HarmonicParams(72, 0.053223, 1.806787));
  TrebleClef.add(new HarmonicParams(-72, 0.086583, -1.977683));
  TrebleClef.add(new HarmonicParams(73, 0.144675, -2.751434));
  TrebleClef.add(new HarmonicParams(-73, 0.104137, 0.183124));
  TrebleClef.add(new HarmonicParams(74, 0.127110, 1.598352));
  TrebleClef.add(new HarmonicParams(-74, 0.152837, 1.792024));
  TrebleClef.add(new HarmonicParams(75, 0.065063, -0.577504));
  TrebleClef.add(new HarmonicParams(-75, 0.092679, -2.335153));
  TrebleClef.add(new HarmonicParams(76, 0.063454, 2.780015));
  TrebleClef.add(new HarmonicParams(-76, 0.018129, 2.950922));
  TrebleClef.add(new HarmonicParams(77, 0.041945, 0.428056));
  TrebleClef.add(new HarmonicParams(-77, 0.031997, 1.739240));
  TrebleClef.add(new HarmonicParams(78, 0.034843, -2.906523));
  TrebleClef.add(new HarmonicParams(-78, 0.018256, 3.088294));
  TrebleClef.add(new HarmonicParams(79, 0.088023, 1.164749));
  TrebleClef.add(new HarmonicParams(-79, 0.155521, 2.384242));
  TrebleClef.add(new HarmonicParams(80, 0.119726, -1.212040));
  TrebleClef.add(new HarmonicParams(-80, 0.122927, -2.419983));
  TrebleClef.add(new HarmonicParams(81, 0.022690, -0.748740));
  TrebleClef.add(new HarmonicParams(-81, 0.074553, 0.419631));
  TrebleClef.add(new HarmonicParams(82, 0.012019, -0.092682));
  TrebleClef.add(new HarmonicParams(-82, 0.083630, -2.885191));
  TrebleClef.add(new HarmonicParams(83, 0.098249, -2.768760));
  TrebleClef.add(new HarmonicParams(-83, 0.004998, 0.729745));
  TrebleClef.add(new HarmonicParams(84, 0.061610, 0.248677));
  TrebleClef.add(new HarmonicParams(-84, 0.047484, -1.446137));
  TrebleClef.add(new HarmonicParams(85, 0.063129, -2.714407));
  TrebleClef.add(new HarmonicParams(-85, 0.081322, -1.015447));
  TrebleClef.add(new HarmonicParams(86, 0.093765, 2.154764));
  TrebleClef.add(new HarmonicParams(-86, 0.042329, 1.598102));
  TrebleClef.add(new HarmonicParams(87, 0.041113, -2.424953));
  TrebleClef.add(new HarmonicParams(-87, 0.042479, -1.358258));
  TrebleClef.add(new HarmonicParams(88, 0.036291, 1.510575));
  TrebleClef.add(new HarmonicParams(-88, 0.024857, 0.248929));
  TrebleClef.add(new HarmonicParams(89, 0.023222, 1.935312));
  TrebleClef.add(new HarmonicParams(-89, 0.041281, 1.908083));
  TrebleClef.add(new HarmonicParams(90, 0.021436, -2.291960));
  TrebleClef.add(new HarmonicParams(-90, 0.018878, 1.894369));
  TrebleClef.add(new HarmonicParams(91, 0.048041, 1.702982));
  TrebleClef.add(new HarmonicParams(-91, 0.029888, 2.627217));
  TrebleClef.add(new HarmonicParams(92, 0.017008, -0.207678));
  TrebleClef.add(new HarmonicParams(-92, 0.027275, -2.519407));
  TrebleClef.add(new HarmonicParams(93, 0.030269, -2.534092));
  TrebleClef.add(new HarmonicParams(-93, 0.079696, 1.928211));
  TrebleClef.add(new HarmonicParams(94, 0.061941, 1.900694));
  TrebleClef.add(new HarmonicParams(-94, 0.018736, -2.553184));
  TrebleClef.add(new HarmonicParams(95, 0.023226, -0.405910));
  TrebleClef.add(new HarmonicParams(-95, 0.047559, 3.131092));
  TrebleClef.add(new HarmonicParams(96, 0.053389, -1.821348));
  TrebleClef.add(new HarmonicParams(-96, 0.018567, -2.326705));
  TrebleClef.add(new HarmonicParams(97, 0.009767, 0.752188));
  TrebleClef.add(new HarmonicParams(-97, 0.036169, 2.038180));
  TrebleClef.add(new HarmonicParams(98, 0.028330, -2.580993));
  TrebleClef.add(new HarmonicParams(-98, 0.051217, -1.108082));
  TrebleClef.add(new HarmonicParams(99, 0.001612, -3.096717));
  TrebleClef.add(new HarmonicParams(-99, 0.008290, -1.909657));
  TrebleClef.add(new HarmonicParams(100, 0.082478, -0.688607));
  TrebleClef.add(new HarmonicParams(-100, 0.051721, -2.279212));
  TrebleClef.add(new HarmonicParams(101, 0.053896, -2.986906));
  TrebleClef.add(new HarmonicParams(-101, 0.061084, -0.783875));
  TrebleClef.add(new HarmonicParams(102, 0.053286, 2.285584));
  TrebleClef.add(new HarmonicParams(-102, 0.012206, 0.567736));
  TrebleClef.add(new HarmonicParams(103, 0.014309, -0.940738));
  TrebleClef.add(new HarmonicParams(-103, 0.012805, -2.738170));
  TrebleClef.add(new HarmonicParams(104, 0.020365, -2.002820));
  TrebleClef.add(new HarmonicParams(-104, 0.030024, 2.069749));
  TrebleClef.add(new HarmonicParams(105, 0.030936, 1.838960));
  TrebleClef.add(new HarmonicParams(-105, 0.037796, -2.034044));
  TrebleClef.add(new HarmonicParams(106, 0.062196, -2.740861));
  TrebleClef.add(new HarmonicParams(-106, 0.044184, 0.174628));
  TrebleClef.add(new HarmonicParams(107, 0.054158, 1.647095));
  TrebleClef.add(new HarmonicParams(-107, 0.068953, 1.789181));
  TrebleClef.add(new HarmonicParams(108, 0.026527, -0.525050));
  TrebleClef.add(new HarmonicParams(-108, 0.041428, -2.341705));
  TrebleClef.add(new HarmonicParams(109, 0.030186, 2.689032));
  TrebleClef.add(new HarmonicParams(-109, 0.008377, 2.712919));
  TrebleClef.add(new HarmonicParams(110, 0.019891, 0.412863));
  TrebleClef.add(new HarmonicParams(-110, 0.017241, 1.668380));
  TrebleClef.add(new HarmonicParams(111, 0.016264, -2.680547));
  TrebleClef.add(new HarmonicParams(-111, 0.010151, -3.032266));
  TrebleClef.add(new HarmonicParams(112, 0.043455, 1.186423));
  TrebleClef.add(new HarmonicParams(-112, 0.075276, 2.374083));
  TrebleClef.add(new HarmonicParams(113, 0.060096, -1.193093));
  TrebleClef.add(new HarmonicParams(-113, 0.059103, -2.409027));
  TrebleClef.add(new HarmonicParams(114, 0.011675, -1.052280));
  TrebleClef.add(new HarmonicParams(-114, 0.038835, 0.403534));
  TrebleClef.add(new HarmonicParams(115, 0.006307, 0.084842));
  TrebleClef.add(new HarmonicParams(-115, 0.043859, -2.863099));
  TrebleClef.add(new HarmonicParams(116, 0.049199, -2.780849));
  TrebleClef.add(new HarmonicParams(-116, 0.003888, 0.579140));
  TrebleClef.add(new HarmonicParams(117, 0.033906, 0.287635));
  TrebleClef.add(new HarmonicParams(-117, 0.021798, -1.475884));
  TrebleClef.add(new HarmonicParams(118, 0.036686, -2.594257));
  TrebleClef.add(new HarmonicParams(-118, 0.045730, -1.059551));
  TrebleClef.add(new HarmonicParams(119, 0.052405, 2.216549));
  TrebleClef.add(new HarmonicParams(-119, 0.025956, 1.459026));
  TrebleClef.add(new HarmonicParams(120, 0.018767, -2.481837));
  TrebleClef.add(new HarmonicParams(-120, 0.019379, -1.505397));
  TrebleClef.add(new HarmonicParams(121, 0.018701, 1.520523));
  TrebleClef.add(new HarmonicParams(-121, 0.013683, 0.285670));
  TrebleClef.add(new HarmonicParams(122, 0.011014, 1.980572));
  TrebleClef.add(new HarmonicParams(-122, 0.021691, 2.061109));
  TrebleClef.add(new HarmonicParams(123, 0.015306, -2.321438));
  TrebleClef.add(new HarmonicParams(-123, 0.006190, 1.458451));
  TrebleClef.add(new HarmonicParams(124, 0.030619, 1.731754));
  TrebleClef.add(new HarmonicParams(-124, 0.018131, 2.311923));
  TrebleClef.add(new HarmonicParams(125, 0.012699, -0.043805));
  TrebleClef.add(new HarmonicParams(-125, 0.019758, -2.603180));
  TrebleClef.add(new HarmonicParams(126, 0.017727, -2.425449));
  TrebleClef.add(new HarmonicParams(-126, 0.040127, 1.919017));
  TrebleClef.add(new HarmonicParams(127, 0.031993, 1.916916));
  TrebleClef.add(new HarmonicParams(-127, 0.010546, -2.448326));
  TrebleClef.add(new HarmonicParams(128, 0.010157, -0.492498));
  TrebleClef.add(new HarmonicParams(-128, 0.021683, -3.102009));
  TrebleClef.add(new HarmonicParams(129, 0.024712, -1.791757));
  TrebleClef.add(new HarmonicParams(-129, 0.009594, -2.833441));
  TrebleClef.add(new HarmonicParams(130, 0.006985, -0.043424));
  TrebleClef.add(new HarmonicParams(-130, 0.019276, 2.257395));
  TrebleClef.add(new HarmonicParams(131, 0.017619, -2.514517));
  TrebleClef.add(new HarmonicParams(-131, 0.030826, -1.025019));
  TrebleClef.add(new HarmonicParams(132, 0.001152, -2.603462));
  TrebleClef.add(new HarmonicParams(-132, 0.004130, -1.935346));
  TrebleClef.add(new HarmonicParams(133, 0.044173, -0.719840));
  TrebleClef.add(new HarmonicParams(-133, 0.027542, -2.299433));
  TrebleClef.add(new HarmonicParams(134, 0.027865, -3.063017));
  TrebleClef.add(new HarmonicParams(-134, 0.030740, -0.764313));
  TrebleClef.add(new HarmonicParams(135, 0.026977, 2.324510));
  TrebleClef.add(new HarmonicParams(-135, 0.004485, 0.084776));
  TrebleClef.add(new HarmonicParams(136, 0.006171, -1.276479));
  TrebleClef.add(new HarmonicParams(-136, 0.005793, -2.584281));
  TrebleClef.add(new HarmonicParams(137, 0.011342, -2.043534));
  TrebleClef.add(new HarmonicParams(-137, 0.018623, 2.041901));
  TrebleClef.add(new HarmonicParams(138, 0.019814, 1.852972));
  TrebleClef.add(new HarmonicParams(-138, 0.020998, -2.067905));
  TrebleClef.add(new HarmonicParams(139, 0.034060, -2.733770));
  TrebleClef.add(new HarmonicParams(-139, 0.024010, 0.167251));
  TrebleClef.add(new HarmonicParams(140, 0.029497, 1.680329));
  TrebleClef.add(new HarmonicParams(-140, 0.038824, 1.786663));
  TrebleClef.add(new HarmonicParams(141, 0.013889, -0.487281));
  TrebleClef.add(new HarmonicParams(-141, 0.023156, -2.344139));
  TrebleClef.add(new HarmonicParams(142, 0.017551, 2.633769));
  TrebleClef.add(new HarmonicParams(-142, 0.004986, 2.579398));
  TrebleClef.add(new HarmonicParams(143, 0.011569, 0.402939));
  TrebleClef.add(new HarmonicParams(-143, 0.010698, 1.638148));
  TrebleClef.add(new HarmonicParams(144, 0.009505, -2.541480));
  TrebleClef.add(new HarmonicParams(-144, 0.006531, -2.944878));
  TrebleClef.add(new HarmonicParams(145, 0.025601, 1.201216));
  TrebleClef.add(new HarmonicParams(-145, 0.044169, 2.365772));
  TrebleClef.add(new HarmonicParams(146, 0.035888, -1.181954));
  TrebleClef.add(new HarmonicParams(-146, 0.034490, -2.408365));
  TrebleClef.add(new HarmonicParams(147, 0.007456, -1.188392));
  TrebleClef.add(new HarmonicParams(-147, 0.023631, 0.394036));
  TrebleClef.add(new HarmonicParams(148, 0.003848, 0.163307));
  TrebleClef.add(new HarmonicParams(-148, 0.026974, -2.851711));
  TrebleClef.add(new HarmonicParams(149, 0.029489, -2.788147));
  TrebleClef.add(new HarmonicParams(-149, 0.002734, 0.524907));
  TrebleClef.add(new HarmonicParams(150, 0.021272, 0.305916));
  TrebleClef.add(new HarmonicParams(-150, 0.012406, -1.484619));
  TrebleClef.add(new HarmonicParams(151, 0.023829, -2.544565));
  TrebleClef.add(new HarmonicParams(-151, 0.029058, -1.080344));
  TrebleClef.add(new HarmonicParams(152, 0.033338, 2.245468));
  TrebleClef.add(new HarmonicParams(-152, 0.017213, 1.402461));
  TrebleClef.add(new HarmonicParams(153, 0.010646, -2.519315));
  TrebleClef.add(new HarmonicParams(-153, 0.011053, -1.602755));
  TrebleClef.add(new HarmonicParams(154, 0.011363, 1.527889));
  TrebleClef.add(new HarmonicParams(-154, 0.008652, 0.304439));
  TrebleClef.add(new HarmonicParams(155, 0.006385, 2.014977));
  TrebleClef.add(new HarmonicParams(-155, 0.013472, 2.144897));
  TrebleClef.add(new HarmonicParams(156, 0.010837, -2.330960));
  TrebleClef.add(new HarmonicParams(-156, 0.003176, 0.982554));
  TrebleClef.add(new HarmonicParams(157, 0.020765, 1.743823));
  TrebleClef.add(new HarmonicParams(-157, 0.012442, 2.170579));
  TrebleClef.add(new HarmonicParams(158, 0.009256, 0.012613));
  TrebleClef.add(new HarmonicParams(-158, 0.014165, -2.633951));
  TrebleClef.add(new HarmonicParams(159, 0.011642, -2.369725));
  TrebleClef.add(new HarmonicParams(-159, 0.024050, 1.913284));
  TrebleClef.add(new HarmonicParams(160, 0.019474, 1.927196));
  TrebleClef.add(new HarmonicParams(-160, 0.006790, -2.390931));
  TrebleClef.add(new HarmonicParams(161, 0.005490, -0.566886));
  TrebleClef.add(new HarmonicParams(-161, 0.012080, -3.061935));
  TrebleClef.add(new HarmonicParams(162, 0.013888, -1.768205));
  TrebleClef.add(new HarmonicParams(-162, 0.006589, -3.120389));
  TrebleClef.add(new HarmonicParams(163, 0.005840, -0.297739));
  TrebleClef.add(new HarmonicParams(-163, 0.012249, 2.393048));
  TrebleClef.add(new HarmonicParams(164, 0.011955, -2.480794));
  TrebleClef.add(new HarmonicParams(-164, 0.020585, -0.980793));
  TrebleClef.add(new HarmonicParams(165, 0.0, 0.0));
  TrebleClef.add(new HarmonicParams(-165, 0.002442, -1.954334));
  TrebleClef.add(new HarmonicParams(166, 0.027455, -0.740598));
  TrebleClef.add(new HarmonicParams(-166, 0.017047, -2.313005));
  TrebleClef.add(new HarmonicParams(167, 0.016939, -3.117438));
  TrebleClef.add(new HarmonicParams(-167, 0.018259, -0.749601));
  TrebleClef.add(new HarmonicParams(168, 0.016084, 2.354014));
  TrebleClef.add(new HarmonicParams(-168, 0.002576, -0.442382));
  TrebleClef.add(new HarmonicParams(169, 0.003536, -1.590957));
  TrebleClef.add(new HarmonicParams(-169, 0.003196, -2.441034));
  TrebleClef.add(new HarmonicParams(170, 0.007222, -2.070886));
  TrebleClef.add(new HarmonicParams(-170, 0.012652, 2.026336));
  TrebleClef.add(new HarmonicParams(171, 0.013710, 1.860870));
  TrebleClef.add(new HarmonicParams(-171, 0.013336, -2.090570));
  TrebleClef.add(new HarmonicParams(172, 0.021381, -2.728691));
  TrebleClef.add(new HarmonicParams(-172, 0.014995, 0.161382));
  TrebleClef.add(new HarmonicParams(173, 0.018450, 1.704407));
  TrebleClef.add(new HarmonicParams(-173, 0.024820, 1.784685));
  TrebleClef.add(new HarmonicParams(174, 0.008410, -0.458138));
  TrebleClef.add(new HarmonicParams(-174, 0.014721, -2.345238));
  TrebleClef.add(new HarmonicParams(175, 0.011469, 2.596575));
  TrebleClef.add(new HarmonicParams(-175, 0.003352, 2.498476));
  TrebleClef.add(new HarmonicParams(176, 0.007564, 0.396052));
  TrebleClef.add(new HarmonicParams(-176, 0.007274, 1.621531));
  TrebleClef.add(new HarmonicParams(177, 0.006279, -2.448887));
  TrebleClef.add(new HarmonicParams(-177, 0.004571, -2.891838));
  TrebleClef.add(new HarmonicParams(178, 0.016818, 1.211856));
  TrebleClef.add(new HarmonicParams(-178, 0.029014, 2.359427));
  TrebleClef.add(new HarmonicParams(179, 0.023819, -1.174551));
  TrebleClef.add(new HarmonicParams(-179, 0.022560, -2.410094));
  TrebleClef.add(new HarmonicParams(180, 0.005228, -1.259294));
  TrebleClef.add(new HarmonicParams(-180, 0.015864, 0.387706));
  TrebleClef.add(new HarmonicParams(181, 0.002582, 0.207475));
  TrebleClef.add(new HarmonicParams(-181, 0.018276, -2.844765));
  TrebleClef.add(new HarmonicParams(182, 0.019654, -2.793029));
  TrebleClef.add(new HarmonicParams(-182, 0.001978, 0.494182));
  TrebleClef.add(new HarmonicParams(183, 0.014560, 0.316563));
  TrebleClef.add(new HarmonicParams(-183, 0.007987, -1.486380));
  TrebleClef.add(new HarmonicParams(184, 0.016690, -2.518152));
  TrebleClef.add(new HarmonicParams(-184, 0.020058, -1.092488));
  TrebleClef.add(new HarmonicParams(185, 0.023063, 2.262101));
  TrebleClef.add(new HarmonicParams(-185, 0.012183, 1.371977));
  TrebleClef.add(new HarmonicParams(186, 0.006842, -2.545772));
  TrebleClef.add(new HarmonicParams(-186, 0.007152, -1.671243));
  TrebleClef.add(new HarmonicParams(187, 0.007632, 1.533382));
  TrebleClef.add(new HarmonicParams(-187, 0.005968, 0.315799));
  TrebleClef.add(new HarmonicParams(188, 0.004162, 2.041270));
  TrebleClef.add(new HarmonicParams(-188, 0.009212, 2.197240));
  TrebleClef.add(new HarmonicParams(189, 0.007966, -2.335429));
  TrebleClef.add(new HarmonicParams(-189, 0.002194, 0.627377));
  TrebleClef.add(new HarmonicParams(190, 0.014923, 1.750419));
  TrebleClef.add(new HarmonicParams(-190, 0.009082, 2.093363));
  TrebleClef.add(new HarmonicParams(191, 0.006931, 0.040765));
  TrebleClef.add(new HarmonicParams(-191, 0.010505, -2.649913));
  TrebleClef.add(new HarmonicParams(192, 0.008236, -2.335927));
  TrebleClef.add(new HarmonicParams(-192, 0.016006, 1.909358));
  TrebleClef.add(new HarmonicParams(193, 0.013097, 1.934310));
  TrebleClef.add(new HarmonicParams(-193, 0.004748, -2.354919));
  TrebleClef.add(new HarmonicParams(194, 0.003381, -0.630924));
  TrebleClef.add(new HarmonicParams(-194, 0.007605, -3.029177));
  TrebleClef.add(new HarmonicParams(195, 0.008790, -1.749004));
  TrebleClef.add(new HarmonicParams(-195, 0.004962, 3.003491));
  TrebleClef.add(new HarmonicParams(196, 0.004783, -0.405624));
  TrebleClef.add(new HarmonicParams(-196, 0.008566, 2.482362));
  TrebleClef.add(new HarmonicParams(197, 0.008634, -2.460415));
  TrebleClef.add(new HarmonicParams(-197, 0.014729, -0.953384));
  TrebleClef.add(new HarmonicParams(198, 0.0, 0.0));
  TrebleClef.add(new HarmonicParams(-198, 0.001605, -1.968954));
  TrebleClef.add(new HarmonicParams(199, 0.018717, -0.755406));
  TrebleClef.add(new HarmonicParams(-199, 0.011585, -2.322759));
}


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
  ArrayList<Harmonic> hs = fs.getHarmonics();
  for (int i = 0; i < hs.size(); i++) {
    Harmonic h = hs.get(i);
    assert h.index == Mickey.get(i).index;
    assert h.index == TrebleClef.get(i).index;
    h.r = Mickey.get(i).r * blendRatio + TrebleClef.get(i).r * (1.0 - blendRatio);
    h.alpha = Mickey.get(i).alpha * blendRatio + TrebleClef.get(i).alpha * (1.0 - blendRatio);
  }
  fsPath = new ArrayList<PVector>();
  for (float t = 0; t <= TWO_PI; t += step) {
    fs.calcValue(t);
    PVector p = new PVector();
    fs.getValue(maxHarmonic, p);
    fsPath.add(p);
  }
}

void drawPath() {
  beginShape();
  PVector start = null;
  for (PVector p : fsPath) {
    vertex(p.x, p.y);
  }
  vertex(fsPath.get(0).x, fsPath.get(0).y);
  endShape();
}

void setup() {
  // size(640, 360, P2D);
  size(1000, 1000, P2D);
  background(0);
  smooth(8);

  // noLoop();
  // for (HarmonicParams p : TrebleClef) {
  //   fs.setHarmonic(p.index, p.r, p.alpha);
  // }

  for (HarmonicParams p : Mickey) {
    fs.setHarmonic(p.index, p.r, p.alpha);
  }

  populatePath(0.01, maxHarmonic);
}

float t = 0.0;
PVector tempLE = new PVector();
int maxHarmonic = 200;
float blendRatio = 0.0;

void drawVectorChain() {
  beginShape();
  vertex(0, 0);
  tempLE.set(0, 0);
  int i = 0;
  for (Harmonic h : fs.getHarmonics()) {
    if (i >= maxHarmonic) break;
    i++;
    tempLE.add(h.value);
    vertex(tempLE.x, tempLE.y);
  }
  endShape();
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

  t += 0.003;


  // if (frameCount % 50 == 0) println(frameRate);
}

void keyPressed() {
  if (key != CODED)
    return;
  if (keyCode == LEFT) {
    blendRatio -= 0.01;
    println(blendRatio);
  }
  if (keyCode == RIGHT) {
    blendRatio += 0.01;
    println(blendRatio);
  }
  if (keyCode == DOWN) {
    blendRatio -= 0.1;
    println(blendRatio);
  }
  if (keyCode == UP) {
    blendRatio += 0.1;
    println(blendRatio);
  }
  // if (keyCode == LEFT) {
  //   maxHarmonic--;
  //   println(maxHarmonic);
  // }
  // if (keyCode == RIGHT) {
  //   maxHarmonic++;
  //   println(maxHarmonic);
  // }
  // if (keyCode == DOWN) {
  //   maxHarmonic -= 10;
  //   println(maxHarmonic);
  // }
  // if (keyCode == UP) {
  //   maxHarmonic += 10;
  //   println(maxHarmonic);
  // }
  populatePath(0.01, maxHarmonic);
}