# /usr/include/opencascade/TColgp_Array1OfLin2d.hxx --> occt/tkMath/tcolgp/TColgp_Array1OfLin2d.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerTcolgparray1oflin2d = "/usr/include/opencascade/TColgp_Array1OfLin2d.hxx"
type
  TColgpArray1OfLin2d* = NCollectionArray1[GpLin2d]
