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

import
  GeomFill_LocationLaw, GeomFill_Array1OfLocationLaw,
  ../NCollection/NCollection_DefineHArray1

type
  GeomFill_HArray1OfLocationLaw* {.importcpp: "GeomFill_HArray1OfLocationLaw",
                                  header: "GeomFill_HArray1OfLocationLaw.hxx",
                                  bycopy.} = object of GeomFill_Array1OfLocationLaw


proc constructGeomFill_HArray1OfLocationLaw*(theLower: Standard_Integer;
    theUpper: Standard_Integer): GeomFill_HArray1OfLocationLaw {.constructor,
    importcpp: "GeomFill_HArray1OfLocationLaw(@)",
    header: "GeomFill_HArray1OfLocationLaw.hxx".}
proc constructGeomFill_HArray1OfLocationLaw*(theLower: Standard_Integer;
    theUpper: Standard_Integer; theValue: value_type): GeomFill_HArray1OfLocationLaw {.
    constructor, importcpp: "GeomFill_HArray1OfLocationLaw(@)",
    header: "GeomFill_HArray1OfLocationLaw.hxx".}
proc constructGeomFill_HArray1OfLocationLaw*(
    theOther: GeomFill_Array1OfLocationLaw): GeomFill_HArray1OfLocationLaw {.
    constructor, importcpp: "GeomFill_HArray1OfLocationLaw(@)",
    header: "GeomFill_HArray1OfLocationLaw.hxx".}
proc Array1*(this: GeomFill_HArray1OfLocationLaw): GeomFill_Array1OfLocationLaw {.
    noSideEffect, importcpp: "Array1", header: "GeomFill_HArray1OfLocationLaw.hxx".}
proc ChangeArray1*(this: var GeomFill_HArray1OfLocationLaw): var GeomFill_Array1OfLocationLaw {.
    importcpp: "ChangeArray1", header: "GeomFill_HArray1OfLocationLaw.hxx".}
type
  GeomFill_HArray1OfLocationLawbase_type* = MMgt_TShared

proc get_type_name*(): cstring {.importcpp: "GeomFill_HArray1OfLocationLaw::get_type_name(@)",
                              header: "GeomFill_HArray1OfLocationLaw.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "GeomFill_HArray1OfLocationLaw::get_type_descriptor(@)",
    header: "GeomFill_HArray1OfLocationLaw.hxx".}
proc DynamicType*(this: GeomFill_HArray1OfLocationLaw): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "GeomFill_HArray1OfLocationLaw.hxx".}