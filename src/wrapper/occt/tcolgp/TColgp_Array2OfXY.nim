# /usr/include/opencascade/TColgp_Array2OfXY.hxx --> occt/tcolgp/TColgp_Array2OfXY.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerTcolgparray2ofxy = "/usr/include/opencascade/TColgp_Array2OfXY.hxx"
type
  TColgpArray2OfXY* = NCollectionArray2[GpXY]
