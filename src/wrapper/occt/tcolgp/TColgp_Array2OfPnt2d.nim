# /usr/include/opencascade/TColgp_Array2OfPnt2d.hxx --> occt/tcolgp/TColgp_Array2OfPnt2d.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerTcolgparray2ofpnt2d = "/usr/include/opencascade/TColgp_Array2OfPnt2d.hxx"
type
  TColgpArray2OfPnt2d* = NCollectionArray2[GpPnt2d]
