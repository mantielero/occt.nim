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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../BRepPrimAPI/BRepPrimAPI_MakeSweep,
  ../Standard/Standard_Boolean, ../BRepFill/BRepFill_PipeShell,
  ../BRepFill/BRepFill_TypeOfContact, ../BRepBuilderAPI/BRepBuilderAPI_PipeError,
  ../Standard/Standard_Real, ../Standard/Standard_Integer,
  ../BRepBuilderAPI/BRepBuilderAPI_TransitionMode,
  ../TopTools/TopTools_ListOfShape

discard "forward decl of Standard_DomainError"
discard "forward decl of StdFail_NotDone"
discard "forward decl of TopoDS_Wire"
discard "forward decl of gp_Ax2"
discard "forward decl of gp_Dir"
discard "forward decl of TopoDS_Shape"
discard "forward decl of TopoDS_Vertex"
discard "forward decl of Law_Function"
type
  BRepOffsetAPI_MakePipeShell* {.importcpp: "BRepOffsetAPI_MakePipeShell",
                                header: "BRepOffsetAPI_MakePipeShell.hxx", bycopy.} = object of BRepPrimAPI_MakeSweep ##
                                                                                                               ## !
                                                                                                               ## Constructs
                                                                                                               ## the
                                                                                                               ## shell-generating
                                                                                                               ## framework
                                                                                                               ## defined
                                                                                                               ## by
                                                                                                               ## the
                                                                                                               ## wire
                                                                                                               ## Spine.
                                                                                                               ##
                                                                                                               ## !
                                                                                                               ## Sets
                                                                                                               ## an
                                                                                                               ## sweep's
                                                                                                               ## mode
                                                                                                               ##
                                                                                                               ## !
                                                                                                               ## If
                                                                                                               ## no
                                                                                                               ## mode
                                                                                                               ## are
                                                                                                               ## setted,
                                                                                                               ## the
                                                                                                               ## mode
                                                                                                               ## use
                                                                                                               ## in
                                                                                                               ## MakePipe
                                                                                                               ## is
                                                                                                               ## used


proc constructBRepOffsetAPI_MakePipeShell*(Spine: TopoDS_Wire): BRepOffsetAPI_MakePipeShell {.
    constructor, importcpp: "BRepOffsetAPI_MakePipeShell(@)",
    header: "BRepOffsetAPI_MakePipeShell.hxx".}
proc SetMode*(this: var BRepOffsetAPI_MakePipeShell;
             IsFrenet: Standard_Boolean = Standard_False) {.importcpp: "SetMode",
    header: "BRepOffsetAPI_MakePipeShell.hxx".}
proc SetDiscreteMode*(this: var BRepOffsetAPI_MakePipeShell) {.
    importcpp: "SetDiscreteMode", header: "BRepOffsetAPI_MakePipeShell.hxx".}
proc SetMode*(this: var BRepOffsetAPI_MakePipeShell; Axe: gp_Ax2) {.
    importcpp: "SetMode", header: "BRepOffsetAPI_MakePipeShell.hxx".}
proc SetMode*(this: var BRepOffsetAPI_MakePipeShell; BiNormal: gp_Dir) {.
    importcpp: "SetMode", header: "BRepOffsetAPI_MakePipeShell.hxx".}
proc SetMode*(this: var BRepOffsetAPI_MakePipeShell; SpineSupport: TopoDS_Shape): Standard_Boolean {.
    importcpp: "SetMode", header: "BRepOffsetAPI_MakePipeShell.hxx".}
proc SetMode*(this: var BRepOffsetAPI_MakePipeShell; AuxiliarySpine: TopoDS_Wire;
             CurvilinearEquivalence: Standard_Boolean;
             KeepContact: BRepFill_TypeOfContact = BRepFill_NoContact) {.
    importcpp: "SetMode", header: "BRepOffsetAPI_MakePipeShell.hxx".}
proc Add*(this: var BRepOffsetAPI_MakePipeShell; Profile: TopoDS_Shape;
         WithContact: Standard_Boolean = Standard_False;
         WithCorrection: Standard_Boolean = Standard_False) {.importcpp: "Add",
    header: "BRepOffsetAPI_MakePipeShell.hxx".}
proc Add*(this: var BRepOffsetAPI_MakePipeShell; Profile: TopoDS_Shape;
         Location: TopoDS_Vertex; WithContact: Standard_Boolean = Standard_False;
         WithCorrection: Standard_Boolean = Standard_False) {.importcpp: "Add",
    header: "BRepOffsetAPI_MakePipeShell.hxx".}
