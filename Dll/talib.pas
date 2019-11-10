unit talib;

interface

const
  dllname  ='talib.dll';

type
  TA_RetCode = Integer;

type TA_MAType=(
  TA_MAType_SMA=0,
  TA_MAType_EMA,
  TA_MAType_WMA,
  TA_MAType_DEMA,
  TA_MAType_TEMA,
  TA_MAType_TRIMA,
  TA_MAType_KAMA,
  TA_MAType_MAMA,
  TA_MAType_T3);


function Z_Initialize():TA_RetCode;stdCall external dllname;

function Z_Shutdown():TA_RetCode;stdCall external dllname;

function Z_Acos(startIdx:Integer; endIdx:Integer; inReal:PDouble; var outBegIdx:Integer; var outNBElement:Integer; outReal:Pdouble):TA_RetCode;stdCall external dllname;

function Z_Ad(startIdx:Integer; endIdx:Integer;  inHigh: PDouble;  inLow: PDouble;  inClose: PDouble;  inVolume: PDouble; var outBegIdx:Integer; var outNBElement:Integer; outReal:Pdouble):TA_RetCode;stdCall external dllname;

function Z_Add(startIdx:Integer; endIdx:Integer;  inReal0: PDouble;  inReal1: PDouble; var outBegIdx:Integer; var outNBElement:Integer; outReal:Pdouble):TA_RetCode;stdCall external dllname;

function Z_AdOsc(startIdx:Integer; endIdx:Integer;  inHigh: PDouble;  inLow: PDouble;  inClose: PDouble;  inVolume: PDouble; optInFastPeriod:Integer; { From 2 to 100000 } optInSlowPeriod:integer; { From 2 to 100000 } var outBegIdx:Integer; var outNBElement:Integer; outReal:Pdouble):TA_RetCode;stdCall external dllname;

function Z_Adx(startIdx:Integer; endIdx:Integer;  inHigh: PDouble;  inLow: PDouble;  inClose: PDouble; optInTimePeriod:Integer; { From 2 to 100000 } var outBegIdx:Integer; var outNBElement:Integer; outReal:Pdouble):TA_RetCode;stdCall external dllname;

function Z_Adxr(startIdx:Integer; endIdx:Integer;  inHigh: PDouble;  inLow: PDouble;  inClose: PDouble; optInTimePeriod:Integer; { From 2 to 100000 } var outBegIdx:Integer; var outNBElement:Integer; outReal:Pdouble):TA_RetCode;stdCall external dllname;

function Z_Apo(startIdx:Integer; endIdx:Integer;  inReal:PDouble; optInFastPeriod:Integer; { From 2 to 100000 } optInSlowPeriod:integer; { From 2 to 100000 } optInMAType:TA_MAType; var outBegIdx:Integer; var outNBElement:Integer; outReal:Pdouble):TA_RetCode;stdCall external dllname;

function Z_AroOn(startIdx:Integer; endIdx:Integer;  inHigh: PDouble;  inLow: PDouble; optInTimePeriod:Integer; { From 2 to 100000 } var outBegIdx:Integer; var outNBElement:Integer; outAroonDown:pDouble; outAroonUp:pDouble):TA_RetCode;stdCall external dllname;

function Z_AroOnOsc(startIdx:Integer; endIdx:Integer;  inHigh: PDouble;  inLow: PDouble; optInTimePeriod:Integer; { From 2 to 100000 } var outBegIdx:Integer; var outNBElement:Integer; outReal:Pdouble):TA_RetCode;stdCall external dllname;

function Z_ASin(startIdx:Integer; endIdx:Integer;  inReal:PDouble; var outBegIdx:Integer; var outNBElement:Integer; outReal:Pdouble):TA_RetCode;stdCall external dllname;

function Z_Atan(startIdx:Integer; endIdx:Integer;  inReal:PDouble; var outBegIdx:Integer; var outNBElement:Integer; outReal:Pdouble):TA_RetCode;stdCall external dllname;

function Z_Atr(startIdx:Integer; endIdx:Integer;  inHigh: PDouble;  inLow: PDouble;  inClose: PDouble; optInTimePeriod:Integer; { From 1 to 100000 } var outBegIdx:Integer; var outNBElement:Integer; outReal:Pdouble):TA_RetCode;stdCall external dllname;

function Z_AvgPrice(startIdx:Integer; endIdx:Integer;  inOpen: PDouble;  inHigh: PDouble;  inLow: PDouble;  inClose: PDouble; var outBegIdx:Integer; var outNBElement:Integer; outReal:Pdouble):TA_RetCode;stdCall external dllname;

function Z_BBands(startIdx:Integer; endIdx:Integer;  inReal:PDouble; optInTimePeriod:Integer; { From 2 to 100000 } optInNbDevUp:double; { From TA_REAL_MIN to TA_REAL_MAX } optInNbDevDn:Double; { From TA_REAL_MIN to TA_REAL_MAX } optInMAType:TA_MAType; var outBegIdx:Integer; var outNBElement:Integer; outRealUpperBand:PDouble; outRealMiddleBand:pDouble; outRealLowerBand:PDouble):TA_RetCode;stdCall external dllname;

function Z_Beta(startIdx:Integer; endIdx:Integer;  inReal0: PDouble;  inReal1: PDouble; optInTimePeriod:Integer; { From 1 to 100000 } var outBegIdx:Integer; var outNBElement:Integer; outReal:Pdouble):TA_RetCode;stdCall external dllname;

function Z_Bop(startIdx:Integer; endIdx:Integer;  inOpen: PDouble;  inHigh: PDouble;  inLow: PDouble;  inClose: PDouble; var outBegIdx:Integer; var outNBElement:Integer; outReal:Pdouble):TA_RetCode;stdCall external dllname;

function Z_Cci(startIdx:Integer; endIdx:Integer;  inHigh: PDouble;  inLow: PDouble;  inClose: PDouble; optInTimePeriod:Integer; { From 2 to 100000 } var outBegIdx:Integer; var outNBElement:Integer; outReal:Pdouble):TA_RetCode;stdCall external dllname;

function Z_Cdl2Crows(startIdx:Integer; endIdx:Integer;  inOpen: PDouble;  inHigh: PDouble;  inLow: PDouble;  inClose: PDouble; var outBegIdx:Integer; var outNBElement:Integer; var outInteger:Integer):TA_RetCode;stdCall external dllname;

