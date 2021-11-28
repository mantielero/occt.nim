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
  TColStdHSequenceOfExtendedString* {.importcpp: "TColStd_HSequenceOfExtendedString", header: "TColStd_HSequenceOfExtendedString.hxx",
                                     bycopy.} = object of TColStdSequenceOfExtendedString


proc newTColStdHSequenceOfExtendedString*(): TColStdHSequenceOfExtendedString {.
    cdecl, constructor, importcpp: "TColStd_HSequenceOfExtendedString(@)",
    dynlib: tkernel.}
proc newTColStdHSequenceOfExtendedString*(
    theOther: TColStdSequenceOfExtendedString): TColStdHSequenceOfExtendedString {.
    cdecl, constructor, importcpp: "TColStd_HSequenceOfExtendedString(@)",
    dynlib: tkernel.}
proc sequence*(this: TColStdHSequenceOfExtendedString): TColStdSequenceOfExtendedString {.
    noSideEffect, cdecl, importcpp: "Sequence", dynlib: tkernel.}
proc append*(this: var TColStdHSequenceOfExtendedString; theItem: ValueType) {.cdecl,
    importcpp: "Append", dynlib: tkernel.}
proc append*(this: var TColStdHSequenceOfExtendedString;
            theSequence: var TColStdSequenceOfExtendedString) {.cdecl,
    importcpp: "Append", dynlib: tkernel.}
proc changeSequence*(this: var TColStdHSequenceOfExtendedString): var TColStdSequenceOfExtendedString {.
    cdecl, importcpp: "ChangeSequence", dynlib: tkernel.}
type
  HandleTColStdHSequenceOfExtendedString* = Handle[
      TColStdHSequenceOfExtendedString]
