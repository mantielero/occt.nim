import tcolstd_types

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



proc newTColStdHSequenceOfInteger*(): TColStdHSequenceOfInteger {.cdecl,
    constructor, importcpp: "TColStd_HSequenceOfInteger(@)", header: "TColStd_HSequenceOfInteger.hxx".}
proc newTColStdHSequenceOfInteger*(theOther: TColStdSequenceOfInteger): TColStdHSequenceOfInteger {.
    cdecl, constructor, importcpp: "TColStd_HSequenceOfInteger(@)", header: "TColStd_HSequenceOfInteger.hxx".}
proc sequence*(this: TColStdHSequenceOfInteger): TColStdSequenceOfInteger {.
    noSideEffect, cdecl, importcpp: "Sequence", header: "TColStd_HSequenceOfInteger.hxx".}
proc append*(this: var TColStdHSequenceOfInteger; theItem: ValueType) {.cdecl,
    importcpp: "Append", header: "TColStd_HSequenceOfInteger.hxx".}
proc append*(this: var TColStdHSequenceOfInteger;
            theSequence: var TColStdSequenceOfInteger) {.cdecl, importcpp: "Append",
    header: "TColStd_HSequenceOfInteger.hxx".}
proc changeSequence*(this: var TColStdHSequenceOfInteger): var TColStdSequenceOfInteger {.
    cdecl, importcpp: "ChangeSequence", header: "TColStd_HSequenceOfInteger.hxx".}

