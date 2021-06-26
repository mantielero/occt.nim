# /usr/include/opencascade/TColgp_Array2OfDir.hxx --> occt/tkMath/tcolgp/TColgp_Array2OfDir.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerTcolgparray2ofdir = "/usr/include/opencascade/TColgp_Array2OfDir.hxx"
type
  TColgpArray2OfDir* = NCollectionArray2[GpDir]
