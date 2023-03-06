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



proc newTColStdHArray1OfBoolean*(theLower: cint; theUpper: cint): TColStdHArray1OfBoolean {.
    cdecl, constructor, importcpp: "TColStd_HArray1OfBoolean(@)", header: "TColStd_HArray1OfBoolean.hxx".}
proc newTColStdHArray1OfBoolean*(theLower: cint; theUpper: cint; theValue: ValueType): TColStdHArray1OfBoolean {.
    cdecl, constructor, importcpp: "TColStd_HArray1OfBoolean(@)", header: "TColStd_HArray1OfBoolean.hxx".}
proc newTColStdHArray1OfBoolean*(theOther: TColStdArray1OfBoolean): TColStdHArray1OfBoolean {.
    cdecl, constructor, importcpp: "TColStd_HArray1OfBoolean(@)", header: "TColStd_HArray1OfBoolean.hxx".}
proc array1*(this: TColStdHArray1OfBoolean): TColStdArray1OfBoolean {.noSideEffect,
    cdecl, importcpp: "Array1", header: "TColStd_HArray1OfBoolean.hxx".}
