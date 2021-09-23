# /usr/include/opencascade/Standard_SStream.hxx --> occt/standard/Standard_SStream.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerStandardsstream = "/usr/include/opencascade/Standard_SStream.hxx"
type
  StandardSStream* = stringstream
