# /usr/include/opencascade/Standard_CString.hxx --> occt/standard/Standard_CString.nim
import os, strutils
# import std/time_t  # To use C "time_t" uncomment this line and use time_t.Time

const sourcePath = currentSourcePath().splitPath.head
{.passC: "-I\"/usr/include/opencascade/\"".}
const headerStandardcstring = "/usr/include/opencascade/Standard_CString.hxx"
proc hashCode*(theString: StandardCString; theUpperBound: StandardInteger): StandardInteger {.
    importcpp: "HashCode(@)", header: headerStandardcstring.}
proc hashCodes*(theString: StandardCString; theLength: StandardInteger): StandardInteger {.
    importcpp: "HashCodes(@)", header: headerStandardcstring.}
proc hashCode*(theString: StandardCString; theLength: StandardInteger;
              theUpperBound: StandardInteger): StandardInteger =
  discard

proc isEqual*(theOne: StandardCString; theTwo: StandardCString): StandardBoolean =
  discard

proc atof(theStr: cstring): cdouble
proc strtod(theStr: cstring; theNextPtr: cstringArray): cdouble
proc printf(theFormat: cstring): cint {.varargs.}
proc fprintf(theFile: ptr File; theFormat: cstring): cint {.varargs.}
proc sprintf(theBuffer: cstring; theFormat: cstring): cint {.varargs.}
proc vsprintf(theBuffer: cstring; theFormat: cstring; theArgList: VaList): cint