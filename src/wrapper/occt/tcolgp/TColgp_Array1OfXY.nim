# /usr/include/opencascade/TColgp_Array1OfXY.hxx --> occt/tcolgp/TColgp_Array1OfXY.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerTcolgparray1ofxy = "/usr/include/opencascade/TColgp_Array1OfXY.hxx"
type
  TColgpArray1OfXY* = NCollectionArray1[GpXY]
