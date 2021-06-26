# /usr/include/opencascade/TColgp_Array1OfXYZ.hxx --> occt/tkMath/tcolgp/TColgp_Array1OfXYZ.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerTcolgparray1ofxyz = "/usr/include/opencascade/TColgp_Array1OfXYZ.hxx"
type
  TColgpArray1OfXYZ* = NCollectionArray1[GpXYZ]
