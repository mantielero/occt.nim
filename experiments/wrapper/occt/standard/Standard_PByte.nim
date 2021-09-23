# /usr/include/opencascade/Standard_PByte.hxx --> occt/standard/Standard_PByte.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerStandardpbyte = "/usr/include/opencascade/Standard_PByte.hxx"
type
  StandardPByte* = ptr StandardByte
