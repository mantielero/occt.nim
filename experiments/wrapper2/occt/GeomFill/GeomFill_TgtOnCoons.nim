##  Created on: 1995-12-04
##  Created by: Laurent BOURESCHE
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

discard "forward decl of GeomFill_CoonsAlgPatch"
discard "forward decl of gp_Vec"
discard "forward decl of GeomFill_TgtOnCoons"
discard "forward decl of GeomFill_TgtOnCoons"
type
  HandleGeomFillTgtOnCoons* = Handle[GeomFillTgtOnCoons]

## ! Defines   an   algorithmic  tangents  field   on a
## ! boundary of a CoonsAlgPatch.

type
  GeomFillTgtOnCoons* {.importcpp: "GeomFill_TgtOnCoons",
                       header: "GeomFill_TgtOnCoons.hxx", bycopy.} = object of GeomFillTgtField


proc constructGeomFillTgtOnCoons*(k: Handle[GeomFillCoonsAlgPatch]; i: int): GeomFillTgtOnCoons {.
    constructor, importcpp: "GeomFill_TgtOnCoons(@)",
    header: "GeomFill_TgtOnCoons.hxx".}
proc value*(this: GeomFillTgtOnCoons; w: float): Vec {.noSideEffect,
    importcpp: "Value", header: "GeomFill_TgtOnCoons.hxx".}
proc d1*(this: GeomFillTgtOnCoons; w: float): Vec {.noSideEffect, importcpp: "D1",
    header: "GeomFill_TgtOnCoons.hxx".}
proc d1*(this: GeomFillTgtOnCoons; w: float; t: var Vec; dt: var Vec) {.noSideEffect,
    importcpp: "D1", header: "GeomFill_TgtOnCoons.hxx".}
type
  GeomFillTgtOnCoonsbaseType* = GeomFillTgtField

proc getTypeName*(): cstring {.importcpp: "GeomFill_TgtOnCoons::get_type_name(@)",
                            header: "GeomFill_TgtOnCoons.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "GeomFill_TgtOnCoons::get_type_descriptor(@)",
    header: "GeomFill_TgtOnCoons.hxx".}
proc dynamicType*(this: GeomFillTgtOnCoons): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "GeomFill_TgtOnCoons.hxx".}
