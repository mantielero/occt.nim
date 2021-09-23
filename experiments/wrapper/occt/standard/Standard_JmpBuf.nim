# /usr/include/opencascade/Standard_JmpBuf.hxx --> occt/standard/Standard_JmpBuf.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerStandardjmpbuf = "/usr/include/opencascade/Standard_JmpBuf.hxx"
type
  StandardJmpBuf* = JmpBuf
