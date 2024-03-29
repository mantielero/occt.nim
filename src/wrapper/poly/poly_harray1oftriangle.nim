import poly_types
#import ../standard/standard_types
#import ../gp/gp_types
import ../tcolstd/tcolstd_types

##  Created on: 1995-03-06
##  Created by: Laurent PAINNOT
##  Copyright (c) 1995-1999 Matra Datavision
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



proc newPolyHArray1OfTriangle*(theLower: cint; theUpper: cint): PolyHArray1OfTriangle {.
    cdecl, constructor, importcpp: "Poly_HArray1OfTriangle(@)", header: "Poly_HArray1OfTriangle.hxx".}
proc newPolyHArray1OfTriangle*(theLower: cint; theUpper: cint; theValue: ValueType): PolyHArray1OfTriangle {.
    cdecl, constructor, importcpp: "Poly_HArray1OfTriangle(@)", header: "Poly_HArray1OfTriangle.hxx".}
proc newPolyHArray1OfTriangle*(theOther: PolyArray1OfTriangle): PolyHArray1OfTriangle {.
    cdecl, constructor, importcpp: "Poly_HArray1OfTriangle(@)", header: "Poly_HArray1OfTriangle.hxx".}
proc array1*(this: PolyHArray1OfTriangle): PolyArray1OfTriangle {.noSideEffect,
    cdecl, importcpp: "Array1", header: "Poly_HArray1OfTriangle.hxx".}
