# /usr/include/opencascade/Standard_PCharacter.hxx --> occt/standard/Standard_PCharacter.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerStandardpcharacter = "/usr/include/opencascade/Standard_PCharacter.hxx"
type
  StandardPCharacter* = ptr StandardCharacter
