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
  ../Standard/Standard, ../Standard/Standard_Type, BRepFill_LocationLaw

discard "forward decl of TopoDS_Wire"
discard "forward decl of GeomFill_LocationLaw"
discard "forward decl of BRepFill_Edge3DLaw"
discard "forward decl of BRepFill_Edge3DLaw"
type
  Handle_BRepFill_Edge3DLaw* = handle[BRepFill_Edge3DLaw]

## ! Build Location Law, with a  Wire.

type
  BRepFill_Edge3DLaw* {.importcpp: "BRepFill_Edge3DLaw",
                       header: "BRepFill_Edge3DLaw.hxx", bycopy.} = object of BRepFill_LocationLaw


proc constructBRepFill_Edge3DLaw*(Path: TopoDS_Wire;
                                 Law: handle[GeomFill_LocationLaw]): BRepFill_Edge3DLaw {.
    constructor, importcpp: "BRepFill_Edge3DLaw(@)",
    header: "BRepFill_Edge3DLaw.hxx".}
type
  BRepFill_Edge3DLawbase_type* = BRepFill_LocationLaw

proc get_type_name*(): cstring {.importcpp: "BRepFill_Edge3DLaw::get_type_name(@)",
                              header: "BRepFill_Edge3DLaw.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "BRepFill_Edge3DLaw::get_type_descriptor(@)",
    header: "BRepFill_Edge3DLaw.hxx".}
proc DynamicType*(this: BRepFill_Edge3DLaw): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "BRepFill_Edge3DLaw.hxx".}