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



proc newTColStdHSequenceOfHExtendedString*(): TColStdHSequenceOfHExtendedString {.
    cdecl, constructor, importcpp: "TColStd_HSequenceOfHExtendedString(@)",
    header: "TColStd_HSequenceOfHExtendedString.hxx".}
proc newTColStdHSequenceOfHExtendedString*(
    theOther: TColStdSequenceOfHExtendedString): TColStdHSequenceOfHExtendedString {.
    cdecl, constructor, importcpp: "TColStd_HSequenceOfHExtendedString(@)",
    header: "TColStd_HSequenceOfHExtendedString.hxx".}
proc sequence*(this: TColStdHSequenceOfHExtendedString): TColStdSequenceOfHExtendedString {.
    noSideEffect, cdecl, importcpp: "Sequence", header: "TColStd_HSequenceOfHExtendedString.hxx".}
proc append*(this: var TColStdHSequenceOfHExtendedString; theItem: ValueType) {.cdecl,
    importcpp: "Append", header: "TColStd_HSequenceOfHExtendedString.hxx".}
proc append*(this: var TColStdHSequenceOfHExtendedString;
            theSequence: var TColStdSequenceOfHExtendedString) {.cdecl,
    importcpp: "Append", header: "TColStd_HSequenceOfHExtendedString.hxx".}
proc changeSequence*(this: var TColStdHSequenceOfHExtendedString): var TColStdSequenceOfHExtendedString {.
    cdecl, importcpp: "ChangeSequence", header: "TColStd_HSequenceOfHExtendedString.hxx".}

