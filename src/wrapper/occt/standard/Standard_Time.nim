# /usr/include/opencascade/Standard_Time.hxx --> occt/standard/Standard_Time.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerStandardtime = "/usr/include/opencascade/Standard_Time.hxx"
proc isEqual*(theOne: StandardTime; theTwo: StandardTime): StandardBoolean =
  discard