function Z_Cdl3BlackCrows(startIdx:Integer; endIdx:Integer;  inOpen: PDouble;  inHigh: PDouble;  inLow: PDouble;  inClose: PDouble; var outBegIdx:Integer; var outNBElement:Integer; var outInteger:Integer):TA_RetCode;stdCall external dllname;

function Z_Cdl3InSide(startIdx:Integer; endIdx:Integer;  inOpen: PDouble;  inHigh: PDouble;  inLow: PDouble;  inClose: PDouble; var outBegIdx:Integer; var outNBElement:Integer; var outInteger:Integer):TA_RetCode;stdCall external dllname;

function Z_Cdl3LineStrike(startIdx:Integer; endIdx:Integer;  inOpen: PDouble;  inHigh: PDouble;  inLow: PDouble;  inClose: PDouble; var outBegIdx:Integer; var outNBElement:Integer; var outInteger:Integer):TA_RetCode;stdCall external dllname;

function Z_Cdl3OutSide(startIdx:Integer; endIdx:Integer;  inOpen: PDouble;  inHigh: PDouble;  inLow: PDouble;  inClose: PDouble; var outBegIdx:Integer; var outNBElement:Integer; var outInteger:Integer):TA_RetCode;stdCall external dllname;

function Z_Cdl3StarsInSouth(startIdx:Integer; endIdx:Integer;  inOpen: PDouble;  inHigh: PDouble;  inLow: PDouble;  inClose: PDouble; var outBegIdx:Integer; var outNBElement:Integer; var outInteger:Integer):TA_RetCode;stdCall external dllname;

function Z_Cdl3WhiteSoldiers(startIdx:Integer; endIdx:Integer;  inOpen: PDouble;  inHigh: PDouble;  inLow: PDouble;  inClose: PDouble; var outBegIdx:Integer; var outNBElement:Integer; var outInteger:Integer):TA_RetCode;stdCall external dllname;

function Z_CdlAbandOnedBaBy(startIdx:Integer; endIdx:Integer;  inOpen: PDouble;  inHigh: PDouble;  inLow: PDouble;  inClose: PDouble; optInPenetration:double; { From 0 to TA_REAL_MAX } var outBegIdx:Integer; var outNBElement:Integer; var outInteger:Integer):TA_RetCode;stdCall external dllname;

function Z_CdlAdvanceBlock(startIdx:Integer; endIdx:Integer;  inOpen: PDouble;  inHigh: PDouble;  inLow: PDouble;  inClose: PDouble; var outBegIdx:Integer; var outNBElement:Integer; var outInteger:Integer):TA_RetCode;stdCall external dllname;

function Z_CdlBeltHold(startIdx:Integer; endIdx:Integer;  inOpen: PDouble;  inHigh: PDouble;  inLow: PDouble;  inClose: PDouble; var outBegIdx:Integer; var outNBElement:Integer; var outInteger:Integer):TA_RetCode;stdCall external dllname;

function Z_CdlBreakaway(startIdx:Integer; endIdx:Integer;  inOpen: PDouble;  inHigh: PDouble;  inLow: PDouble;  inClose: PDouble; var outBegIdx:Integer; var outNBElement:Integer; var outInteger:Integer):TA_RetCode;stdCall external dllname;

function Z_CdlCloSingMarubozu(startIdx:Integer; endIdx:Integer;  inOpen: PDouble;  inHigh: PDouble;  inLow: PDouble;  inClose: PDouble; var outBegIdx:Integer; var outNBElement:Integer; var outInteger:Integer):TA_RetCode;stdCall external dllname;

function Z_CdlCOncealBaBySwall(startIdx:Integer; endIdx:Integer;  inOpen: PDouble;  inHigh: PDouble;  inLow: PDouble;  inClose: PDouble; var outBegIdx:Integer; var outNBElement:Integer; var outInteger:Integer):TA_RetCode;stdCall external dllname;

function Z_CdlCounterattack(startIdx:Integer; endIdx:Integer;  inOpen: PDouble;  inHigh: PDouble;  inLow: PDouble;  inClose: PDouble; var outBegIdx:Integer; var outNBElement:Integer; var outInteger:Integer):TA_RetCode;stdCall external dllname;

function Z_CdlDarkCloudCover(startIdx:Integer; endIdx:Integer;  inOpen: PDouble;  inHigh: PDouble;  inLow: PDouble;  inClose: PDouble; optInPenetration:double; { From 0 to TA_REAL_MAX } var outBegIdx:Integer; var outNBElement:Integer; var outInteger:Integer):TA_RetCode;stdCall external dllname;

function Z_CdlDoji(startIdx:Integer; endIdx:Integer;  inOpen: PDouble;  inHigh: PDouble;  inLow: PDouble;  inClose: PDouble; var outBegIdx:Integer; var outNBElement:Integer; var outInteger:Integer):TA_RetCode;stdCall external dllname;

function Z_CdlDojiStar(startIdx:Integer; endIdx:Integer;  inOpen: PDouble;  inHigh: PDouble;  inLow: PDouble;  inClose: PDouble; var outBegIdx:Integer; var outNBElement:Integer; var outInteger:Integer):TA_RetCode;stdCall external dllname;

function Z_CdlDragOnflyDoji(startIdx:Integer; endIdx:Integer;  inOpen: PDouble;  inHigh: PDouble;  inLow: PDouble;  inClose: PDouble; var outBegIdx:Integer; var outNBElement:Integer; var outInteger:Integer):TA_RetCode;stdCall external dllname;

function Z_CdlEngulfing(startIdx:Integer; endIdx:Integer;  inOpen: PDouble;  inHigh: PDouble;  inLow: PDouble;  inClose: PDouble; var outBegIdx:Integer; var outNBElement:Integer; var outInteger:Integer):TA_RetCode;stdCall external dllname;

function Z_CdlEveningDojiStar(startIdx:Integer; endIdx:Integer;  inOpen: PDouble;  inHigh: PDouble;  inLow: PDouble;  inClose: PDouble; optInPenetration:double; { From 0 to TA_REAL_MAX } var outBegIdx:Integer; var outNBElement:Integer; var outInteger:Integer):TA_RetCode;stdCall external dllname;

