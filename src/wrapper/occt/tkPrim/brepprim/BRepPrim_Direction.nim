# /usr/include/opencascade/BRepPrim_Direction.hxx --> occt/tkPrim/brepprim/BRepPrim_Direction.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerBrepprimdirection = "/usr/include/opencascade/BRepPrim_Direction.hxx"
type
  BRepPrimDirection* {.size: sizeof(cint), importcpp: "BRepPrim_Direction",
                      header: headerBrepprimdirection.} = enum
    BRepPrimXMin, BRepPrimXMax, BRepPrimYMin, BRepPrimYMax, BRepPrimZMin,
    BRepPrimZMax

