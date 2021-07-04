##  Created on: 1998-07-27
##  Created by: Philippe MANGIN
##  Copyright (c) 1998-1999 Matra Datavision
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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Boolean,
  BRepFill_LocationLaw

discard "forward decl of TopoDS_Wire"
discard "forward decl of TopoDS_Shape"
discard "forward decl of BRepFill_EdgeOnSurfLaw"
discard "forward decl of BRepFill_EdgeOnSurfLaw"
type
  Handle_BRepFill_EdgeOnSurfLaw* = handle[BRepFill_EdgeOnSurfLaw]

## ! Build Location Law, with a Wire and a  Surface.

type
  BRepFill_EdgeOnSurfLaw* {.importcpp: "BRepFill_EdgeOnSurfLaw",
                           header: "BRepFill_EdgeOnSurfLaw.hxx", bycopy.} = object of BRepFill_LocationLaw


proc constructBRepFill_EdgeOnSurfLaw*(Path: TopoDS_Wire; Surf: TopoDS_Shape): BRepFill_EdgeOnSurfLaw {.
    constructor, importcpp: "BRepFill_EdgeOnSurfLaw(@)",
    header: "BRepFill_EdgeOnSurfLaw.hxx".}
proc HasResult*(this: BRepFill_EdgeOnSurfLaw): Standard_Boolean {.noSideEffect,
    importcpp: "HasResult", header: "BRepFill_EdgeOnSurfLaw.hxx".}
type
  BRepFill_EdgeOnSurfLawbase_type* = BRepFill_LocationLaw

proc get_type_name*(): cstring {.importcpp: "BRepFill_EdgeOnSurfLaw::get_type_name(@)",
                              header: "BRepFill_EdgeOnSurfLaw.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "BRepFill_EdgeOnSurfLaw::get_type_descriptor(@)",
    header: "BRepFill_EdgeOnSurfLaw.hxx".}
proc DynamicType*(this: BRepFill_EdgeOnSurfLaw): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "BRepFill_EdgeOnSurfLaw.hxx".}