function Z_CdlEveningStar(startIdx:Integer; endIdx:Integer;  inOpen: PDouble;  inHigh: PDouble;  inLow: PDouble;  inClose: PDouble; optInPenetration:double; { From 0 to TA_REAL_MAX } var outBegIdx:Integer; var outNBElement:Integer; var outInteger:Integer):TA_RetCode;stdCall external dllname;

function Z_CdlGapSidesideWhite(startIdx:Integer; endIdx:Integer;  inOpen: PDouble;  inHigh: PDouble;  inLow: PDouble;  inClose: PDouble; var outBegIdx:Integer; var outNBElement:Integer; var outInteger:Integer):TA_RetCode;stdCall external dllname;

function Z_CdlGravestOneDoji(startIdx:Integer; endIdx:Integer;  inOpen: PDouble;  inHigh: PDouble;  inLow: PDouble;  inClose: PDouble; var outBegIdx:Integer; var outNBElement:Integer; var outInteger:Integer):TA_RetCode;stdCall external dllname;

function Z_CdlHammer(startIdx:Integer; endIdx:Integer;  inOpen: PDouble;  inHigh: PDouble;  inLow: PDouble;  inClose: PDouble; var outBegIdx:Integer; var outNBElement:Integer; var outInteger:Integer):TA_RetCode;stdCall external dllname;

function Z_CdlHangingMan(startIdx:Integer; endIdx:Integer;  inOpen: PDouble;  inHigh: PDouble;  inLow: PDouble;  inClose: PDouble; var outBegIdx:Integer; var outNBElement:Integer; var outInteger:Integer):TA_RetCode;stdCall external dllname;

function Z_CdlHarami(startIdx:Integer; endIdx:Integer;  inOpen: PDouble;  inHigh: PDouble;  inLow: PDouble;  inClose: PDouble; var outBegIdx:Integer; var outNBElement:Integer; var outInteger:Integer):TA_RetCode;stdCall external dllname;

function Z_CdlHaramiCross(startIdx:Integer; endIdx:Integer;  inOpen: PDouble;  inHigh: PDouble;  inLow: PDouble;  inClose: PDouble; var outBegIdx:Integer; var outNBElement:Integer; var outInteger:Integer):TA_RetCode;stdCall external dllname;

function Z_CdlHighWave(startIdx:Integer; endIdx:Integer;  inOpen: PDouble;  inHigh: PDouble;  inLow: PDouble;  inClose: PDouble; var outBegIdx:Integer; var outNBElement:Integer; var outInteger:Integer):TA_RetCode;stdCall external dllname;

function Z_CdlHikkake(startIdx:Integer; endIdx:Integer;  inOpen: PDouble;  inHigh: PDouble;  inLow: PDouble;  inClose: PDouble; var outBegIdx:Integer; var outNBElement:Integer; var outInteger:Integer):TA_RetCode;stdCall external dllname;

function Z_CdlHikkakeMod(startIdx:Integer; endIdx:Integer;  inOpen: PDouble;  inHigh: PDouble;  inLow: PDouble;  inClose: PDouble; var outBegIdx:Integer; var outNBElement:Integer; var outInteger:Integer):TA_RetCode;stdCall external dllname;

function Z_CdlHoMingPigeOn(startIdx:Integer; endIdx:Integer;  inOpen: PDouble;  inHigh: PDouble;  inLow: PDouble;  inClose: PDouble; var outBegIdx:Integer; var outNBElement:Integer; var outInteger:Integer):TA_RetCode;stdCall external dllname;

function Z_CdlIdentical3Crows(startIdx:Integer; endIdx:Integer;  inOpen: PDouble;  inHigh: PDouble;  inLow: PDouble;  inClose: PDouble; var outBegIdx:Integer; var outNBElement:Integer; var outInteger:Integer):TA_RetCode;stdCall external dllname;

function Z_CdlinNeck(startIdx:Integer; endIdx:Integer;  inOpen: PDouble;  inHigh: PDouble;  inLow: PDouble;  inClose: PDouble; var outBegIdx:Integer; var outNBElement:Integer; var outInteger:Integer):TA_RetCode;stdCall external dllname;

function Z_CdlinvertedHammer(startIdx:Integer; endIdx:Integer;  inOpen: PDouble;  inHigh: PDouble;  inLow: PDouble;  inClose: PDouble; var outBegIdx:Integer; var outNBElement:Integer; var outInteger:Integer):TA_RetCode;stdCall external dllname;

function Z_CdlKicking(startIdx:Integer; endIdx:Integer;  inOpen: PDouble;  inHigh: PDouble;  inLow: PDouble;  inClose: PDouble; var outBegIdx:Integer; var outNBElement:Integer; var outInteger:Integer):TA_RetCode;stdCall external dllname;

function Z_CdlKickingByLength(startIdx:Integer; endIdx:Integer;  inOpen: PDouble;  inHigh: PDouble;  inLow: PDouble;  inClose: PDouble; var outBegIdx:Integer; var outNBElement:Integer; var outInteger:Integer):TA_RetCode;stdCall external dllname;

function Z_CdlLadderBottom(startIdx:Integer; endIdx:Integer;  inOpen: PDouble;  inHigh: PDouble;  inLow: PDouble;  inClose: PDouble; var outBegIdx:Integer; var outNBElement:Integer; var outInteger:Integer):TA_RetCode;stdCall external dllname;

function Z_CdlLOngLeggedDoji(startIdx:Integer; endIdx:Integer;  inOpen: PDouble;  inHigh: PDouble;  inLow: PDouble;  inClose: PDouble; var outBegIdx:Integer; var outNBElement:Integer; var outInteger:Integer):TA_RetCode;stdCall external dllname;

function Z_CdlLOngLine(startIdx:Integer; endIdx:Integer;  inOpen: PDouble;  inHigh: PDouble;  inLow: PDouble;  inClose: PDouble; var outBegIdx:Integer; var outNBElement:Integer; var outInteger:Integer):TA_RetCode;stdCall external dllname;

function Z_CdlMarubozu(startIdx:Integer; endIdx:Integer;  inOpen: PDouble;  inHigh: PDouble;  inLow: PDouble;  inClose: PDouble; var outBegIdx:Integer; var outNBElement:Integer; var outInteger:Integer):TA_RetCode;stdCall external dllname;

