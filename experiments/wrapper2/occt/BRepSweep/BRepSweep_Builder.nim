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

discard "forward decl of BRep_Builder"
discard "forward decl of TopoDS_Shape"
type
  BRepSweepBuilder* {.importcpp: "BRepSweep_Builder",
                     header: "BRepSweep_Builder.hxx", bycopy.} = object ## ! Creates a Builder.


proc constructBRepSweepBuilder*(aBuilder: BRepBuilder): BRepSweepBuilder {.
    constructor, importcpp: "BRepSweep_Builder(@)", header: "BRepSweep_Builder.hxx".}
proc builder*(this: BRepSweepBuilder): BRepBuilder {.noSideEffect,
    importcpp: "Builder", header: "BRepSweep_Builder.hxx".}
proc makeCompound*(this: BRepSweepBuilder; aCompound: var TopoDS_Shape) {.
    noSideEffect, importcpp: "MakeCompound", header: "BRepSweep_Builder.hxx".}
proc makeCompSolid*(this: BRepSweepBuilder; aCompSolid: var TopoDS_Shape) {.
    noSideEffect, importcpp: "MakeCompSolid", header: "BRepSweep_Builder.hxx".}
proc makeSolid*(this: BRepSweepBuilder; aSolid: var TopoDS_Shape) {.noSideEffect,
    importcpp: "MakeSolid", header: "BRepSweep_Builder.hxx".}
proc makeShell*(this: BRepSweepBuilder; aShell: var TopoDS_Shape) {.noSideEffect,
    importcpp: "MakeShell", header: "BRepSweep_Builder.hxx".}
proc makeWire*(this: BRepSweepBuilder; aWire: var TopoDS_Shape) {.noSideEffect,
    importcpp: "MakeWire", header: "BRepSweep_Builder.hxx".}
proc add*(this: BRepSweepBuilder; aShape1: var TopoDS_Shape; aShape2: TopoDS_Shape;
         orient: TopAbsOrientation) {.noSideEffect, importcpp: "Add",
                                    header: "BRepSweep_Builder.hxx".}
proc add*(this: BRepSweepBuilder; aShape1: var TopoDS_Shape; aShape2: TopoDS_Shape) {.
    noSideEffect, importcpp: "Add", header: "BRepSweep_Builder.hxx".}
