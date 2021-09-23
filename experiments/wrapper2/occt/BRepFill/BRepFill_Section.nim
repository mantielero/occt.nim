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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../TopoDS/TopoDS_Wire, ../TopoDS/TopoDS_Vertex,
  ../Standard/Standard_Boolean

discard "forward decl of TopoDS_Shape"
discard "forward decl of TopoDS_Vertex"
discard "forward decl of TopoDS_Wire"
type
  BRepFill_Section* {.importcpp: "BRepFill_Section",
                     header: "BRepFill_Section.hxx", bycopy.} = object


proc constructBRepFill_Section*(): BRepFill_Section {.constructor,
    importcpp: "BRepFill_Section(@)", header: "BRepFill_Section.hxx".}
proc constructBRepFill_Section*(Profile: TopoDS_Shape; V: TopoDS_Vertex;
                               WithContact: Standard_Boolean;
                               WithCorrection: Standard_Boolean): BRepFill_Section {.
    constructor, importcpp: "BRepFill_Section(@)", header: "BRepFill_Section.hxx".}
proc Set*(this: var BRepFill_Section; IsLaw: Standard_Boolean) {.importcpp: "Set",
    header: "BRepFill_Section.hxx".}
proc OriginalShape*(this: BRepFill_Section): TopoDS_Shape {.noSideEffect,
    importcpp: "OriginalShape", header: "BRepFill_Section.hxx".}
proc Wire*(this: BRepFill_Section): TopoDS_Wire {.noSideEffect, importcpp: "Wire",
    header: "BRepFill_Section.hxx".}
proc Vertex*(this: BRepFill_Section): TopoDS_Vertex {.noSideEffect,
    importcpp: "Vertex", header: "BRepFill_Section.hxx".}
proc ModifiedShape*(this: BRepFill_Section; theShape: TopoDS_Shape): TopoDS_Shape {.
    noSideEffect, importcpp: "ModifiedShape", header: "BRepFill_Section.hxx".}
proc IsLaw*(this: BRepFill_Section): Standard_Boolean {.noSideEffect,
    importcpp: "IsLaw", header: "BRepFill_Section.hxx".}
proc IsPunctual*(this: BRepFill_Section): Standard_Boolean {.noSideEffect,
    importcpp: "IsPunctual", header: "BRepFill_Section.hxx".}
proc WithContact*(this: BRepFill_Section): Standard_Boolean {.noSideEffect,
    importcpp: "WithContact", header: "BRepFill_Section.hxx".}
proc WithCorrection*(this: BRepFill_Section): Standard_Boolean {.noSideEffect,
    importcpp: "WithCorrection", header: "BRepFill_Section.hxx".}