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
  ../Standard/Standard_Handle, ../BRepAlgo/BRepAlgo_NormalProjection,
  ../BRepBuilderAPI/BRepBuilderAPI_MakeShape, ../Standard/Standard_Real,
  ../GeomAbs/GeomAbs_Shape, ../Standard/Standard_Integer,
  ../Standard/Standard_Boolean, ../TopTools/TopTools_ListOfShape

discard "forward decl of Standard_ConstructionError"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of StdFail_NotDone"
discard "forward decl of TopoDS_Shape"
discard "forward decl of TopoDS_Edge"
type
  BRepOffsetAPI_NormalProjection* {.importcpp: "BRepOffsetAPI_NormalProjection", header: "BRepOffsetAPI_NormalProjection.hxx",
                                   bycopy.} = object of BRepBuilderAPI_MakeShape ## !
                                                                            ## Constructs an
                                                                            ## empty
                                                                            ## framework to
                                                                            ## define
                                                                            ## projection on
                                                                            ## ! a
                                                                            ## shape
                                                                            ## according to the
                                                                            ## normal from each
                                                                            ## point to be
                                                                            ## !
                                                                            ## projected to the
                                                                            ## shape.


proc constructBRepOffsetAPI_NormalProjection*(): BRepOffsetAPI_NormalProjection {.
    constructor, importcpp: "BRepOffsetAPI_NormalProjection(@)",
    header: "BRepOffsetAPI_NormalProjection.hxx".}
proc constructBRepOffsetAPI_NormalProjection*(S: TopoDS_Shape): BRepOffsetAPI_NormalProjection {.
    constructor, importcpp: "BRepOffsetAPI_NormalProjection(@)",
    header: "BRepOffsetAPI_NormalProjection.hxx".}
proc Init*(this: var BRepOffsetAPI_NormalProjection; S: TopoDS_Shape) {.
    importcpp: "Init", header: "BRepOffsetAPI_NormalProjection.hxx".}
proc Add*(this: var BRepOffsetAPI_NormalProjection; ToProj: TopoDS_Shape) {.
    importcpp: "Add", header: "BRepOffsetAPI_NormalProjection.hxx".}
proc SetParams*(this: var BRepOffsetAPI_NormalProjection; Tol3D: Standard_Real;
               Tol2D: Standard_Real; InternalContinuity: GeomAbs_Shape;
               MaxDegree: Standard_Integer; MaxSeg: Standard_Integer) {.
    importcpp: "SetParams", header: "BRepOffsetAPI_NormalProjection.hxx".}
proc SetMaxDistance*(this: var BRepOffsetAPI_NormalProjection;
                    MaxDist: Standard_Real) {.importcpp: "SetMaxDistance",
    header: "BRepOffsetAPI_NormalProjection.hxx".}
proc SetLimit*(this: var BRepOffsetAPI_NormalProjection;
              FaceBoundaries: Standard_Boolean = Standard_True) {.
    importcpp: "SetLimit", header: "BRepOffsetAPI_NormalProjection.hxx".}
proc Compute3d*(this: var BRepOffsetAPI_NormalProjection;
               With3d: Standard_Boolean = Standard_True) {.importcpp: "Compute3d",
    header: "BRepOffsetAPI_NormalProjection.hxx".}
proc Build*(this: var BRepOffsetAPI_NormalProjection) {.importcpp: "Build",
    header: "BRepOffsetAPI_NormalProjection.hxx".}
proc IsDone*(this: BRepOffsetAPI_NormalProjection): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "BRepOffsetAPI_NormalProjection.hxx".}
proc Projection*(this: BRepOffsetAPI_NormalProjection): TopoDS_Shape {.noSideEffect,
    importcpp: "Projection", header: "BRepOffsetAPI_NormalProjection.hxx".}
proc Couple*(this: BRepOffsetAPI_NormalProjection; E: TopoDS_Edge): TopoDS_Shape {.
    noSideEffect, importcpp: "Couple", header: "BRepOffsetAPI_NormalProjection.hxx".}
proc Generated*(this: var BRepOffsetAPI_NormalProjection; S: TopoDS_Shape): TopTools_ListOfShape {.
    importcpp: "Generated", header: "BRepOffsetAPI_NormalProjection.hxx".}
proc Ancestor*(this: BRepOffsetAPI_NormalProjection; E: TopoDS_Edge): TopoDS_Shape {.
    noSideEffect, importcpp: "Ancestor",
    header: "BRepOffsetAPI_NormalProjection.hxx".}
proc BuildWire*(this: BRepOffsetAPI_NormalProjection;
               Liste: var TopTools_ListOfShape): Standard_Boolean {.noSideEffect,
    importcpp: "BuildWire", header: "BRepOffsetAPI_NormalProjection.hxx".}