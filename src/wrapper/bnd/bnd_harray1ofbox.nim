import bnd_types
#import ../standard/standard_types
import ../tcolstd/tcolstd_types
#import ../gp/gp_types
##  Created on: 1991-01-08
##  Created by: Didier Piffault
##  Copyright (c) 1991-1999 Matra Datavision
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



proc newBndHArray1OfBox*(theLower: cint; theUpper: cint): BndHArray1OfBox {.cdecl,
    constructor, importcpp: "Bnd_HArray1OfBox(@)", header: "Bnd_HArray1OfBox.hxx".}
proc newBndHArray1OfBox*(theLower: cint; theUpper: cint; theValue: ValueType): BndHArray1OfBox {.
    cdecl, constructor, importcpp: "Bnd_HArray1OfBox(@)", header: "Bnd_HArray1OfBox.hxx".}
proc newBndHArray1OfBox*(theOther: BndArray1OfBox): BndHArray1OfBox {.cdecl,
    constructor, importcpp: "Bnd_HArray1OfBox(@)", header: "Bnd_HArray1OfBox.hxx".}
proc array1*(this: BndHArray1OfBox): BndArray1OfBox {.noSideEffect, cdecl,
    importcpp: "Array1", header: "Bnd_HArray1OfBox.hxx".}
