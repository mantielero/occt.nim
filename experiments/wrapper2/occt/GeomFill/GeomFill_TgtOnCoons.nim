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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Integer,
  GeomFill_TgtField, ../Standard/Standard_Real

discard "forward decl of GeomFill_CoonsAlgPatch"
discard "forward decl of gp_Vec"
discard "forward decl of GeomFill_TgtOnCoons"
discard "forward decl of GeomFill_TgtOnCoons"
type
  Handle_GeomFill_TgtOnCoons* = handle[GeomFill_TgtOnCoons]

## ! Defines   an   algorithmic  tangents  field   on a
## ! boundary of a CoonsAlgPatch.

type
  GeomFill_TgtOnCoons* {.importcpp: "GeomFill_TgtOnCoons",
                        header: "GeomFill_TgtOnCoons.hxx", bycopy.} = object of GeomFill_TgtField


proc constructGeomFill_TgtOnCoons*(K: handle[GeomFill_CoonsAlgPatch];
                                  I: Standard_Integer): GeomFill_TgtOnCoons {.
    constructor, importcpp: "GeomFill_TgtOnCoons(@)",
    header: "GeomFill_TgtOnCoons.hxx".}
proc Value*(this: GeomFill_TgtOnCoons; W: Standard_Real): gp_Vec {.noSideEffect,
    importcpp: "Value", header: "GeomFill_TgtOnCoons.hxx".}
proc D1*(this: GeomFill_TgtOnCoons; W: Standard_Real): gp_Vec {.noSideEffect,
    importcpp: "D1", header: "GeomFill_TgtOnCoons.hxx".}
proc D1*(this: GeomFill_TgtOnCoons; W: Standard_Real; T: var gp_Vec; DT: var gp_Vec) {.
    noSideEffect, importcpp: "D1", header: "GeomFill_TgtOnCoons.hxx".}
type
  GeomFill_TgtOnCoonsbase_type* = GeomFill_TgtField

proc get_type_name*(): cstring {.importcpp: "GeomFill_TgtOnCoons::get_type_name(@)",
                              header: "GeomFill_TgtOnCoons.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "GeomFill_TgtOnCoons::get_type_descriptor(@)",
    header: "GeomFill_TgtOnCoons.hxx".}
proc DynamicType*(this: GeomFill_TgtOnCoons): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "GeomFill_TgtOnCoons.hxx".}