# /usr/include/opencascade/TColgp_SequenceOfVec.hxx --> occt/tcolgp/TColgp_SequenceOfVec.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerTcolgpsequenceofvec = "/usr/include/opencascade/TColgp_SequenceOfVec.hxx"
type
  TColgpSequenceOfVec* = NCollectionSequence[GpVec]
