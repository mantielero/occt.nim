# /usr/include/opencascade/TColgp_Array2OfVec.hxx --> occt/tkMath/tcolgp/TColgp_Array2OfVec.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerTcolgparray2ofvec = "/usr/include/opencascade/TColgp_Array2OfVec.hxx"
type
  TColgpArray2OfVec* = NCollectionArray2[GpVec]
