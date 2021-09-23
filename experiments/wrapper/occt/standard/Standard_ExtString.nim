# /usr/include/opencascade/Standard_ExtString.hxx --> occt/standard/Standard_ExtString.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerStandardextstring = "/usr/include/opencascade/Standard_ExtString.hxx"
proc hashCode*(theExtString: StandardExtString; theUpperBound: StandardInteger): StandardInteger {.
    importcpp: "HashCode(@)", header: headerStandardextstring.}