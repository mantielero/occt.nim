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
  GeomPlateHArray1OfSequenceOfReal* {.importcpp: "GeomPlate_HArray1OfSequenceOfReal", header: "GeomPlate_HArray1OfSequenceOfReal.hxx",
                                     bycopy.} = object of GeomPlateArray1OfSequenceOfReal


proc constructGeomPlateHArray1OfSequenceOfReal*(theLower: StandardInteger;
    theUpper: StandardInteger): GeomPlateHArray1OfSequenceOfReal {.constructor,
    importcpp: "GeomPlate_HArray1OfSequenceOfReal(@)",
    header: "GeomPlate_HArray1OfSequenceOfReal.hxx".}
proc constructGeomPlateHArray1OfSequenceOfReal*(theLower: StandardInteger;
    theUpper: StandardInteger; theValue: ValueType): GeomPlateHArray1OfSequenceOfReal {.
    constructor, importcpp: "GeomPlate_HArray1OfSequenceOfReal(@)",
    header: "GeomPlate_HArray1OfSequenceOfReal.hxx".}
proc constructGeomPlateHArray1OfSequenceOfReal*(
    theOther: GeomPlateArray1OfSequenceOfReal): GeomPlateHArray1OfSequenceOfReal {.
    constructor, importcpp: "GeomPlate_HArray1OfSequenceOfReal(@)",
    header: "GeomPlate_HArray1OfSequenceOfReal.hxx".}
proc array1*(this: GeomPlateHArray1OfSequenceOfReal): GeomPlateArray1OfSequenceOfReal {.
    noSideEffect, importcpp: "Array1",
    header: "GeomPlate_HArray1OfSequenceOfReal.hxx".}
proc changeArray1*(this: var GeomPlateHArray1OfSequenceOfReal): var GeomPlateArray1OfSequenceOfReal {.
    importcpp: "ChangeArray1", header: "GeomPlate_HArray1OfSequenceOfReal.hxx".}
type
  GeomPlateHArray1OfSequenceOfRealbaseType* = MMgtTShared

proc getTypeName*(): cstring {.importcpp: "GeomPlate_HArray1OfSequenceOfReal::get_type_name(@)",
                            header: "GeomPlate_HArray1OfSequenceOfReal.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "GeomPlate_HArray1OfSequenceOfReal::get_type_descriptor(@)",
    header: "GeomPlate_HArray1OfSequenceOfReal.hxx".}
proc dynamicType*(this: GeomPlateHArray1OfSequenceOfReal): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "GeomPlate_HArray1OfSequenceOfReal.hxx".}

