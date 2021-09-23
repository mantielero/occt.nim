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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../TopoDS/TopoDS_Face, ../TopoDS/TopoDS_Wire,
  ../TopoDS/TopoDS_Shape, ../Standard/Standard_Boolean,
  ../GeomAbs/GeomAbs_JoinType, BRepFill_DataMapOfShapeDataMapOfShapeListOfShape,
  ../TopTools/TopTools_ListOfShape, ../TopTools/TopTools_DataMapOfShapeShape

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
  BRepFill_Evolved* {.importcpp: "BRepFill_Evolved",
                     header: "BRepFill_Evolved.hxx", bycopy.} = object


proc constructBRepFill_Evolved*(): BRepFill_Evolved {.constructor,
    importcpp: "BRepFill_Evolved(@)", header: "BRepFill_Evolved.hxx".}
proc constructBRepFill_Evolved*(Spine: TopoDS_Wire; Profile: TopoDS_Wire;
                               AxeProf: gp_Ax3;
                               Join: GeomAbs_JoinType = GeomAbs_Arc;
                               Solid: Standard_Boolean = Standard_False): BRepFill_Evolved {.
    constructor, importcpp: "BRepFill_Evolved(@)", header: "BRepFill_Evolved.hxx".}
proc constructBRepFill_Evolved*(Spine: TopoDS_Face; Profile: TopoDS_Wire;
                               AxeProf: gp_Ax3;
                               Join: GeomAbs_JoinType = GeomAbs_Arc;
                               Solid: Standard_Boolean = Standard_False): BRepFill_Evolved {.
    constructor, importcpp: "BRepFill_Evolved(@)", header: "BRepFill_Evolved.hxx".}
proc Perform*(this: var BRepFill_Evolved; Spine: TopoDS_Wire; Profile: TopoDS_Wire;
             AxeProf: gp_Ax3; Join: GeomAbs_JoinType = GeomAbs_Arc;
             Solid: Standard_Boolean = Standard_False) {.importcpp: "Perform",
    header: "BRepFill_Evolved.hxx".}
proc Perform*(this: var BRepFill_Evolved; Spine: TopoDS_Face; Profile: TopoDS_Wire;
             AxeProf: gp_Ax3; Join: GeomAbs_JoinType = GeomAbs_Arc;
             Solid: Standard_Boolean = Standard_False) {.importcpp: "Perform",
    header: "BRepFill_Evolved.hxx".}
proc IsDone*(this: BRepFill_Evolved): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "BRepFill_Evolved.hxx".}
proc Shape*(this: BRepFill_Evolved): TopoDS_Shape {.noSideEffect, importcpp: "Shape",
    header: "BRepFill_Evolved.hxx".}
proc GeneratedShapes*(this: BRepFill_Evolved; SpineShape: TopoDS_Shape;
                     ProfShape: TopoDS_Shape): TopTools_ListOfShape {.noSideEffect,
    importcpp: "GeneratedShapes", header: "BRepFill_Evolved.hxx".}
proc JoinType*(this: BRepFill_Evolved): GeomAbs_JoinType {.noSideEffect,
    importcpp: "JoinType", header: "BRepFill_Evolved.hxx".}
proc Top*(this: BRepFill_Evolved): TopoDS_Shape {.noSideEffect, importcpp: "Top",
    header: "BRepFill_Evolved.hxx".}
proc Bottom*(this: BRepFill_Evolved): TopoDS_Shape {.noSideEffect,
    importcpp: "Bottom", header: "BRepFill_Evolved.hxx".}