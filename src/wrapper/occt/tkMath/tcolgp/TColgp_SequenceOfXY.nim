# /usr/include/opencascade/TColgp_SequenceOfXY.hxx --> occt/tkMath/tcolgp/TColgp_SequenceOfXY.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerTcolgpsequenceofxy = "/usr/include/opencascade/TColgp_SequenceOfXY.hxx"
type
  TColgpSequenceOfXY* = NCollectionSequence[GpXY]
