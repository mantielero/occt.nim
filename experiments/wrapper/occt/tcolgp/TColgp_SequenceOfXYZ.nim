# /usr/include/opencascade/TColgp_SequenceOfXYZ.hxx --> occt/tcolgp/TColgp_SequenceOfXYZ.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerTcolgpsequenceofxyz = "/usr/include/opencascade/TColgp_SequenceOfXYZ.hxx"
type
  TColgpSequenceOfXYZ* = NCollectionSequence[GpXYZ]
