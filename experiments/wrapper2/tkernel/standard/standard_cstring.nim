##  Copyright (c) 1998-1999 Matra Datavision
##  Copyright (c) 1999-2014 OPEN CASCADE SAS
##
##  This file is part of Open CASCADE Technology software library.
##
##  This library is free software; you can redistribute it and/or modify it under
##  the terms of the GNU Lesser General Public License version 2.1 as published
##  by the Free Software Foundation, with special exception defined in the file
##  OCCT_LGPL_EXCEPTION.txt. Consult the file LICENSE_LGPL_21.txt included in OCCT
##  distribution for complete text of the license and disclaimer of any warranty.
##
##  Alternatively, this file may be used under the terms of Open CASCADE
##  commercial license or contractual agreement.
## !@file
## ! Functions working with plain C strings

##  C++ only definitions

## ! Equivalent of standard C function atof() that always uses C locale

proc Atof*(theStr: cstring): cdouble {.cdecl, importcpp: "Atof(@)", dynlib: tkernel.}
## ! Optimized equivalent of standard C function strtod() that always uses C locale

proc Strtod*(theStr: cstring; theNextPtr: cstringArray): cdouble {.cdecl,
    importcpp: "Strtod(@)", dynlib: tkernel.}
## ! Equivalent of standard C function printf() that always uses C locale

proc Printf*(theFormat: cstring): cint {.varargs, cdecl, importcpp: "Printf(@)",
                                     dynlib: tkernel.}
## ! Equivalent of standard C function fprintf() that always uses C locale

proc Fprintf*(theFile: ptr FILE; theFormat: cstring): cint {.varargs, cdecl,
    importcpp: "Fprintf(@)", dynlib: tkernel.}
## ! Equivalent of standard C function sprintf() that always uses C locale

proc Sprintf*(theBuffer: cstring; theFormat: cstring): cint {.varargs, cdecl,
    importcpp: "Sprintf(@)", dynlib: tkernel.}
## ! Equivalent of standard C function vsprintf() that always uses C locale.
## ! Note that this function does not check buffer bounds and should be used with precaution measures
## ! (only with format fitting into the buffer of known size).
## ! @param theBuffer  [in] [out] string buffer to fill
## ! @param theFormat  [in] format to apply
## ! @param theArgList [in] argument list for specified format
## ! @return the total number of characters written, or a negative number on error

proc Vsprintf*(theBuffer: cstring; theFormat: cstring; theArgList: va_list): cint {.
    cdecl, importcpp: "Vsprintf(@)", dynlib: tkernel.}