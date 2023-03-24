import brepoffset_types
import ../topods/topods_types
import ../geomabs/geomabs_types
import ../message/message_types
import ../toptools/toptools_types
#import ../standard/standard_types



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

discard "forward decl of TopoDS_Shape"
discard "forward decl of TopoDS_Edge"

proc newBRepOffsetAPI_NormalProjection*(): BRepOffsetAPI_NormalProjection {.cdecl,
    constructor, importcpp: "BRepOffsetAPI_NormalProjection(@)".}
proc newBRepOffsetAPI_NormalProjection*(S: TopoDS_Shape): BRepOffsetAPI_NormalProjection {.
    cdecl, constructor, importcpp: "BRepOffsetAPI_NormalProjection(@)",
    .}
proc Init*(this: var BRepOffsetAPI_NormalProjection; S: TopoDS_Shape) {.cdecl,
    importcpp: "Init".}
proc Add*(this: var BRepOffsetAPI_NormalProjection; ToProj: TopoDS_Shape) {.cdecl,
    importcpp: "Add".}
proc SetParams*(this: var BRepOffsetAPI_NormalProjection; Tol3D: cfloat;
               Tol2D: cfloat; InternalContinuity: GeomAbs_Shape; MaxDegree: cint;
               MaxSeg: cint) {.cdecl, importcpp: "SetParams".}
proc SetMaxDistance*(this: var BRepOffsetAPI_NormalProjection; MaxDist: cfloat) {.
    cdecl, importcpp: "SetMaxDistance".}
proc SetLimit*(this: var BRepOffsetAPI_NormalProjection; FaceBoundaries: bool = true) {.
    cdecl, importcpp: "SetLimit".}
proc Compute3d*(this: var BRepOffsetAPI_NormalProjection; With3d: bool = true) {.cdecl,
    importcpp: "Compute3d".}
proc Build*(this: var BRepOffsetAPI_NormalProjection;
           theRange: Message_ProgressRange = Message_ProgressRange()) {.cdecl,
    importcpp: "Build".}
proc IsDone*(this: BRepOffsetAPI_NormalProjection): bool {.noSideEffect, cdecl,
    importcpp: "IsDone".}
proc Projection*(this: BRepOffsetAPI_NormalProjection): TopoDS_Shape {.noSideEffect,
    cdecl, importcpp: "Projection".}
proc Couple*(this: BRepOffsetAPI_NormalProjection; E: TopoDS_Edge): TopoDS_Shape {.
    noSideEffect, cdecl, importcpp: "Couple".}
proc Generated*(this: var BRepOffsetAPI_NormalProjection; S: TopoDS_Shape): TopTools_ListOfShape {.
    cdecl, importcpp: "Generated".}
proc Ancestor*(this: BRepOffsetAPI_NormalProjection; E: TopoDS_Edge): TopoDS_Shape {.
    noSideEffect, cdecl, importcpp: "Ancestor".}
proc BuildWire*(this: BRepOffsetAPI_NormalProjection;
               Liste: var TopTools_ListOfShape): bool {.noSideEffect, cdecl,
    importcpp: "BuildWire".}