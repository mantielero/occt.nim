# /usr/include/opencascade/TColgp_Array1OfDir.hxx --> occt/tkMath/tcolgp/TColgp_Array1OfDir.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerTcolgparray1ofdir = "/usr/include/opencascade/TColgp_Array1OfDir.hxx"
type
  TColgpArray1OfDir* = NCollectionArray1[GpDir]
