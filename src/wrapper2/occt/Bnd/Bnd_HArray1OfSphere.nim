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

type
  BndHArray1OfSphere* {.importcpp: "Bnd_HArray1OfSphere",
                       header: "Bnd_HArray1OfSphere.hxx", bycopy.} = object of BndArray1OfSphere


proc constructBndHArray1OfSphere*(theLower: StandardInteger;
                                 theUpper: StandardInteger): BndHArray1OfSphere {.
    constructor, importcpp: "Bnd_HArray1OfSphere(@)",
    header: "Bnd_HArray1OfSphere.hxx".}
proc constructBndHArray1OfSphere*(theLower: StandardInteger;
                                 theUpper: StandardInteger; theValue: ValueType): BndHArray1OfSphere {.
    constructor, importcpp: "Bnd_HArray1OfSphere(@)",
    header: "Bnd_HArray1OfSphere.hxx".}
proc constructBndHArray1OfSphere*(theOther: BndArray1OfSphere): BndHArray1OfSphere {.
    constructor, importcpp: "Bnd_HArray1OfSphere(@)",
    header: "Bnd_HArray1OfSphere.hxx".}
proc array1*(this: BndHArray1OfSphere): BndArray1OfSphere {.noSideEffect,
    importcpp: "Array1", header: "Bnd_HArray1OfSphere.hxx".}
proc changeArray1*(this: var BndHArray1OfSphere): var BndArray1OfSphere {.
    importcpp: "ChangeArray1", header: "Bnd_HArray1OfSphere.hxx".}
type
  BndHArray1OfSpherebaseType* = MMgtTShared

proc getTypeName*(): cstring {.importcpp: "Bnd_HArray1OfSphere::get_type_name(@)",
                            header: "Bnd_HArray1OfSphere.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Bnd_HArray1OfSphere::get_type_descriptor(@)",
    header: "Bnd_HArray1OfSphere.hxx".}
proc dynamicType*(this: BndHArray1OfSphere): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Bnd_HArray1OfSphere.hxx".}

