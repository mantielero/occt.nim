# /usr/include/opencascade/TColgp_Array1OfVec.hxx --> occt/tkMath/tcolgp/TColgp_Array1OfVec.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerTcolgparray1ofvec = "/usr/include/opencascade/TColgp_Array1OfVec.hxx"
type
  TColgpArray1OfVec* = NCollectionArray1[GpVec]
