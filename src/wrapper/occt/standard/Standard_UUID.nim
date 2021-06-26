# /usr/include/opencascade/Standard_UUID.hxx --> occt/standard/Standard_UUID.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerStandarduuid = "/usr/include/opencascade/Standard_UUID.hxx"
type
  Guid* {.importcpp: "GUID", header: headerStandarduuid, bycopy.} = object
    data1* {.importc: "Data1".}: culong
    data2* {.importc: "Data2".}: cushort
    data3* {.importc: "Data3".}: cushort
    data4* {.importc: "Data4".}: array[8, cuchar]

  StandardUUID* = Guid