function Z_CdlMatchingLow(startIdx:Integer; endIdx:Integer;  inOpen: PDouble;  inHigh: PDouble;  inLow: PDouble;  inClose: PDouble; var outBegIdx:Integer; var outNBElement:Integer; var outInteger:Integer):TA_RetCode;stdCall external dllname;

function Z_CdlMatHold(startIdx:Integer; endIdx:Integer;  inOpen: PDouble;  inHigh: PDouble;  inLow: PDouble;  inClose: PDouble; optInPenetration:double; { From 0 to TA_REAL_MAX } var outBegIdx:Integer; var outNBElement:Integer; var outInteger:Integer):TA_RetCode;stdCall external dllname;

function Z_CdlMorningDojiStar(startIdx:Integer; endIdx:Integer;  inOpen: PDouble;  inHigh: PDouble;  inLow: PDouble;  inClose: PDouble; optInPenetration:double; { From 0 to TA_REAL_MAX } var outBegIdx:Integer; var outNBElement:Integer; var outInteger:Integer):TA_RetCode;stdCall external dllname;

function Z_CdlMorningStar(startIdx:Integer; endIdx:Integer;  inOpen: PDouble;  inHigh: PDouble;  inLow: PDouble;  inClose: PDouble; optInPenetration:double; { From 0 to TA_REAL_MAX } var outBegIdx:Integer; var outNBElement:Integer; var outInteger:Integer):TA_RetCode;stdCall external dllname;

function Z_CdlOnNeck(startIdx:Integer; endIdx:Integer;  inOpen: PDouble;  inHigh: PDouble;  inLow: PDouble;  inClose: PDouble; var outBegIdx:Integer; var outNBElement:Integer; var outInteger:Integer):TA_RetCode;stdCall external dllname;

function Z_CdlPiercing(startIdx:Integer; endIdx:Integer;  inOpen: PDouble;  inHigh: PDouble;  inLow: PDouble;  inClose: PDouble; var outBegIdx:Integer; var outNBElement:Integer; var outInteger:Integer):TA_RetCode;stdCall external dllname;

function Z_CdlRickshawMan(startIdx:Integer; endIdx:Integer;  inOpen: PDouble;  inHigh: PDouble;  inLow: PDouble;  inClose: PDouble; var outBegIdx:Integer; var outNBElement:Integer; var outInteger:Integer):TA_RetCode;stdCall external dllname;

function Z_CdlRiseFall3Methods(startIdx:Integer; endIdx:Integer;  inOpen: PDouble;  inHigh: PDouble;  inLow: PDouble;  inClose: PDouble; var outBegIdx:Integer; var outNBElement:Integer; var outInteger:Integer):TA_RetCode;stdCall external dllname;

function Z_CdlSeparatingLines(startIdx:Integer; endIdx:Integer;  inOpen: PDouble;  inHigh: PDouble;  inLow: PDouble;  inClose: PDouble; var outBegIdx:Integer; var outNBElement:Integer; var outInteger:Integer):TA_RetCode;stdCall external dllname;

function Z_CdlShootingStar(startIdx:Integer; endIdx:Integer;  inOpen: PDouble;  inHigh: PDouble;  inLow: PDouble;  inClose: PDouble; var outBegIdx:Integer; var outNBElement:Integer; var outInteger:Integer):TA_RetCode;stdCall external dllname;

function Z_CdlShortLine(startIdx:Integer; endIdx:Integer;  inOpen: PDouble;  inHigh: PDouble;  inLow: PDouble;  inClose: PDouble; var outBegIdx:Integer; var outNBElement:Integer; var outInteger:Integer):TA_RetCode;stdCall external dllname;

function Z_CdlSpinningTop(startIdx:Integer; endIdx:Integer;  inOpen: PDouble;  inHigh: PDouble;  inLow: PDouble;  inClose: PDouble; var outBegIdx:Integer; var outNBElement:Integer; var outInteger:Integer):TA_RetCode;stdCall external dllname;

function Z_CdlStalledPattern(startIdx:Integer; endIdx:Integer;  inOpen: PDouble;  inHigh: PDouble;  inLow: PDouble;  inClose: PDouble; var outBegIdx:Integer; var outNBElement:Integer; var outInteger:Integer):TA_RetCode;stdCall external dllname;

function Z_CdlStickSandwich(startIdx:Integer; endIdx:Integer;  inOpen: PDouble;  inHigh: PDouble;  inLow: PDouble;  inClose: PDouble; var outBegIdx:Integer; var outNBElement:Integer; var outInteger:Integer):TA_RetCode;stdCall external dllname;

function Z_CdlTakuri(startIdx:Integer; endIdx:Integer;  inOpen: PDouble;  inHigh: PDouble;  inLow: PDouble;  inClose: PDouble; var outBegIdx:Integer; var outNBElement:Integer; var outInteger:Integer):TA_RetCode;stdCall external dllname;

function Z_CdlTasukiGap(startIdx:Integer; endIdx:Integer;  inOpen: PDouble;  inHigh: PDouble;  inLow: PDouble;  inClose: PDouble; var outBegIdx:Integer; var outNBElement:Integer; var outInteger:Integer):TA_RetCode;stdCall external dllname;

function Z_CdlThrusting(startIdx:Integer; endIdx:Integer;  inOpen: PDouble;  inHigh: PDouble;  inLow: PDouble;  inClose: PDouble; var outBegIdx:Integer; var outNBElement:Integer; var outInteger:Integer):TA_RetCode;stdCall external dllname;

function Z_CdltriStar(startIdx:Integer; endIdx:Integer;  inOpen: PDouble;  inHigh: PDouble;  inLow: PDouble;  inClose: PDouble; var outBegIdx:Integer; var outNBElement:Integer; var outInteger:Integer):TA_RetCode;stdCall external dllname;

function Z_CdlUnique3River(startIdx:Integer; endIdx:Integer;  inOpen: PDouble;  inHigh: PDouble;  inLow: PDouble;  inClose: PDouble; var outBegIdx:Integer; var outNBElement:Integer; var outInteger:Integer):TA_RetCode;stdCall external dllname;

