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

type
  TColStdHSequenceOfInteger* {.importcpp: "TColStd_HSequenceOfInteger",
                              header: "TColStd_HSequenceOfInteger.hxx", bycopy.} = object of TColStdSequenceOfInteger


proc newTColStdHSequenceOfInteger*(): TColStdHSequenceOfInteger {.cdecl,
    constructor, importcpp: "TColStd_HSequenceOfInteger(@)", dynlib: tkernel.}
proc newTColStdHSequenceOfInteger*(theOther: TColStdSequenceOfInteger): TColStdHSequenceOfInteger {.
    cdecl, constructor, importcpp: "TColStd_HSequenceOfInteger(@)", dynlib: tkernel.}
proc sequence*(this: TColStdHSequenceOfInteger): TColStdSequenceOfInteger {.
    noSideEffect, cdecl, importcpp: "Sequence", dynlib: tkernel.}
proc append*(this: var TColStdHSequenceOfInteger; theItem: ValueType) {.cdecl,
    importcpp: "Append", dynlib: tkernel.}
proc append*(this: var TColStdHSequenceOfInteger;
            theSequence: var TColStdSequenceOfInteger) {.cdecl, importcpp: "Append",
    dynlib: tkernel.}
proc changeSequence*(this: var TColStdHSequenceOfInteger): var TColStdSequenceOfInteger {.
    cdecl, importcpp: "ChangeSequence", dynlib: tkernel.}
type
  HandleTColStdHSequenceOfInteger* = Handle[TColStdHSequenceOfInteger]
