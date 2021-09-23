# /usr/include/opencascade/TColgp_SequenceOfDir2d.hxx --> occt/tcolgp/TColgp_SequenceOfDir2d.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerTcolgpsequenceofdir2d = "/usr/include/opencascade/TColgp_SequenceOfDir2d.hxx"
type
  TColgpSequenceOfDir2d* = NCollectionSequence[GpDir2d]