function Z_CdlupSideGap2Crows(startIdx:Integer; endIdx:Integer;  inOpen: PDouble;  inHigh: PDouble;  inLow: PDouble;  inClose: PDouble; var outBegIdx:Integer; var outNBElement:Integer; var outInteger:Integer):TA_RetCode;stdCall external dllname;

function Z_CdlxSideGap3Methods(startIdx:Integer; endIdx:Integer;  inOpen: PDouble;  inHigh: PDouble;  inLow: PDouble;  inClose: PDouble; var outBegIdx:Integer; var outNBElement:Integer; var outInteger:Integer):TA_RetCode;stdCall external dllname;

function Z_Ceil(startIdx:Integer; endIdx:Integer;  inReal:PDouble; var outBegIdx:Integer; var outNBElement:Integer; outReal:Pdouble):TA_RetCode;stdCall external dllname;

function Z_Cmo(startIdx:Integer; endIdx:Integer;  inReal:PDouble; optInTimePeriod:Integer; { From 2 to 100000 } var outBegIdx:Integer; var outNBElement:Integer; outReal:Pdouble):TA_RetCode;stdCall external dllname;

function Z_Correl(startIdx:Integer; endIdx:Integer;  inReal0: PDouble;  inReal1: PDouble; optInTimePeriod:Integer; { From 1 to 100000 } var outBegIdx:Integer; var outNBElement:Integer; outReal:Pdouble):TA_RetCode;stdCall external dllname;

function Z_Cos(startIdx:Integer; endIdx:Integer;  inReal:PDouble; var outBegIdx:Integer; var outNBElement:Integer; outReal:Pdouble):TA_RetCode;stdCall external dllname;

function Z_Cosh(startIdx:Integer; endIdx:Integer;  inReal:PDouble; var outBegIdx:Integer; var outNBElement:Integer; outReal:Pdouble):TA_RetCode;stdCall external dllname;

function Z_Dema(startIdx:Integer; endIdx:Integer;  inReal:PDouble; optInTimePeriod:Integer; { From 2 to 100000 } var outBegIdx:Integer; var outNBElement:Integer; outReal:Pdouble):TA_RetCode;stdCall external dllname;

function Z_Div(startIdx:Integer; endIdx:Integer;  inReal0: PDouble;  inReal1: PDouble; var outBegIdx:Integer; var outNBElement:Integer; outReal:Pdouble):TA_RetCode;stdCall external dllname;

function Z_Dx(startIdx:Integer; endIdx:Integer;  inHigh: PDouble;  inLow: PDouble;  inClose: PDouble; optInTimePeriod:Integer; { From 2 to 100000 } var outBegIdx:Integer; var outNBElement:Integer; outReal:Pdouble):TA_RetCode;stdCall external dllname;

function Z_Ema(startIdx:Integer; endIdx:Integer;  inReal:PDouble; optInTimePeriod:Integer; { From 2 to 100000 } var outBegIdx:Integer; var outNBElement:Integer; outReal:Pdouble):TA_RetCode;stdCall external dllname;

function Z_Exp(startIdx:Integer; endIdx:Integer;  inReal:PDouble; var outBegIdx:Integer; var outNBElement:Integer; outReal:Pdouble):TA_RetCode;stdCall external dllname;

function Z_Floor(startIdx:Integer; endIdx:Integer;  inReal:PDouble; var outBegIdx:Integer; var outNBElement:Integer; outReal:Pdouble):TA_RetCode;stdCall external dllname;

function Z_HtDcPeriod(startIdx:Integer; endIdx:Integer;  inReal:PDouble; var outBegIdx:Integer; var outNBElement:Integer; outReal:Pdouble):TA_RetCode;stdCall external dllname;

function Z_HtDcPhase(startIdx:Integer; endIdx:Integer;  inReal:PDouble; var outBegIdx:Integer; var outNBElement:Integer; outReal:Pdouble):TA_RetCode;stdCall external dllname;

function Z_HtPhasor(startIdx:Integer; endIdx:Integer;  inReal:PDouble; var outBegIdx:Integer; var outNBElement:Integer; outInPhase:Pdouble; outQuadrature:Pdouble):TA_RetCode;stdCall external dllname;

function Z_HtSine(startIdx:Integer; endIdx:Integer;  inReal:PDouble; var outBegIdx:Integer; var outNBElement:Integer; outSine:Pdouble; outLeadSine:Pdouble):TA_RetCode;stdCall external dllname;

function Z_HtTrendLine(startIdx:Integer; endIdx:Integer;  inReal:PDouble; var outBegIdx:Integer; var outNBElement:Integer; outReal:Pdouble):TA_RetCode;stdCall external dllname;

function Z_HtTrendMode(startIdx:Integer; endIdx:Integer;  inReal:PDouble; var outBegIdx:Integer; var outNBElement:Integer; var outInteger:Integer):TA_RetCode;stdCall external dllname;

function Z_Kama(startIdx:Integer; endIdx:Integer;  inReal:PDouble; optInTimePeriod:Integer; { From 2 to 100000 } var outBegIdx:Integer; var outNBElement:Integer; outReal:Pdouble):TA_RetCode;stdCall external dllname;

function Z_LinearReg(startIdx:Integer; endIdx:Integer;  inReal:PDouble; optInTimePeriod:Integer; { From 2 to 100000 } var outBegIdx:Integer; var outNBElement:Integer; outReal:Pdouble):TA_RetCode;stdCall external dllname;

function Z_LinearRegAngle(startIdx:Integer; endIdx:Integer;  inReal:PDouble; optInTimePeriod:Integer; { From 2 to 100000 } var outBegIdx:Integer; var outNBElement:Integer; outReal:Pdouble):TA_RetCode;stdCall external dllname;

function Z_LinearRegIntercept(startIdx:Integer; endIdx:Integer;  inReal:PDouble; optInTimePeriod:Integer; { From 2 to 100000 } var outBegIdx:Integer; var outNBElement:Integer; outReal:Pdouble):TA_RetCode;stdCall external dllname;

function Z_LinearRegSlope(startIdx:Integer; endIdx:Integer;  inReal:PDouble; optInTimePeriod:Integer; { From 2 to 100000 } var outBegIdx:Integer; var outNBElement:Integer; outReal:Pdouble):TA_RetCode;stdCall external dllname;

