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
  BndHArray1OfBox2d* {.importcpp: "Bnd_HArray1OfBox2d",
                      header: "Bnd_HArray1OfBox2d.hxx", bycopy.} = object of BndArray1OfBox2d


proc constructBndHArray1OfBox2d*(theLower: int; theUpper: int): BndHArray1OfBox2d {.
    constructor, importcpp: "Bnd_HArray1OfBox2d(@)",
    header: "Bnd_HArray1OfBox2d.hxx".}
proc constructBndHArray1OfBox2d*(theLower: int; theUpper: int; theValue: ValueType): BndHArray1OfBox2d {.
    constructor, importcpp: "Bnd_HArray1OfBox2d(@)",
    header: "Bnd_HArray1OfBox2d.hxx".}
proc constructBndHArray1OfBox2d*(theOther: BndArray1OfBox2d): BndHArray1OfBox2d {.
    constructor, importcpp: "Bnd_HArray1OfBox2d(@)",
    header: "Bnd_HArray1OfBox2d.hxx".}
proc array1*(this: BndHArray1OfBox2d): BndArray1OfBox2d {.noSideEffect,
    importcpp: "Array1", header: "Bnd_HArray1OfBox2d.hxx".}
proc changeArray1*(this: var BndHArray1OfBox2d): var BndArray1OfBox2d {.
    importcpp: "ChangeArray1", header: "Bnd_HArray1OfBox2d.hxx".}
type
  BndHArray1OfBox2dbaseType* = MMgtTShared

proc getTypeName*(): cstring {.importcpp: "Bnd_HArray1OfBox2d::get_type_name(@)",
                            header: "Bnd_HArray1OfBox2d.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Bnd_HArray1OfBox2d::get_type_descriptor(@)",
    header: "Bnd_HArray1OfBox2d.hxx".}
proc dynamicType*(this: BndHArray1OfBox2d): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Bnd_HArray1OfBox2d.hxx".}
