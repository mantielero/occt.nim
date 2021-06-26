# /usr/include/opencascade/TColgp_Array2OfLin2d.hxx --> occt/tkMath/tcolgp/TColgp_Array2OfLin2d.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerTcolgparray2oflin2d = "/usr/include/opencascade/TColgp_Array2OfLin2d.hxx"
type
  TColgpArray2OfLin2d* = NCollectionArray2[GpLin2d]