function Z_Ln(startIdx:Integer; endIdx:Integer;  inReal:PDouble; var outBegIdx:Integer; var outNBElement:Integer; outReal:Pdouble):TA_RetCode;stdCall external dllname;

function Z_Log10(startIdx:Integer; endIdx:Integer;  inReal:PDouble; var outBegIdx:Integer; var outNBElement:Integer; outReal:Pdouble):TA_RetCode;stdCall external dllname;

function Z_Ma(startIdx:Integer; endIdx:Integer;  inReal:PDouble; optInTimePeriod:Integer; { From 1 to 100000 } optInMAType:TA_MAType; var outBegIdx:Integer; var outNBElement:Integer; outReal:Pdouble):TA_RetCode;stdCall external dllname;

function Z_Macd(startIdx:Integer; endIdx:Integer;  inReal:PDouble; optInFastPeriod:Integer; { From 2 to 100000 } optInSlowPeriod:integer; { From 2 to 100000 } optInSignalPeriod:Integer; { From 1 to 100000 } var outBegIdx:Integer; var outNBElement:Integer; outMACD:PDouble; outMACDSignal:PDouble; outMACDHist:PDouble):TA_RetCode;stdCall external dllname;

function Z_MacdExt(startIdx:Integer; endIdx:Integer;  inReal:PDouble; optInFastPeriod:Integer; { From 2 to 100000 } optInFastMAType:TA_MAType; optInSlowPeriod:integer; { From 2 to 100000 } optInSlowMAType:TA_MAType; optInSignalPeriod:Integer; { From 1 to 100000 }  optInSignalMAType:TA_MAType; var outBegIdx:Integer; var outNBElement:Integer; outMACD:PDouble; outMACDSignal:PDouble; outMACDHist:PDouble):TA_RetCode;stdCall external dllname;

function Z_MacdFix(startIdx:Integer; endIdx:Integer;  inReal:PDouble; optInSignalPeriod:Integer; { From 1 to 100000 } var outBegIdx:Integer; var outNBElement:Integer; outMACD:PDouble; outMACDSignal:PDouble; outMACDHist:PDouble):TA_RetCode;stdCall external dllname;

function Z_Mama(startIdx:Integer; endIdx:Integer;  inReal:PDouble; optInFastLimit:double; { From 0.01 to 0.99 } optInSlowLimit:double; { From 0.01 to 0.99 } var outBegIdx:Integer; var outNBElement:Integer; outMAMA:PDouble; outFAMA:PDouble):TA_RetCode;stdCall external dllname;

function Z_Mavp(startIdx:Integer; endIdx:Integer;  inReal:PDouble;  inPeriods:Pdouble; optInMinPeriod:Integer; { From 2 to 100000 } optInMaxPeriod:Integer; { From 2 to 100000 } optInMAType:TA_MAType; var outBegIdx:Integer; var outNBElement:Integer; outReal:Pdouble):TA_RetCode;stdCall external dllname;

function Z_Max(startIdx:Integer; endIdx:Integer;  inReal:PDouble; optInTimePeriod:Integer; { From 2 to 100000 } var outBegIdx:Integer; var outNBElement:Integer; outReal:Pdouble):TA_RetCode;stdCall external dllname;

function Z_MaxIndex(startIdx:Integer; endIdx:Integer;  inReal:PDouble; optInTimePeriod:Integer; { From 2 to 100000 } var outBegIdx:Integer; var outNBElement:Integer; var outInteger:Integer):TA_RetCode;stdCall external dllname;

function Z_MedPrice(startIdx:Integer; endIdx:Integer;  inHigh: PDouble;  inLow: PDouble; var outBegIdx:Integer; var outNBElement:Integer; outReal:Pdouble):TA_RetCode;stdCall external dllname;

function Z_Mfi(startIdx:Integer; endIdx:Integer;  inHigh: PDouble;  inLow: PDouble;  inClose: PDouble;  inVolume: PDouble; optInTimePeriod:Integer; { From 2 to 100000 } var outBegIdx:Integer; var outNBElement:Integer; outReal:Pdouble):TA_RetCode;stdCall external dllname;

function Z_MidPoint(startIdx:Integer; endIdx:Integer;  inReal:PDouble; optInTimePeriod:Integer; { From 2 to 100000 } var outBegIdx:Integer; var outNBElement:Integer; outReal:Pdouble):TA_RetCode;stdCall external dllname;

function Z_MidPrice(startIdx:Integer; endIdx:Integer;  inHigh: PDouble;  inLow: PDouble; optInTimePeriod:Integer; { From 2 to 100000 } var outBegIdx:Integer; var outNBElement:Integer; outReal:Pdouble):TA_RetCode;stdCall external dllname;

function Z_Min(startIdx:Integer; endIdx:Integer;  inReal:PDouble; optInTimePeriod:Integer; { From 2 to 100000 } var outBegIdx:Integer; var outNBElement:Integer; outReal:Pdouble):TA_RetCode;stdCall external dllname;

function Z_MinIndex(startIdx:Integer; endIdx:Integer;  inReal:PDouble; optInTimePeriod:Integer; { From 2 to 100000 } var outBegIdx:Integer; var outNBElement:Integer; var outInteger:Integer):TA_RetCode;stdCall external dllname;

function Z_MinMax(startIdx:Integer; endIdx:Integer;  inReal:PDouble; optInTimePeriod:Integer; { From 2 to 100000 } var outBegIdx:Integer; var outNBElement:Integer; outMin:PDouble;outMax:PDouble):TA_RetCode;stdCall external dllname;

function Z_MinMaxIndex(startIdx:Integer; endIdx:Integer;  inReal:PDouble; optInTimePeriod:Integer; { From 2 to 100000 } var outBegIdx:Integer; var outNBElement:Integer; var outMinIdx:Integer; var outMaxIdx:Integer):TA_RetCode;stdCall external dllname;

function Z_MinusDi(startIdx:Integer; endIdx:Integer;  inHigh: PDouble;  inLow: PDouble;  inClose: PDouble; optInTimePeriod:Integer; { From 1 to 100000 } var outBegIdx:Integer; var outNBElement:Integer; outReal:Pdouble):TA_RetCode;stdCall external dllname;

