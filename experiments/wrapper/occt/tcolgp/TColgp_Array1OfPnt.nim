# /usr/include/opencascade/TColgp_Array1OfPnt.hxx --> occt/tcolgp/TColgp_Array1OfPnt.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerTcolgparray1ofpnt = "/usr/include/opencascade/TColgp_Array1OfPnt.hxx"
type
  TColgpArray1OfPnt* = NCollectionArray1[GpPnt]
