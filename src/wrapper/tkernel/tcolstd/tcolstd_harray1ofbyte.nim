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



proc newTColStdHArray1OfByte*(theLower: cint; theUpper: cint): TColStdHArray1OfByte {.
    cdecl, constructor, importcpp: "TColStd_HArray1OfByte(@)", header: "TColStd_HArray1OfByte.hxx".}
proc newTColStdHArray1OfByte*(theLower: cint; theUpper: cint; theValue: ValueType): TColStdHArray1OfByte {.
    cdecl, constructor, importcpp: "TColStd_HArray1OfByte(@)", header: "TColStd_HArray1OfByte.hxx".}
proc newTColStdHArray1OfByte*(theOther: TColStdArray1OfByte): TColStdHArray1OfByte {.
    cdecl, constructor, importcpp: "TColStd_HArray1OfByte(@)", header: "TColStd_HArray1OfByte.hxx".}
proc array1*(this: TColStdHArray1OfByte): TColStdArray1OfByte {.noSideEffect, cdecl,
    importcpp: "Array1", header: "TColStd_HArray1OfByte.hxx".}