function Z_MinusDm(startIdx:Integer; endIdx:Integer;  inHigh: PDouble;  inLow: PDouble; optInTimePeriod:Integer; { From 1 to 100000 } var outBegIdx:Integer; var outNBElement:Integer; outReal:Pdouble):TA_RetCode;stdCall external dllname;

function Z_Mom(startIdx:Integer; endIdx:Integer;  inReal:PDouble; optInTimePeriod:Integer; { From 1 to 100000 } var outBegIdx:Integer; var outNBElement:Integer; outReal:Pdouble):TA_RetCode;stdCall external dllname;

function Z_Mult(startIdx:Integer; endIdx:Integer;  inReal0: PDouble;  inReal1: PDouble; var outBegIdx:Integer; var outNBElement:Integer; outReal:Pdouble):TA_RetCode;stdCall external dllname;

function Z_Natr(startIdx:Integer; endIdx:Integer;  inHigh: PDouble;  inLow: PDouble;  inClose: PDouble; optInTimePeriod:Integer; { From 1 to 100000 } var outBegIdx:Integer; var outNBElement:Integer; outReal:Pdouble):TA_RetCode;stdCall external dllname;

function Z_Obv(startIdx:Integer; endIdx:Integer;  inReal:PDouble;  inVolume: PDouble; var outBegIdx:Integer; var outNBElement:Integer; outReal:Pdouble):TA_RetCode;stdCall external dllname;

function Z_PlusDi(startIdx:Integer; endIdx:Integer;  inHigh: PDouble;  inLow: PDouble;  inClose: PDouble; optInTimePeriod:Integer; { From 1 to 100000 } var outBegIdx:Integer; var outNBElement:Integer; outReal:Pdouble):TA_RetCode;stdCall external dllname;

function Z_PlusDm(startIdx:Integer; endIdx:Integer;  inHigh: PDouble;  inLow: PDouble; optInTimePeriod:Integer; { From 1 to 100000 } var outBegIdx:Integer; var outNBElement:Integer; outReal:Pdouble):TA_RetCode;stdCall external dllname;

function Z_Ppo(startIdx:Integer; endIdx:Integer;  inReal:PDouble; optInFastPeriod:Integer; { From 2 to 100000 } optInSlowPeriod:integer; { From 2 to 100000 } optInMAType:TA_MAType; var outBegIdx:Integer; var outNBElement:Integer; outReal:Pdouble):TA_RetCode;stdCall external dllname;

function Z_Roc(startIdx:Integer; endIdx:Integer;  inReal:PDouble; optInTimePeriod:Integer; { From 1 to 100000 } var outBegIdx:Integer; var outNBElement:Integer; outReal:Pdouble):TA_RetCode;stdCall external dllname;

function Z_Rocp(startIdx:Integer; endIdx:Integer;  inReal:PDouble; optInTimePeriod:Integer; { From 1 to 100000 } var outBegIdx:Integer; var outNBElement:Integer; outReal:Pdouble):TA_RetCode;stdCall external dllname;

function Z_Rocr(startIdx:Integer; endIdx:Integer;  inReal:PDouble; optInTimePeriod:Integer; { From 1 to 100000 } var outBegIdx:Integer; var outNBElement:Integer; outReal:Pdouble):TA_RetCode;stdCall external dllname;

function Z_Rocr100(startIdx:Integer; endIdx:Integer;  inReal:PDouble; optInTimePeriod:Integer; { From 1 to 100000 } var outBegIdx:Integer; var outNBElement:Integer; outReal:Pdouble):TA_RetCode;stdCall external dllname;

function Z_Rsi(startIdx:Integer; endIdx:Integer;  inReal:PDouble; optInTimePeriod:Integer; { From 2 to 100000 } var outBegIdx:Integer; var outNBElement:Integer; outReal:Pdouble):TA_RetCode;stdCall external dllname;

function Z_Sar(startIdx:Integer; endIdx:Integer;  inHigh: PDouble;  inLow: PDouble; optInAcceleration:double; { From 0 to TA_REAL_MAX } optInMaximum:double; { From 0 to TA_REAL_MAX } var outBegIdx:Integer; var outNBElement:Integer; outReal:Pdouble):TA_RetCode;stdCall external dllname;

function Z_SarExt(startIdx:Integer; endIdx:Integer;  inHigh: PDouble;  inLow: PDouble; optInStartValue:double; { From TA_REAL_MIN to TA_REAL_MAX } optInOffsetOnReverse:double; { From 0 to TA_REAL_MAX } optInAccelerationInitLong:double; { From 0 to TA_REAL_MAX } optInAccelerationLong:Double; { From 0 to TA_REAL_MAX } optInAccelerationMaxLong:double; { From 0 to TA_REAL_MAX } optInAccelerationInitShort:Double; { From 0 to TA_REAL_MAX } optInAccelerationShort:double; { From 0 to TA_REAL_MAX } optInAccelerationMaxShort:Double; { From 0 to TA_REAL_MAX } var outBegIdx:Integer; var outNBElement:Integer; outReal:Pdouble):TA_RetCode;stdCall external dllname;

function Z_Sin(startIdx:Integer; endIdx:Integer;  inReal:PDouble; var outBegIdx:Integer; var outNBElement:Integer; outReal:Pdouble):TA_RetCode;stdCall external dllname;

function Z_Sinh(startIdx:Integer; endIdx:Integer;  inReal:PDouble; var outBegIdx:Integer; var outNBElement:Integer; outReal:Pdouble):TA_RetCode;stdCall external dllname;

function Z_Sma(startIdx:Integer; endIdx:Integer;  inReal:PDouble; optInTimePeriod:Integer; { From 2 to 100000 } var outBegIdx:Integer; var outNBElement:Integer; outReal:Pdouble):TA_RetCode;stdCall external dllname;

function Z_Sqrt(startIdx:Integer; endIdx:Integer;  inReal:PDouble; var outBegIdx:Integer; var outNBElement:Integer; outReal:Pdouble):TA_RetCode;stdCall external dllname;

function Z_StdDev(startIdx:Integer; endIdx:Integer;  inReal:PDouble; optInTimePeriod:Integer; { From 2 to 100000 } optInNbDev:double; { From TA_REAL_MIN to TA_REAL_MAX } var outBegIdx:Integer; var outNBElement:Integer; outReal:Pdouble):TA_RetCode;stdCall external dllname;

