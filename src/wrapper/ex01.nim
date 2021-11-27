{.experimental: "codeReordering".}
{.experimental: "callOperator".}
include tkmath/tkmath, tkernel/tkernel

let
  myWidth = 50.0
  myThickness = 20.0
  myHeight = 70.0
  aPnt1 = newPnt( (25.0).cfloat, (2.0).cfloat, (3.0).cfloat ) #newPnt((-myWidth / 2.0).cfloat, (0.0).cfloat, (0.0).cfloat)

echo aPnt1.x