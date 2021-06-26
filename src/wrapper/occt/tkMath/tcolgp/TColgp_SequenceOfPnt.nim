# /usr/include/opencascade/TColgp_SequenceOfPnt.hxx --> occt/tkMath/tcolgp/TColgp_SequenceOfPnt.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerTcolgpsequenceofpnt = "/usr/include/opencascade/TColgp_SequenceOfPnt.hxx"
type
  TColgpSequenceOfPnt* = NCollectionSequence[GpPnt]
