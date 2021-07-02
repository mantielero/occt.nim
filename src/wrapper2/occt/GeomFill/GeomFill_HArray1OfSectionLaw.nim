##  Created on: 1993-09-28
##  Created by: Bruno DUMORTIER
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

type
  GeomFillHArray1OfSectionLaw* {.importcpp: "GeomFill_HArray1OfSectionLaw",
                                header: "GeomFill_HArray1OfSectionLaw.hxx", bycopy.} = object of GeomFillArray1OfSectionLaw


proc constructGeomFillHArray1OfSectionLaw*(theLower: StandardInteger;
    theUpper: StandardInteger): GeomFillHArray1OfSectionLaw {.constructor,
    importcpp: "GeomFill_HArray1OfSectionLaw(@)",
    header: "GeomFill_HArray1OfSectionLaw.hxx".}
proc constructGeomFillHArray1OfSectionLaw*(theLower: StandardInteger;
    theUpper: StandardInteger; theValue: ValueType): GeomFillHArray1OfSectionLaw {.
    constructor, importcpp: "GeomFill_HArray1OfSectionLaw(@)",
    header: "GeomFill_HArray1OfSectionLaw.hxx".}
proc constructGeomFillHArray1OfSectionLaw*(theOther: GeomFillArray1OfSectionLaw): GeomFillHArray1OfSectionLaw {.
    constructor, importcpp: "GeomFill_HArray1OfSectionLaw(@)",
    header: "GeomFill_HArray1OfSectionLaw.hxx".}
proc array1*(this: GeomFillHArray1OfSectionLaw): GeomFillArray1OfSectionLaw {.
    noSideEffect, importcpp: "Array1", header: "GeomFill_HArray1OfSectionLaw.hxx".}
proc changeArray1*(this: var GeomFillHArray1OfSectionLaw): var GeomFillArray1OfSectionLaw {.
    importcpp: "ChangeArray1", header: "GeomFill_HArray1OfSectionLaw.hxx".}
type
  GeomFillHArray1OfSectionLawbaseType* = MMgtTShared

proc getTypeName*(): cstring {.importcpp: "GeomFill_HArray1OfSectionLaw::get_type_name(@)",
                            header: "GeomFill_HArray1OfSectionLaw.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "GeomFill_HArray1OfSectionLaw::get_type_descriptor(@)",
    header: "GeomFill_HArray1OfSectionLaw.hxx".}
proc dynamicType*(this: GeomFillHArray1OfSectionLaw): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "GeomFill_HArray1OfSectionLaw.hxx".}

