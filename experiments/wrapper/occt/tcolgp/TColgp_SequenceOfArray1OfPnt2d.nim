# /usr/include/opencascade/TColgp_SequenceOfArray1OfPnt2d.hxx --> occt/tcolgp/TColgp_SequenceOfArray1OfPnt2d.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerTcolgpsequenceofarray1ofpnt2d = "/usr/include/opencascade/TColgp_SequenceOfArray1OfPnt2d.hxx"
type
  TColgpSequenceOfArray1OfPnt2d* = NCollectionSequence[
      Handle[TColgpHArray1OfPnt2d]]
