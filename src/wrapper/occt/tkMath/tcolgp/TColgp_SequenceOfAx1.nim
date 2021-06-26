# /usr/include/opencascade/TColgp_SequenceOfAx1.hxx --> occt/tkMath/tcolgp/TColgp_SequenceOfAx1.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerTcolgpsequenceofax1 = "/usr/include/opencascade/TColgp_SequenceOfAx1.hxx"
type
  TColgpSequenceOfAx1* = NCollectionSequence[GpAx1]
