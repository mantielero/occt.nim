# /usr/include/opencascade/Standard_TypeDef.hxx --> occt/standard/Standard_TypeDef.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerStandardtypedef = "/usr/include/opencascade/Standard_TypeDef.hxx"
const
  StandardFalse* = f

type
  StandardInteger* = cint
  StandardReal* = cdouble
  StandardBoolean* = bool
  StandardShortReal* = cfloat
  StandardCharacter* = char
  StandardByte* = cuchar
  StandardAddress* = pointer
  StandardSize* = csize_t
  StandardTime* = TimeT
  StandardUtf8Char* = char
  StandardUtf8UChar* = cuchar
  StandardExtCharacter* = char16T
  StandardUtf16Char* = char16T
  StandardUtf32Char* = char32T
  StandardWideChar* = WcharT
  StandardCString* = ptr StandardCharacter
  StandardExtString* = ptr StandardExtCharacter
