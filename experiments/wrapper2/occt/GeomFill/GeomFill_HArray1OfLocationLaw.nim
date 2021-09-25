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
  GeomFillHArray1OfLocationLaw* {.importcpp: "GeomFill_HArray1OfLocationLaw",
                                 header: "GeomFill_HArray1OfLocationLaw.hxx",
                                 bycopy.} = object of GeomFillArray1OfLocationLaw


proc constructGeomFillHArray1OfLocationLaw*(theLower: int; theUpper: int): GeomFillHArray1OfLocationLaw {.
    constructor, importcpp: "GeomFill_HArray1OfLocationLaw(@)",
    header: "GeomFill_HArray1OfLocationLaw.hxx".}
proc constructGeomFillHArray1OfLocationLaw*(theLower: int; theUpper: int;
    theValue: ValueType): GeomFillHArray1OfLocationLaw {.constructor,
    importcpp: "GeomFill_HArray1OfLocationLaw(@)",
    header: "GeomFill_HArray1OfLocationLaw.hxx".}
proc constructGeomFillHArray1OfLocationLaw*(theOther: GeomFillArray1OfLocationLaw): GeomFillHArray1OfLocationLaw {.
    constructor, importcpp: "GeomFill_HArray1OfLocationLaw(@)",
    header: "GeomFill_HArray1OfLocationLaw.hxx".}
proc array1*(this: GeomFillHArray1OfLocationLaw): GeomFillArray1OfLocationLaw {.
    noSideEffect, importcpp: "Array1", header: "GeomFill_HArray1OfLocationLaw.hxx".}
proc changeArray1*(this: var GeomFillHArray1OfLocationLaw): var GeomFillArray1OfLocationLaw {.
    importcpp: "ChangeArray1", header: "GeomFill_HArray1OfLocationLaw.hxx".}
type
  GeomFillHArray1OfLocationLawbaseType* = MMgtTShared

proc getTypeName*(): cstring {.importcpp: "GeomFill_HArray1OfLocationLaw::get_type_name(@)",
                            header: "GeomFill_HArray1OfLocationLaw.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "GeomFill_HArray1OfLocationLaw::get_type_descriptor(@)",
    header: "GeomFill_HArray1OfLocationLaw.hxx".}
proc dynamicType*(this: GeomFillHArray1OfLocationLaw): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "GeomFill_HArray1OfLocationLaw.hxx".}
