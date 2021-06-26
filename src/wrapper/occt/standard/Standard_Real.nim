# /usr/include/opencascade/Standard_Real.hxx --> occt/standard/Standard_Real.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerStandardreal = "/usr/include/opencascade/Standard_Real.hxx"
proc hashCode*(theReal: StandardReal; theUpperBound: StandardInteger): StandardInteger {.
    importcpp: "HashCode(@)", header: headerStandardreal.}
proc aCos*(a1: StandardReal): StandardReal {.importcpp: "ACos(@)",
    header: headerStandardreal.}
proc aCosApprox*(a1: StandardReal): StandardReal {.importcpp: "ACosApprox(@)",
    header: headerStandardreal.}
proc aSin*(a1: StandardReal): StandardReal {.importcpp: "ASin(@)",
    header: headerStandardreal.}
proc aTan2*(a1: StandardReal; a2: StandardReal): StandardReal {.importcpp: "ATan2(@)",
    header: headerStandardreal.}
proc nextAfter*(a1: StandardReal; a2: StandardReal): StandardReal {.
    importcpp: "NextAfter(@)", header: headerStandardreal.}
proc sign*(a: StandardReal; b: StandardReal): StandardReal {.importcpp: "Sign(@)",
    header: headerStandardreal.}
proc aTanh*(a1: StandardReal): StandardReal {.importcpp: "ATanh(@)",
    header: headerStandardreal.}
proc aCosh*(a1: StandardReal): StandardReal {.importcpp: "ACosh(@)",
    header: headerStandardreal.}
proc sinh*(a1: StandardReal): StandardReal {.importcpp: "Sinh(@)",
    header: headerStandardreal.}
proc cosh*(a1: StandardReal): StandardReal {.importcpp: "Cosh(@)",
    header: headerStandardreal.}
proc log*(a1: StandardReal): StandardReal {.importcpp: "Log(@)",
                                        header: headerStandardreal.}
proc sqrt*(a1: StandardReal): StandardReal {.importcpp: "Sqrt(@)",
    header: headerStandardreal.}
proc realSmall*(): StandardReal =
  discard

proc abs*(value: StandardReal): StandardReal =
  discard

proc isEqual*(value1: StandardReal; value2: StandardReal): StandardBoolean =
  discard

proc realDigits*(): StandardInteger =
  discard

proc realEpsilon*(): StandardReal =
  discard

proc realFirst*(): StandardReal =
  discard

proc realFirst10Exp*(): StandardInteger =
  discard

proc realLast*(): StandardReal =
  discard

proc realLast10Exp*(): StandardInteger =
  discard

proc realMantissa*(): StandardInteger =
  discard

proc realRadix*(): StandardInteger =
  discard

proc realSize*(): StandardInteger =
  discard

proc intToReal*(value: StandardInteger): StandardReal =
  discard

proc aTan*(value: StandardReal): StandardReal =
  discard

proc ceiling*(value: StandardReal): StandardReal =
  discard

proc cos*(value: StandardReal): StandardReal =
  discard

proc epsilon*(value: StandardReal): StandardReal =
  discard

proc exp*(value: StandardReal): StandardReal =
  discard

proc floor*(value: StandardReal): StandardReal =
  discard

proc integerPart*(value: StandardReal): StandardReal =
  discard

proc log10*(value: StandardReal): StandardReal =
  discard

proc max*(val1: StandardReal; val2: StandardReal): StandardReal =
  discard

proc min*(val1: StandardReal; val2: StandardReal): StandardReal =
  discard

proc pow*(value: StandardReal; p: StandardReal): StandardReal =
  discard

proc realPart*(value: StandardReal): StandardReal =
  discard

proc realToInt*(value: StandardReal): StandardInteger =
  discard

proc realToShortReal*(theVal: StandardReal): StandardShortReal =
  discard

proc round*(value: StandardReal): StandardReal =
  discard

proc sin*(value: StandardReal): StandardReal =
  discard

proc aSinh*(value: StandardReal): StandardReal =
  discard

proc square*(value: StandardReal): StandardReal =
  discard

proc tan*(value: StandardReal): StandardReal =
  discard

proc tanh*(value: StandardReal): StandardReal =
  discard
