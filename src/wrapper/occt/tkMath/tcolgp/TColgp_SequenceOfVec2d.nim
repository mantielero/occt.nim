# /usr/include/opencascade/TColgp_SequenceOfVec2d.hxx --> occt/tkMath/tcolgp/TColgp_SequenceOfVec2d.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerTcolgpsequenceofvec2d = "/usr/include/opencascade/TColgp_SequenceOfVec2d.hxx"
type
  TColgpSequenceOfVec2d* = NCollectionSequence[GpVec2d]
