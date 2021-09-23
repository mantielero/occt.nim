# /usr/include/opencascade/Standard_IStream.hxx --> occt/standard/Standard_IStream.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerStandardistream = "/usr/include/opencascade/Standard_IStream.hxx"
type
  StandardIStream* = Istream
