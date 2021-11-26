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
  TColgpHArray2OfDir* {.importcpp: "TColgp_HArray2OfDir",
                       header: "TColgp_HArray2OfDir.hxx", bycopy.} = object of TColgpArray2OfDir


proc newTColgpHArray2OfDir*(theRowLow: cint; theRowUpp: cint; theColLow: cint;
                           theColUpp: cint): TColgpHArray2OfDir {.cdecl,
    constructor, importcpp: "TColgp_HArray2OfDir(@)", dynlib: tkmath.}
proc newTColgpHArray2OfDir*(theRowLow: cint; theRowUpp: cint; theColLow: cint;
                           theColUpp: cint; theValue: ValueType): TColgpHArray2OfDir {.
    cdecl, constructor, importcpp: "TColgp_HArray2OfDir(@)", dynlib: tkmath.}
proc newTColgpHArray2OfDir*(theOther: TColgpArray2OfDir): TColgpHArray2OfDir {.
    cdecl, constructor, importcpp: "TColgp_HArray2OfDir(@)", dynlib: tkmath.}
proc array2*(this: TColgpHArray2OfDir): TColgpArray2OfDir {.noSideEffect, cdecl,
    importcpp: "Array2", dynlib: tkmath.}
proc changeArray2*(this: var TColgpHArray2OfDir): var TColgpArray2OfDir {.cdecl,
    importcpp: "ChangeArray2", dynlib: tkmath.}