# /usr/include/opencascade/TColgp_SequenceOfPnt2d.hxx --> occt/tcolgp/TColgp_SequenceOfPnt2d.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerTcolgpsequenceofpnt2d = "/usr/include/opencascade/TColgp_SequenceOfPnt2d.hxx"
type
  TColgpSequenceOfPnt2d* = NCollectionSequence[GpPnt2d]
