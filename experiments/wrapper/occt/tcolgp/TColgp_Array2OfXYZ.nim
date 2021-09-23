# /usr/include/opencascade/TColgp_Array2OfXYZ.hxx --> occt/tcolgp/TColgp_Array2OfXYZ.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerTcolgparray2ofxyz = "/usr/include/opencascade/TColgp_Array2OfXYZ.hxx"
type
  TColgpArray2OfXYZ* = NCollectionArray2[GpXYZ]
