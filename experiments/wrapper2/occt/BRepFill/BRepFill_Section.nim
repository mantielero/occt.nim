##  Created on: 1998-07-22
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

discard "forward decl of TopoDS_Shape"
discard "forward decl of TopoDS_Vertex"
discard "forward decl of TopoDS_Wire"
type
  BRepFillSection* {.importcpp: "BRepFill_Section", header: "BRepFill_Section.hxx",
                    bycopy.} = object


proc constructBRepFillSection*(): BRepFillSection {.constructor,
    importcpp: "BRepFill_Section(@)", header: "BRepFill_Section.hxx".}
proc constructBRepFillSection*(profile: TopoDS_Shape; v: TopoDS_Vertex;
                              withContact: bool; withCorrection: bool): BRepFillSection {.
    constructor, importcpp: "BRepFill_Section(@)", header: "BRepFill_Section.hxx".}
proc set*(this: var BRepFillSection; isLaw: bool) {.importcpp: "Set",
    header: "BRepFill_Section.hxx".}
proc originalShape*(this: BRepFillSection): TopoDS_Shape {.noSideEffect,
    importcpp: "OriginalShape", header: "BRepFill_Section.hxx".}
proc wire*(this: BRepFillSection): TopoDS_Wire {.noSideEffect, importcpp: "Wire",
    header: "BRepFill_Section.hxx".}
proc vertex*(this: BRepFillSection): TopoDS_Vertex {.noSideEffect,
    importcpp: "Vertex", header: "BRepFill_Section.hxx".}
proc modifiedShape*(this: BRepFillSection; theShape: TopoDS_Shape): TopoDS_Shape {.
    noSideEffect, importcpp: "ModifiedShape", header: "BRepFill_Section.hxx".}
proc isLaw*(this: BRepFillSection): bool {.noSideEffect, importcpp: "IsLaw",
                                       header: "BRepFill_Section.hxx".}
proc isPunctual*(this: BRepFillSection): bool {.noSideEffect,
    importcpp: "IsPunctual", header: "BRepFill_Section.hxx".}
proc withContact*(this: BRepFillSection): bool {.noSideEffect,
    importcpp: "WithContact", header: "BRepFill_Section.hxx".}
proc withCorrection*(this: BRepFillSection): bool {.noSideEffect,
    importcpp: "WithCorrection", header: "BRepFill_Section.hxx".}

























