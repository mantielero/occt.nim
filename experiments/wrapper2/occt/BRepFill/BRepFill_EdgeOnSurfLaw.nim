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

discard "forward decl of TopoDS_Wire"
discard "forward decl of TopoDS_Shape"
discard "forward decl of BRepFill_EdgeOnSurfLaw"
discard "forward decl of BRepFill_EdgeOnSurfLaw"
type
  HandleBRepFillEdgeOnSurfLaw* = Handle[BRepFillEdgeOnSurfLaw]

## ! Build Location Law, with a Wire and a  Surface.

type
  BRepFillEdgeOnSurfLaw* {.importcpp: "BRepFill_EdgeOnSurfLaw",
                          header: "BRepFill_EdgeOnSurfLaw.hxx", bycopy.} = object of BRepFillLocationLaw


proc constructBRepFillEdgeOnSurfLaw*(path: TopoDS_Wire; surf: TopoDS_Shape): BRepFillEdgeOnSurfLaw {.
    constructor, importcpp: "BRepFill_EdgeOnSurfLaw(@)",
    header: "BRepFill_EdgeOnSurfLaw.hxx".}
proc hasResult*(this: BRepFillEdgeOnSurfLaw): bool {.noSideEffect,
    importcpp: "HasResult", header: "BRepFill_EdgeOnSurfLaw.hxx".}
type
  BRepFillEdgeOnSurfLawbaseType* = BRepFillLocationLaw

proc getTypeName*(): cstring {.importcpp: "BRepFill_EdgeOnSurfLaw::get_type_name(@)",
                            header: "BRepFill_EdgeOnSurfLaw.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "BRepFill_EdgeOnSurfLaw::get_type_descriptor(@)",
    header: "BRepFill_EdgeOnSurfLaw.hxx".}
proc dynamicType*(this: BRepFillEdgeOnSurfLaw): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "BRepFill_EdgeOnSurfLaw.hxx".}
