# /usr/include/opencascade/TColgp_Array2OfVec2d.hxx --> occt/tcolgp/TColgp_Array2OfVec2d.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerTcolgparray2ofvec2d = "/usr/include/opencascade/TColgp_Array2OfVec2d.hxx"
type
  TColgpArray2OfVec2d* = NCollectionArray2[GpVec2d]
