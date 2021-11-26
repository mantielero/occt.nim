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
  TColStdHArray2OfBoolean* {.importcpp: "TColStd_HArray2OfBoolean",
                            header: "TColStd_HArray2OfBoolean.hxx", bycopy.} = object of TColStdArray2OfBoolean


proc newTColStdHArray2OfBoolean*(theRowLow: cint; theRowUpp: cint; theColLow: cint;
                                theColUpp: cint): TColStdHArray2OfBoolean {.cdecl,
    constructor, importcpp: "TColStd_HArray2OfBoolean(@)", dynlib: tkernel.}
proc newTColStdHArray2OfBoolean*(theRowLow: cint; theRowUpp: cint; theColLow: cint;
                                theColUpp: cint; theValue: ValueType): TColStdHArray2OfBoolean {.
    cdecl, constructor, importcpp: "TColStd_HArray2OfBoolean(@)", dynlib: tkernel.}
proc newTColStdHArray2OfBoolean*(theOther: TColStdArray2OfBoolean): TColStdHArray2OfBoolean {.
    cdecl, constructor, importcpp: "TColStd_HArray2OfBoolean(@)", dynlib: tkernel.}
proc array2*(this: TColStdHArray2OfBoolean): TColStdArray2OfBoolean {.noSideEffect,
    cdecl, importcpp: "Array2", dynlib: tkernel.}
proc changeArray2*(this: var TColStdHArray2OfBoolean): var TColStdArray2OfBoolean {.
    cdecl, importcpp: "ChangeArray2", dynlib: tkernel.}