import brepadaptor_types
import ../tcolstd/tcolstd_types





##  Created on: 1993-02-19
##  Created by: Remi LEQUETTE
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



proc newBRepAdaptorHArray1OfCurve*(theLower: cint; theUpper: cint): BRepAdaptorHArray1OfCurve {.
    cdecl, constructor, importcpp: "BRepAdaptor_HArray1OfCurve(@)", header: "BRepAdaptor_HArray1OfCurve.hxx".}
proc newBRepAdaptorHArray1OfCurve*(theLower: cint; theUpper: cint;
                                  theValue: ValueType): BRepAdaptorHArray1OfCurve {.
    cdecl, constructor, importcpp: "BRepAdaptor_HArray1OfCurve(@)", header: "BRepAdaptor_HArray1OfCurve.hxx".}
proc newBRepAdaptorHArray1OfCurve*(theOther: BRepAdaptorArray1OfCurve): BRepAdaptorHArray1OfCurve {.
    cdecl, constructor, importcpp: "BRepAdaptor_HArray1OfCurve(@)", header: "BRepAdaptor_HArray1OfCurve.hxx".}
proc array1*(this: BRepAdaptorHArray1OfCurve): BRepAdaptorArray1OfCurve {.
    noSideEffect, cdecl, importcpp: "Array1", header: "BRepAdaptor_HArray1OfCurve.hxx".}


