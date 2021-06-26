# /usr/include/opencascade/Standard_Version.hxx --> occt/standard/Standard_Version.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerStandardversion = "/usr/include/opencascade/Standard_Version.hxx"
const
  OCC_VERSION_MAJOR* = 7
  OCC_VERSION_MINOR* = 5
  OCC_VERSION_MAINTENANCE* = 0
  OCC_VERSION* = 7.5
