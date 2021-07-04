##  Created on: 1997-10-13
##  Created by: Roman BORISOV
##  Copyright (c) 1997-1999 Matra Datavision
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
  ../Standard/Standard_Handle, ../TopoDS/TopoDS_Shape,
  ../Standard/Standard_Boolean, ../Standard/Standard_Real,
  ../GeomAbs/GeomAbs_Shape, ../Standard/Standard_Integer,
  ../TopTools/TopTools_DataMapOfShapeShape,
  ../TopTools/TopTools_DataMapOfShapeListOfShape,
  ../TopTools/TopTools_ListOfShape

discard "forward decl of Standard_ConstructionError"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of StdFail_NotDone"
discard "forward decl of TopoDS_Shape"
discard "forward decl of TopoDS_Edge"
discard "forward decl of Adaptor3d_Curve"
type
  BRepAlgo_NormalProjection* {.importcpp: "BRepAlgo_NormalProjection",
                              header: "BRepAlgo_NormalProjection.hxx", bycopy.} = object


proc constructBRepAlgo_NormalProjection*(): BRepAlgo_NormalProjection {.
    constructor, importcpp: "BRepAlgo_NormalProjection(@)",
    header: "BRepAlgo_NormalProjection.hxx".}
proc constructBRepAlgo_NormalProjection*(S: TopoDS_Shape): BRepAlgo_NormalProjection {.
    constructor, importcpp: "BRepAlgo_NormalProjection(@)",
    header: "BRepAlgo_NormalProjection.hxx".}
proc Init*(this: var BRepAlgo_NormalProjection; S: TopoDS_Shape) {.importcpp: "Init",
    header: "BRepAlgo_NormalProjection.hxx".}
proc Add*(this: var BRepAlgo_NormalProjection; ToProj: TopoDS_Shape) {.
    importcpp: "Add", header: "BRepAlgo_NormalProjection.hxx".}
proc SetParams*(this: var BRepAlgo_NormalProjection; Tol3D: Standard_Real;
               Tol2D: Standard_Real; InternalContinuity: GeomAbs_Shape;
               MaxDegree: Standard_Integer; MaxSeg: Standard_Integer) {.
    importcpp: "SetParams", header: "BRepAlgo_NormalProjection.hxx".}
proc SetDefaultParams*(this: var BRepAlgo_NormalProjection) {.
    importcpp: "SetDefaultParams", header: "BRepAlgo_NormalProjection.hxx".}
proc SetMaxDistance*(this: var BRepAlgo_NormalProjection; MaxDist: Standard_Real) {.
    importcpp: "SetMaxDistance", header: "BRepAlgo_NormalProjection.hxx".}
proc Compute3d*(this: var BRepAlgo_NormalProjection;
               With3d: Standard_Boolean = Standard_True) {.importcpp: "Compute3d",
    header: "BRepAlgo_NormalProjection.hxx".}
proc SetLimit*(this: var BRepAlgo_NormalProjection;
              FaceBoundaries: Standard_Boolean = Standard_True) {.
    importcpp: "SetLimit", header: "BRepAlgo_NormalProjection.hxx".}
proc Build*(this: var BRepAlgo_NormalProjection) {.importcpp: "Build",
    header: "BRepAlgo_NormalProjection.hxx".}
proc IsDone*(this: BRepAlgo_NormalProjection): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "BRepAlgo_NormalProjection.hxx".}
proc Projection*(this: BRepAlgo_NormalProjection): TopoDS_Shape {.noSideEffect,
    importcpp: "Projection", header: "BRepAlgo_NormalProjection.hxx".}
proc Ancestor*(this: BRepAlgo_NormalProjection; E: TopoDS_Edge): TopoDS_Shape {.
    noSideEffect, importcpp: "Ancestor", header: "BRepAlgo_NormalProjection.hxx".}
proc Couple*(this: BRepAlgo_NormalProjection; E: TopoDS_Edge): TopoDS_Shape {.
    noSideEffect, importcpp: "Couple", header: "BRepAlgo_NormalProjection.hxx".}
proc Generated*(this: var BRepAlgo_NormalProjection; S: TopoDS_Shape): TopTools_ListOfShape {.
    importcpp: "Generated", header: "BRepAlgo_NormalProjection.hxx".}
proc IsElementary*(this: BRepAlgo_NormalProjection; C: Adaptor3d_Curve): Standard_Boolean {.
    noSideEffect, importcpp: "IsElementary",
    header: "BRepAlgo_NormalProjection.hxx".}
proc BuildWire*(this: BRepAlgo_NormalProjection; Liste: var TopTools_ListOfShape): Standard_Boolean {.
    noSideEffect, importcpp: "BuildWire", header: "BRepAlgo_NormalProjection.hxx".}