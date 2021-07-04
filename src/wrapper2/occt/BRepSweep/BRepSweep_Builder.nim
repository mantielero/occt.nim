##  Created on: 1993-01-14
##  Created by: Philippe DAUTRY
##  Copyright (c) 1993-1999 Matra Datavision
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
  ../Standard/Standard_Handle, ../BRep/BRep_Builder, ../TopAbs/TopAbs_Orientation

discard "forward decl of BRep_Builder"
discard "forward decl of TopoDS_Shape"
type
  BRepSweep_Builder* {.importcpp: "BRepSweep_Builder",
                      header: "BRepSweep_Builder.hxx", bycopy.} = object ## ! Creates a Builder.


proc constructBRepSweep_Builder*(aBuilder: BRep_Builder): BRepSweep_Builder {.
    constructor, importcpp: "BRepSweep_Builder(@)", header: "BRepSweep_Builder.hxx".}
proc Builder*(this: BRepSweep_Builder): BRep_Builder {.noSideEffect,
    importcpp: "Builder", header: "BRepSweep_Builder.hxx".}
proc MakeCompound*(this: BRepSweep_Builder; aCompound: var TopoDS_Shape) {.
    noSideEffect, importcpp: "MakeCompound", header: "BRepSweep_Builder.hxx".}
proc MakeCompSolid*(this: BRepSweep_Builder; aCompSolid: var TopoDS_Shape) {.
    noSideEffect, importcpp: "MakeCompSolid", header: "BRepSweep_Builder.hxx".}
proc MakeSolid*(this: BRepSweep_Builder; aSolid: var TopoDS_Shape) {.noSideEffect,
    importcpp: "MakeSolid", header: "BRepSweep_Builder.hxx".}
proc MakeShell*(this: BRepSweep_Builder; aShell: var TopoDS_Shape) {.noSideEffect,
    importcpp: "MakeShell", header: "BRepSweep_Builder.hxx".}
proc MakeWire*(this: BRepSweep_Builder; aWire: var TopoDS_Shape) {.noSideEffect,
    importcpp: "MakeWire", header: "BRepSweep_Builder.hxx".}
proc Add*(this: BRepSweep_Builder; aShape1: var TopoDS_Shape; aShape2: TopoDS_Shape;
         Orient: TopAbs_Orientation) {.noSideEffect, importcpp: "Add",
                                     header: "BRepSweep_Builder.hxx".}
proc Add*(this: BRepSweep_Builder; aShape1: var TopoDS_Shape; aShape2: TopoDS_Shape) {.
    noSideEffect, importcpp: "Add", header: "BRepSweep_Builder.hxx".}