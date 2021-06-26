# /usr/include/opencascade/Standard_Address.hxx --> occt/standard/Standard_Address.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerStandardaddress = "/usr/include/opencascade/Standard_Address.hxx"
proc hashCode*(thePointer: pointer; theUpperBound: StandardInteger): StandardInteger =
  discard

proc isEqual*(one: StandardAddress; two: StandardAddress): StandardBoolean =
  discard
