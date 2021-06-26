# /usr/include/opencascade/Standard_ExtCharacter.hxx --> occt/standard/Standard_ExtCharacter.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerStandardextcharacter = "/usr/include/opencascade/Standard_ExtCharacter.hxx"
proc toExtCharacter*(achar: StandardCharacter): StandardExtCharacter =
  discard

proc toCharacter*(achar: StandardExtCharacter): StandardCharacter =
  discard

proc isAnAscii*(achar: StandardExtCharacter): StandardBoolean =
  discard

proc isEqual*(one: StandardExtCharacter; two: StandardExtCharacter): StandardBoolean =
  discard