function Z_Stoch(startIdx:Integer; endIdx:Integer;  inHigh: PDouble;  inLow: PDouble;  inClose: PDouble;  optInFastK_Period:Integer; { From 1 to 100000 } optInSlowK_Period:Integer; { From 1 to 100000 } optInSlowK_MAType:TA_MAType ; optInSlowD_Period:Integer; { From 1 to 100000 } optInSlowD_MAType:TA_MAType ; var outBegIdx:Integer; var outNBElement:Integer; outSlowK:Pdouble; outSlowD:Pdouble):TA_RetCode;stdCall external dllname;

function Z_Stochf(startIdx:Integer; endIdx:Integer;  inHigh: PDouble;  inLow: PDouble;  inClose: PDouble; optInFastK_Period:Integer; { From 1 to 100000 } optInFastD_Period:Integer; { From 1 to 100000 } optInFastD_MAType:TA_MAType ; var outBegIdx:Integer; var outNBElement:Integer; outFastK:Pdouble;outFastD:Pdouble):TA_RetCode;stdCall external dllname;

function Z_StochRsi(startIdx:Integer; endIdx:Integer;  inReal:PDouble; optInTimePeriod:Integer; { From 2 to 100000 } optInFastK_Period:Integer; { From 1 to 100000 } optInFastD_Period:Integer; { From 1 to 100000 } optInFastD_MAType:TA_MAType ; var outBegIdx:Integer; var outNBElement:Integer; outFastK:Pdouble; outFastD:PDouble):TA_RetCode;stdCall external dllname;

function Z_Sub(startIdx:Integer; endIdx:Integer;  inReal0: PDouble;  inReal1: PDouble; var outBegIdx:Integer; var outNBElement:Integer; outReal:Pdouble):TA_RetCode;stdCall external dllname;

function Z_Sum(startIdx:Integer; endIdx:Integer;  inReal:PDouble; optInTimePeriod:Integer; { From 2 to 100000 } var outBegIdx:Integer; var outNBElement:Integer; outReal:Pdouble):TA_RetCode;stdCall external dllname;

function Z_T3(startIdx:Integer; endIdx:Integer;  inReal:PDouble; optInTimePeriod:Integer; { From 2 to 100000 } optInVFactor:double; { From 0 to 1 } var outBegIdx:Integer; var outNBElement:Integer; outReal:Pdouble):TA_RetCode;stdCall external dllname;

function Z_Tan(startIdx:Integer; endIdx:Integer;  inReal:PDouble; var outBegIdx:Integer; var outNBElement:Integer; outReal:Pdouble):TA_RetCode;stdCall external dllname;

function Z_Tanh(startIdx:Integer; endIdx:Integer;  inReal:PDouble; var outBegIdx:Integer; var outNBElement:Integer; outReal:Pdouble):TA_RetCode;stdCall external dllname;

function Z_Tema(startIdx:Integer; endIdx:Integer;  inReal:PDouble; optInTimePeriod:Integer; { From 2 to 100000 } var outBegIdx:Integer; var outNBElement:Integer; outReal:Pdouble):TA_RetCode;stdCall external dllname;

function Z_Trange(startIdx:Integer; endIdx:Integer;  inHigh: PDouble;  inLow: PDouble;  inClose: PDouble; var outBegIdx:Integer; var outNBElement:Integer; outReal:Pdouble):TA_RetCode;stdCall external dllname;

function Z_Trima(startIdx:Integer; endIdx:Integer;  inReal:PDouble; optInTimePeriod:Integer; { From 2 to 100000 } var outBegIdx:Integer; var outNBElement:Integer; outReal:Pdouble):TA_RetCode;stdCall external dllname;

function Z_Trix(startIdx:Integer; endIdx:Integer;  inReal:PDouble; optInTimePeriod:Integer; { From 1 to 100000 } var outBegIdx:Integer; var outNBElement:Integer; outReal:Pdouble):TA_RetCode;stdCall external dllname;

function Z_Tsf(startIdx:Integer; endIdx:Integer;  inReal:PDouble; optInTimePeriod:Integer; { From 2 to 100000 } var outBegIdx:Integer; var outNBElement:Integer; outReal:Pdouble):TA_RetCode;stdCall external dllname;

function Z_TypPrice(startIdx:Integer; endIdx:Integer;  inHigh: PDouble;  inLow: PDouble;  inClose: PDouble; var outBegIdx:Integer; var outNBElement:Integer; outReal:Pdouble):TA_RetCode;stdCall external dllname;

function Z_UltOsc(startIdx:Integer; endIdx:Integer;  inHigh: PDouble;  inLow: PDouble;  inClose: PDouble; optInTimePeriod1:Integer; { From 1 to 100000 } optInTimePeriod2:Integer; { From 1 to 100000 } optInTimePeriod3:Integer; { From 1 to 100000 } var outBegIdx:Integer; var outNBElement:Integer; outReal:Pdouble):TA_RetCode;stdCall external dllname;

function Z_Var(startIdx:Integer; endIdx:Integer;  inReal:PDouble; optInTimePeriod:Integer; { From 1 to 100000 } optInNbDev:double; { From TA_REAL_MIN to TA_REAL_MAX } var outBegIdx:Integer; var outNBElement:Integer; outReal:Pdouble):TA_RetCode;stdCall external dllname;

function Z_WclPrice(startIdx:Integer; endIdx:Integer;  inHigh: PDouble;  inLow: PDouble;  inClose: PDouble; var outBegIdx:Integer; var outNBElement:Integer; outReal:Pdouble):TA_RetCode;stdCall external dllname;

function Z_Willr(startIdx:Integer; endIdx:Integer;  inHigh: PDouble;  inLow: PDouble;  inClose: PDouble; optInTimePeriod:Integer; { From 2 to 100000 } var outBegIdx:Integer; var outNBElement:Integer; outReal:Pdouble):TA_RetCode;stdCall external dllname;

function Z_Wma(startIdx:Integer; endIdx:Integer;  inReal:PDouble; optInTimePeriod:Integer; { From 2 to 100000 } var outBegIdx:Integer; var outNBElement:Integer; outReal:Pdouble):TA_RetCode;stdCall external dllname;




implementation






end.
