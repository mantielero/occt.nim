# /usr/include/opencascade/TColgp_Array1OfPnt2d.hxx --> occt/tcolgp/TColgp_Array1OfPnt2d.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerTcolgparray1ofpnt2d = "/usr/include/opencascade/TColgp_Array1OfPnt2d.hxx"
type
  TColgpArray1OfPnt2d* = NCollectionArray1[GpPnt2d]