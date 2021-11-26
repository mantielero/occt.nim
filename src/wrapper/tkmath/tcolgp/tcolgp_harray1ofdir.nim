##  Created on: 1993-03-10
##  Created by: Philippe DAUTRY
##  Copyright (c) 1993-1999 Matra Datavision
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

type
  TColgpHArray1OfDir* {.importcpp: "TColgp_HArray1OfDir",
                       header: "TColgp_HArray1OfDir.hxx", bycopy.} = object of TColgpArray1OfDir


proc newTColgpHArray1OfDir*(theLower: cint; theUpper: cint): TColgpHArray1OfDir {.
    cdecl, constructor, importcpp: "TColgp_HArray1OfDir(@)", dynlib: tkmath.}
proc newTColgpHArray1OfDir*(theLower: cint; theUpper: cint; theValue: ValueType): TColgpHArray1OfDir {.
    cdecl, constructor, importcpp: "TColgp_HArray1OfDir(@)", dynlib: tkmath.}
proc newTColgpHArray1OfDir*(theOther: TColgpArray1OfDir): TColgpHArray1OfDir {.
    cdecl, constructor, importcpp: "TColgp_HArray1OfDir(@)", dynlib: tkmath.}
proc array1*(this: TColgpHArray1OfDir): TColgpArray1OfDir {.noSideEffect, cdecl,
    importcpp: "Array1", dynlib: tkmath.}