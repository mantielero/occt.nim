# /usr/include/opencascade/TColgp_Array1OfVec2d.hxx --> occt/tcolgp/TColgp_Array1OfVec2d.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerTcolgparray1ofvec2d = "/usr/include/opencascade/TColgp_Array1OfVec2d.hxx"
type
  TColgpArray1OfVec2d* = NCollectionArray1[GpVec2d]
