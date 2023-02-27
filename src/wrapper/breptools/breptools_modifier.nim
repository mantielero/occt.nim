import breptools_types
import ../tkbrep/topods/topods_types
import ../tkernel/standard/standard_types
import ../tkernel/message/message_types
##  Created on: 1994-08-25
##  Created by: Jacques GOUSSARD
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

discard "forward decl of BRepTools_Modification"
discard "forward decl of Geom_Curve"
discard "forward decl of Geom_Surface"

proc newBRepTools_Modifier*(theMutableInput: bool = false): BRepTools_Modifier {.
    cdecl, constructor, importcpp: "BRepTools_Modifier(@)",
    header: "BRepTools_Modifier.hxx".}
proc newBRepTools_Modifier*(S: TopoDS_Shape): BRepTools_Modifier {.cdecl,
    constructor, importcpp: "BRepTools_Modifier(@)",
    header: "BRepTools_Modifier.hxx".}
proc newBRepTools_Modifier*(S: TopoDS_Shape; M: Handle[BRepTools_Modification]): BRepTools_Modifier {.
    cdecl, constructor, importcpp: "BRepTools_Modifier(@)",
    header: "BRepTools_Modifier.hxx".}
proc Init*(this: var BRepTools_Modifier; S: TopoDS_Shape) {.cdecl, importcpp: "Init",
    header: "BRepTools_Modifier.hxx".}
proc Perform*(this: var BRepTools_Modifier; M: Handle[BRepTools_Modification];
             theProgress: Message_ProgressRange = Message_ProgressRange()) {.cdecl,
    importcpp: "Perform", header: "BRepTools_Modifier.hxx".}
proc IsDone*(this: BRepTools_Modifier): bool {.noSideEffect, cdecl,
    importcpp: "IsDone", header: "BRepTools_Modifier.hxx".}
proc IsMutableInput*(this: BRepTools_Modifier): bool {.noSideEffect, cdecl,
    importcpp: "IsMutableInput", header: "BRepTools_Modifier.hxx".}
proc SetMutableInput*(this: var BRepTools_Modifier; theMutableInput: bool) {.cdecl,
    importcpp: "SetMutableInput", header: "BRepTools_Modifier.hxx".}
proc ModifiedShape*(this: BRepTools_Modifier; S: TopoDS_Shape): TopoDS_Shape {.
    noSideEffect, cdecl, importcpp: "ModifiedShape",
    header: "BRepTools_Modifier.hxx".}