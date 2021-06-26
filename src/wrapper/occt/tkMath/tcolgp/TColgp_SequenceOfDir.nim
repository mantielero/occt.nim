# /usr/include/opencascade/TColgp_SequenceOfDir.hxx --> occt/tkMath/tcolgp/TColgp_SequenceOfDir.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerTcolgpsequenceofdir = "/usr/include/opencascade/TColgp_SequenceOfDir.hxx"
type
  TColgpSequenceOfDir* = NCollectionSequence[GpDir]