proc SetLaw*(this: var BRepOffsetAPI_MakePipeShell; Profile: TopoDS_Shape;
            L: handle[Law_Function];
            WithContact: Standard_Boolean = Standard_False;
            WithCorrection: Standard_Boolean = Standard_False) {.
    importcpp: "SetLaw", header: "BRepOffsetAPI_MakePipeShell.hxx".}
proc SetLaw*(this: var BRepOffsetAPI_MakePipeShell; Profile: TopoDS_Shape;
            L: handle[Law_Function]; Location: TopoDS_Vertex;
            WithContact: Standard_Boolean = Standard_False;
            WithCorrection: Standard_Boolean = Standard_False) {.
    importcpp: "SetLaw", header: "BRepOffsetAPI_MakePipeShell.hxx".}
proc Delete*(this: var BRepOffsetAPI_MakePipeShell; Profile: TopoDS_Shape) {.
    importcpp: "Delete", header: "BRepOffsetAPI_MakePipeShell.hxx".}
proc IsReady*(this: BRepOffsetAPI_MakePipeShell): Standard_Boolean {.noSideEffect,
    importcpp: "IsReady", header: "BRepOffsetAPI_MakePipeShell.hxx".}
proc GetStatus*(this: BRepOffsetAPI_MakePipeShell): BRepBuilderAPI_PipeError {.
    noSideEffect, importcpp: "GetStatus", header: "BRepOffsetAPI_MakePipeShell.hxx".}
proc SetTolerance*(this: var BRepOffsetAPI_MakePipeShell;
                  Tol3d: Standard_Real = 1.0e-4; BoundTol: Standard_Real = 1.0e-4;
                  TolAngular: Standard_Real = 1.0e-2) {.importcpp: "SetTolerance",
    header: "BRepOffsetAPI_MakePipeShell.hxx".}
proc SetMaxDegree*(this: var BRepOffsetAPI_MakePipeShell;
                  NewMaxDegree: Standard_Integer) {.importcpp: "SetMaxDegree",
    header: "BRepOffsetAPI_MakePipeShell.hxx".}
proc SetMaxSegments*(this: var BRepOffsetAPI_MakePipeShell;
                    NewMaxSegments: Standard_Integer) {.
    importcpp: "SetMaxSegments", header: "BRepOffsetAPI_MakePipeShell.hxx".}
proc SetForceApproxC1*(this: var BRepOffsetAPI_MakePipeShell;
                      ForceApproxC1: Standard_Boolean) {.
    importcpp: "SetForceApproxC1", header: "BRepOffsetAPI_MakePipeShell.hxx".}
proc SetTransitionMode*(this: var BRepOffsetAPI_MakePipeShell; Mode: BRepBuilderAPI_TransitionMode = BRepBuilderAPI_Transformed) {.
    importcpp: "SetTransitionMode", header: "BRepOffsetAPI_MakePipeShell.hxx".}
proc Simulate*(this: var BRepOffsetAPI_MakePipeShell;
              NumberOfSection: Standard_Integer; Result: var TopTools_ListOfShape) {.
    importcpp: "Simulate", header: "BRepOffsetAPI_MakePipeShell.hxx".}
proc Build*(this: var BRepOffsetAPI_MakePipeShell) {.importcpp: "Build",
    header: "BRepOffsetAPI_MakePipeShell.hxx".}
proc MakeSolid*(this: var BRepOffsetAPI_MakePipeShell): Standard_Boolean {.
    importcpp: "MakeSolid", header: "BRepOffsetAPI_MakePipeShell.hxx".}
proc FirstShape*(this: var BRepOffsetAPI_MakePipeShell): TopoDS_Shape {.
    importcpp: "FirstShape", header: "BRepOffsetAPI_MakePipeShell.hxx".}
proc LastShape*(this: var BRepOffsetAPI_MakePipeShell): TopoDS_Shape {.
    importcpp: "LastShape", header: "BRepOffsetAPI_MakePipeShell.hxx".}
proc Generated*(this: var BRepOffsetAPI_MakePipeShell; S: TopoDS_Shape): TopTools_ListOfShape {.
    importcpp: "Generated", header: "BRepOffsetAPI_MakePipeShell.hxx".}
proc ErrorOnSurface*(this: BRepOffsetAPI_MakePipeShell): Standard_Real {.
    noSideEffect, importcpp: "ErrorOnSurface",
    header: "BRepOffsetAPI_MakePipeShell.hxx".}
proc Profiles*(this: var BRepOffsetAPI_MakePipeShell;
              theProfiles: var TopTools_ListOfShape) {.importcpp: "Profiles",
    header: "BRepOffsetAPI_MakePipeShell.hxx".}
proc Spine*(this: var BRepOffsetAPI_MakePipeShell): TopoDS_Wire {.importcpp: "Spine",
    header: "BRepOffsetAPI_MakePipeShell.hxx".}