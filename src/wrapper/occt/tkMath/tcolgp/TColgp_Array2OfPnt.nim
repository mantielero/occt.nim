# /usr/include/opencascade/TColgp_Array2OfPnt.hxx --> occt/tkMath/tcolgp/TColgp_Array2OfPnt.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerTcolgparray2ofpnt = "/usr/include/opencascade/TColgp_Array2OfPnt.hxx"
type
  TColgpArray2OfPnt* = NCollectionArray2[GpPnt]
