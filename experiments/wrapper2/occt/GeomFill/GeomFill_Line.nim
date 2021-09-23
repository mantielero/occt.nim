##  Created on: 1994-02-18
##  Created by: Bruno DUMORTIER
##  Copyright (c) 1994-1999 Matra Datavision
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
  ../Standard/Standard_Transient

discard "forward decl of GeomFill_Line"
discard "forward decl of GeomFill_Line"
type
  Handle_GeomFill_Line* = handle[GeomFill_Line]

## ! class for instantiation of AppBlend

type
  GeomFill_Line* {.importcpp: "GeomFill_Line", header: "GeomFill_Line.hxx", bycopy.} = object of Standard_Transient


proc constructGeomFill_Line*(): GeomFill_Line {.constructor,
    importcpp: "GeomFill_Line(@)", header: "GeomFill_Line.hxx".}
proc constructGeomFill_Line*(NbPoints: Standard_Integer): GeomFill_Line {.
    constructor, importcpp: "GeomFill_Line(@)", header: "GeomFill_Line.hxx".}
proc NbPoints*(this: GeomFill_Line): Standard_Integer {.noSideEffect,
    importcpp: "NbPoints", header: "GeomFill_Line.hxx".}
proc Point*(this: GeomFill_Line; Index: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "Point", header: "GeomFill_Line.hxx".}
type
  GeomFill_Linebase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "GeomFill_Line::get_type_name(@)",
                              header: "GeomFill_Line.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "GeomFill_Line::get_type_descriptor(@)",
    header: "GeomFill_Line.hxx".}
proc DynamicType*(this: GeomFill_Line): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "GeomFill_Line.hxx".}