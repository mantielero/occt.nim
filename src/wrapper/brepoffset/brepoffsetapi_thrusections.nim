import brepoffset_types
import ../topods/topods_types
import ../approx/approx_types
import ../geomabs/geomabs_types
import ../message/message_types
import ../toptools/toptools_types
##  Created on: 1995-07-17
##  Created by: Jing-Cheng MEI
##  Copyright (c) 1995-1999 Matra Datavision
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

discard "forward decl of TopoDS_Wire"
discard "forward decl of TopoDS_Vertex"
discard "forward decl of TopoDS_Shape"
discard "forward decl of Geom_BSplineSurface"

proc newBRepOffsetAPI_ThruSections*(isSolid: bool = false; ruled: bool = false;
                                   pres3d: cfloat = 1.0e-06): BRepOffsetAPI_ThruSections {.
    cdecl, constructor, importcpp: "BRepOffsetAPI_ThruSections(@)",
    .}
proc Init*(this: var BRepOffsetAPI_ThruSections; isSolid: bool = false;
          ruled: bool = false; pres3d: cfloat = 1.0e-06) {.cdecl, importcpp: "Init",
    .}
proc addWire*(this: var BRepOffsetAPI_ThruSections; wire: TopoDS_Wire) {.cdecl,
    importcpp: "AddWire".}
proc AddVertex*(this: var BRepOffsetAPI_ThruSections; aVertex: TopoDS_Vertex) {.cdecl,
    importcpp: "AddVertex".}
proc checkCompatibility*(this: var BRepOffsetAPI_ThruSections; check: bool = true) {.
    cdecl, importcpp: "CheckCompatibility".}
proc SetSmoothing*(this: var BRepOffsetAPI_ThruSections; UseSmoothing: bool) {.cdecl,
    importcpp: "SetSmoothing".}
proc SetParType*(this: var BRepOffsetAPI_ThruSections;
                ParType: Approx_ParametrizationType) {.cdecl,
    importcpp: "SetParType".}
proc SetContinuity*(this: var BRepOffsetAPI_ThruSections; C: GeomAbs_Shape) {.cdecl,
    importcpp: "SetContinuity".}
proc SetCriteriumWeight*(this: var BRepOffsetAPI_ThruSections; W1: cfloat; W2: cfloat;
                        W3: cfloat) {.cdecl, importcpp: "SetCriteriumWeight",
                                    .}
proc SetMaxDegree*(this: var BRepOffsetAPI_ThruSections; MaxDeg: cint) {.cdecl,
    importcpp: "SetMaxDegree".}
proc ParType*(this: BRepOffsetAPI_ThruSections): Approx_ParametrizationType {.
    noSideEffect, cdecl, importcpp: "ParType".}
proc Continuity*(this: BRepOffsetAPI_ThruSections): GeomAbs_Shape {.noSideEffect,
    cdecl, importcpp: "Continuity".}
proc MaxDegree*(this: BRepOffsetAPI_ThruSections): cint {.noSideEffect, cdecl,
    importcpp: "MaxDegree".}
proc UseSmoothing*(this: BRepOffsetAPI_ThruSections): bool {.noSideEffect, cdecl,
    importcpp: "UseSmoothing".}
proc CriteriumWeight*(this: BRepOffsetAPI_ThruSections; W1: var cfloat;
                     W2: var cfloat; W3: var cfloat) {.noSideEffect, cdecl,
    importcpp: "CriteriumWeight".}
proc Build*(this: var BRepOffsetAPI_ThruSections;
           theRange: Message_ProgressRange = Message_ProgressRange()) {.cdecl,
    importcpp: "Build".}
proc FirstShape*(this: BRepOffsetAPI_ThruSections): TopoDS_Shape {.noSideEffect,
    cdecl, importcpp: "FirstShape".}
proc LastShape*(this: BRepOffsetAPI_ThruSections): TopoDS_Shape {.noSideEffect,
    cdecl, importcpp: "LastShape".}
proc GeneratedFace*(this: BRepOffsetAPI_ThruSections; Edge: TopoDS_Shape): TopoDS_Shape {.
    noSideEffect, cdecl, importcpp: "GeneratedFace".}
proc Generated*(this: var BRepOffsetAPI_ThruSections; S: TopoDS_Shape): TopTools_ListOfShape {.
    cdecl, importcpp: "Generated".}
proc Wires*(this: BRepOffsetAPI_ThruSections): TopTools_ListOfShape {.noSideEffect,
    cdecl, importcpp: "Wires".}