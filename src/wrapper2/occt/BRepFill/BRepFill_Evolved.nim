##  Created on: 1994-10-03
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

discard "forward decl of Standard_ConstructionError"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of TopoDS_Wire"
discard "forward decl of gp_Ax3"
discard "forward decl of TopoDS_Face"
discard "forward decl of TopoDS_Shape"
discard "forward decl of BRepMAT2d_BisectingLocus"
discard "forward decl of BRepMAT2d_LinkTopoBilo"
discard "forward decl of BRepTools_Quilt"
discard "forward decl of TopLoc_Location"
discard "forward decl of TopoDS_Edge"
discard "forward decl of TopoDS_Vertex"
type
  BRepFillEvolved* {.importcpp: "BRepFill_Evolved", header: "BRepFill_Evolved.hxx",
                    bycopy.} = object


proc constructBRepFillEvolved*(): BRepFillEvolved {.constructor,
    importcpp: "BRepFill_Evolved(@)", header: "BRepFill_Evolved.hxx".}
proc constructBRepFillEvolved*(spine: TopoDS_Wire; profile: TopoDS_Wire;
                              axeProf: GpAx3; join: GeomAbsJoinType = geomAbsArc;
                              solid: StandardBoolean = standardFalse): BRepFillEvolved {.
    constructor, importcpp: "BRepFill_Evolved(@)", header: "BRepFill_Evolved.hxx".}
proc constructBRepFillEvolved*(spine: TopoDS_Face; profile: TopoDS_Wire;
                              axeProf: GpAx3; join: GeomAbsJoinType = geomAbsArc;
                              solid: StandardBoolean = standardFalse): BRepFillEvolved {.
    constructor, importcpp: "BRepFill_Evolved(@)", header: "BRepFill_Evolved.hxx".}
proc perform*(this: var BRepFillEvolved; spine: TopoDS_Wire; profile: TopoDS_Wire;
             axeProf: GpAx3; join: GeomAbsJoinType = geomAbsArc;
             solid: StandardBoolean = standardFalse) {.importcpp: "Perform",
    header: "BRepFill_Evolved.hxx".}
proc perform*(this: var BRepFillEvolved; spine: TopoDS_Face; profile: TopoDS_Wire;
             axeProf: GpAx3; join: GeomAbsJoinType = geomAbsArc;
             solid: StandardBoolean = standardFalse) {.importcpp: "Perform",
    header: "BRepFill_Evolved.hxx".}
proc isDone*(this: BRepFillEvolved): StandardBoolean {.noSideEffect,
    importcpp: "IsDone", header: "BRepFill_Evolved.hxx".}
proc shape*(this: BRepFillEvolved): TopoDS_Shape {.noSideEffect, importcpp: "Shape",
    header: "BRepFill_Evolved.hxx".}
proc generatedShapes*(this: BRepFillEvolved; spineShape: TopoDS_Shape;
                     profShape: TopoDS_Shape): TopToolsListOfShape {.noSideEffect,
    importcpp: "GeneratedShapes", header: "BRepFill_Evolved.hxx".}
proc joinType*(this: BRepFillEvolved): GeomAbsJoinType {.noSideEffect,
    importcpp: "JoinType", header: "BRepFill_Evolved.hxx".}
proc top*(this: BRepFillEvolved): TopoDS_Shape {.noSideEffect, importcpp: "Top",
    header: "BRepFill_Evolved.hxx".}
proc bottom*(this: BRepFillEvolved): TopoDS_Shape {.noSideEffect,
    importcpp: "Bottom", header: "BRepFill_Evolved.hxx".}

