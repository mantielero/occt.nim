# /usr/include/opencascade/Standard_Character.hxx --> occt/standard/Standard_Character.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerStandardcharacter = "/usr/include/opencascade/Standard_Character.hxx"
proc isEqual*(one: StandardCharacter; two: StandardCharacter): StandardBoolean =
  discard

proc isAlphabetic*(me: StandardCharacter): StandardBoolean =
  discard

proc isDigit*(me: StandardCharacter): StandardBoolean =
  discard

proc isXDigit*(me: StandardCharacter): StandardBoolean =
  discard

proc isAlphanumeric*(me: StandardCharacter): StandardBoolean =
  discard

proc isControl*(me: StandardCharacter): StandardBoolean =
  discard

proc isGraphic*(me: StandardCharacter): StandardBoolean =
  discard

proc isLowerCase*(me: StandardCharacter): StandardBoolean =
  discard

proc isPrintable*(me: StandardCharacter): StandardBoolean =
  discard

proc isPunctuation*(me: StandardCharacter): StandardBoolean =
  discard

proc isSpace*(me: StandardCharacter): StandardBoolean =
  discard

proc isUpperCase*(me: StandardCharacter): StandardBoolean =
  discard

proc lowerCase*(me: StandardCharacter): StandardCharacter =
  discard

proc upperCase*(me: StandardCharacter): StandardCharacter =
  discard
