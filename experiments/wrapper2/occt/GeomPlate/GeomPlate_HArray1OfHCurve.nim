##  Created on: 1996-03-07
##  Created by: Stagiaire Frederic CALOONE
##  Copyright (c) 1996-1999 Matra Datavision
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
  GeomPlateHArray1OfHCurve* {.importcpp: "GeomPlate_HArray1OfHCurve",
                             header: "GeomPlate_HArray1OfHCurve.hxx", bycopy.} = object of GeomPlateArray1OfHCurve


proc constructGeomPlateHArray1OfHCurve*(theLower: int; theUpper: int): GeomPlateHArray1OfHCurve {.
    constructor, importcpp: "GeomPlate_HArray1OfHCurve(@)",
    header: "GeomPlate_HArray1OfHCurve.hxx".}
proc constructGeomPlateHArray1OfHCurve*(theLower: int; theUpper: int;
                                       theValue: ValueType): GeomPlateHArray1OfHCurve {.
    constructor, importcpp: "GeomPlate_HArray1OfHCurve(@)",
    header: "GeomPlate_HArray1OfHCurve.hxx".}
proc constructGeomPlateHArray1OfHCurve*(theOther: GeomPlateArray1OfHCurve): GeomPlateHArray1OfHCurve {.
    constructor, importcpp: "GeomPlate_HArray1OfHCurve(@)",
    header: "GeomPlate_HArray1OfHCurve.hxx".}
proc array1*(this: GeomPlateHArray1OfHCurve): GeomPlateArray1OfHCurve {.
    noSideEffect, importcpp: "Array1", header: "GeomPlate_HArray1OfHCurve.hxx".}
proc changeArray1*(this: var GeomPlateHArray1OfHCurve): var GeomPlateArray1OfHCurve {.
    importcpp: "ChangeArray1", header: "GeomPlate_HArray1OfHCurve.hxx".}
type
  GeomPlateHArray1OfHCurvebaseType* = MMgtTShared

proc getTypeName*(): cstring {.importcpp: "GeomPlate_HArray1OfHCurve::get_type_name(@)",
                            header: "GeomPlate_HArray1OfHCurve.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "GeomPlate_HArray1OfHCurve::get_type_descriptor(@)",
    header: "GeomPlate_HArray1OfHCurve.hxx".}
proc dynamicType*(this: GeomPlateHArray1OfHCurve): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "GeomPlate_HArray1OfHCurve.hxx".}
