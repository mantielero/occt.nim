##  Created on: 1998-01-14
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
  ../Standard/Standard, ../Standard/Standard_Type, BRepFill_Edge3DLaw,
  ../Standard/Standard_Real

discard "forward decl of TopoDS_Wire"
discard "forward decl of GeomFill_LocationDraft"
discard "forward decl of BRepFill_DraftLaw"
discard "forward decl of BRepFill_DraftLaw"
type
  Handle_BRepFill_DraftLaw* = handle[BRepFill_DraftLaw]

## ! Build Location Law, with a  Wire.

type
  BRepFill_DraftLaw* {.importcpp: "BRepFill_DraftLaw",
                      header: "BRepFill_DraftLaw.hxx", bycopy.} = object of BRepFill_Edge3DLaw


proc constructBRepFill_DraftLaw*(Path: TopoDS_Wire;
                                Law: handle[GeomFill_LocationDraft]): BRepFill_DraftLaw {.
    constructor, importcpp: "BRepFill_DraftLaw(@)", header: "BRepFill_DraftLaw.hxx".}
proc CleanLaw*(this: var BRepFill_DraftLaw; TolAngular: Standard_Real) {.
    importcpp: "CleanLaw", header: "BRepFill_DraftLaw.hxx".}
type
  BRepFill_DraftLawbase_type* = BRepFill_Edge3DLaw

proc get_type_name*(): cstring {.importcpp: "BRepFill_DraftLaw::get_type_name(@)",
                              header: "BRepFill_DraftLaw.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "BRepFill_DraftLaw::get_type_descriptor(@)",
    header: "BRepFill_DraftLaw.hxx".}
proc DynamicType*(this: BRepFill_DraftLaw): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "BRepFill_DraftLaw.hxx".}