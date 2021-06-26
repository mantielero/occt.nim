# /usr/include/opencascade/Standard_ShortReal.hxx --> occt/standard/Standard_ShortReal.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerStandardshortreal = "/usr/include/opencascade/Standard_ShortReal.hxx"
proc shortRealSmall*(): StandardShortReal =
  discard

proc abs*(value: StandardShortReal): StandardShortReal =
  discard

proc shortRealDigits*(): StandardInteger =
  discard

proc shortRealEpsilon*(): StandardShortReal =
  discard

proc shortRealFirst*(): StandardShortReal =
  discard

proc shortRealFirst10Exp*(): StandardInteger =
  discard

proc shortRealLast*(): StandardShortReal =
  discard

proc shortRealLast10Exp*(): StandardInteger =
  discard

proc shortRealMantissa*(): StandardInteger =
  discard

proc shortRealRadix*(): StandardInteger =
  discard

proc shortRealSize*(): StandardInteger =
  discard

proc max*(val1: StandardShortReal; val2: StandardShortReal): StandardShortReal =
  discard

proc min*(val1: StandardShortReal; val2: StandardShortReal): StandardShortReal =
  discard

proc hashCode*(theShortReal: StandardShortReal; theUpperBound: StandardInteger): StandardInteger {.
    importcpp: "HashCode(@)", header: headerStandardshortreal.}
proc isEqual*(value1: StandardShortReal; value2: StandardShortReal): StandardBoolean =
  discard
