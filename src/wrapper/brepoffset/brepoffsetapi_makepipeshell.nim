import brepoffset_types
import ../tkbrep/topods/topods_types
import ../tkmath/gp/gp_types
import ../tkernel/standard/standard_types
import ../tkgeomalgo/law/law_types
import ../tktopalgo/brepbuilderapi/brepbuilderapi_types
import ../tkbrep/toptools/toptools_types
import ../tkernel/message/message_types

##  Created on: 1998-04-08
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

discard "forward decl of TopoDS_Wire"
discard "forward decl of Ax2Obj"
discard "forward decl of DirObj"
discard "forward decl of TopoDS_Shape"
discard "forward decl of TopoDS_Vertex"
discard "forward decl of Law_Function"


proc newBRepOffsetAPI_MakePipeShell*(Spine: TopoDS_Wire): BRepOffsetAPI_MakePipeShell {.
    cdecl, constructor, importcpp: "BRepOffsetAPI_MakePipeShell(@)",
    .}
proc SetMode*(this: var BRepOffsetAPI_MakePipeShell; IsFrenet: bool = false) {.cdecl,
    importcpp: "SetMode".}
proc SetDiscreteMode*(this: var BRepOffsetAPI_MakePipeShell) {.cdecl,
    importcpp: "SetDiscreteMode".}
proc SetMode*(this: var BRepOffsetAPI_MakePipeShell; Axe: Ax2Obj) {.cdecl,
    importcpp: "SetMode".}
proc SetMode*(this: var BRepOffsetAPI_MakePipeShell; BiNormal: DirObj) {.cdecl,
    importcpp: "SetMode".}
proc SetMode*(this: var BRepOffsetAPI_MakePipeShell; SpineSupport: TopoDS_Shape): bool {.
    cdecl, importcpp: "SetMode".}
# proc SetMode*(this: var BRepOffsetAPI_MakePipeShell; AuxiliarySpine: TopoDS_Wire;
#              CurvilinearEquivalence: bool;
#              KeepContact: BRepFill_TypeOfContact = BRepFill_NoContact) {.cdecl,
#     importcpp: "SetMode".}
proc Add*(this: var BRepOffsetAPI_MakePipeShell; Profile: TopoDS_Shape;
         WithContact: bool = false; WithCorrection: bool = false) {.cdecl,
    importcpp: "Add".}
proc Add*(this: var BRepOffsetAPI_MakePipeShell; Profile: TopoDS_Shape;
         Location: TopoDS_Vertex; WithContact: bool = false;
         WithCorrection: bool = false) {.cdecl, importcpp: "Add".}
proc SetLaw*(this: var BRepOffsetAPI_MakePipeShell; Profile: TopoDS_Shape;
            L: Handle[Law_Function]; WithContact: bool = false;
            WithCorrection: bool = false) {.cdecl, importcpp: "SetLaw",
                                        .}
proc SetLaw*(this: var BRepOffsetAPI_MakePipeShell; Profile: TopoDS_Shape;
            L: Handle[Law_Function]; Location: TopoDS_Vertex;
            WithContact: bool = false; WithCorrection: bool = false) {.cdecl,
    importcpp: "SetLaw".}
proc Delete*(this: var BRepOffsetAPI_MakePipeShell; Profile: TopoDS_Shape) {.cdecl,
    importcpp: "Delete".}
proc IsReady*(this: BRepOffsetAPI_MakePipeShell): bool {.noSideEffect, cdecl,
    importcpp: "IsReady".}
proc GetStatus*(this: BRepOffsetAPI_MakePipeShell): BRepBuilderAPI_PipeError {.
    noSideEffect, cdecl, importcpp: "GetStatus".}
proc SetTolerance*(this: var BRepOffsetAPI_MakePipeShell; Tol3d: cfloat = 1.0e-4;
                  BoundTol: cfloat = 1.0e-4; TolAngular: cfloat = 1.0e-2) {.cdecl,
    importcpp: "SetTolerance".}
proc SetMaxDegree*(this: var BRepOffsetAPI_MakePipeShell; NewMaxDegree: cint) {.cdecl,
    importcpp: "SetMaxDegree".}
proc SetMaxSegments*(this: var BRepOffsetAPI_MakePipeShell; NewMaxSegments: cint) {.
    cdecl, importcpp: "SetMaxSegments".}
proc SetForceApproxC1*(this: var BRepOffsetAPI_MakePipeShell; ForceApproxC1: bool) {.
    cdecl, importcpp: "SetForceApproxC1".}
proc SetTransitionMode*(this: var BRepOffsetAPI_MakePipeShell; Mode: BRepBuilderAPI_TransitionMode = BRepBuilderAPI_Transformed) {.
    cdecl, importcpp: "SetTransitionMode".}
proc Simulate*(this: var BRepOffsetAPI_MakePipeShell; NumberOfSection: cint;
              Result: var TopTools_ListOfShape) {.cdecl, importcpp: "Simulate",
    .}
proc Build*(this: var BRepOffsetAPI_MakePipeShell;
           theRange: Message_ProgressRange = Message_ProgressRange()) {.cdecl,
    importcpp: "Build".}
proc MakeSolid*(this: var BRepOffsetAPI_MakePipeShell): bool {.cdecl,
    importcpp: "MakeSolid".}
proc FirstShape*(this: var BRepOffsetAPI_MakePipeShell): TopoDS_Shape {.cdecl,
    importcpp: "FirstShape".}
proc LastShape*(this: var BRepOffsetAPI_MakePipeShell): TopoDS_Shape {.cdecl,
    importcpp: "LastShape".}
proc Generated*(this: var BRepOffsetAPI_MakePipeShell; S: TopoDS_Shape): TopTools_ListOfShape {.
    cdecl, importcpp: "Generated".}
proc ErrorOnSurface*(this: BRepOffsetAPI_MakePipeShell): cfloat {.noSideEffect,
    cdecl, importcpp: "ErrorOnSurface".}
proc Profiles*(this: var BRepOffsetAPI_MakePipeShell;
              theProfiles: var TopTools_ListOfShape) {.cdecl, importcpp: "Profiles",
    .}
proc Spine*(this: var BRepOffsetAPI_MakePipeShell): TopoDS_Wire {.cdecl,
    importcpp: "Spine".}