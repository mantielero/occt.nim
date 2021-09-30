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
                                header: "BRepOffsetAPI_MakePipeShell.hxx", bycopy.} = object of BRepPrimAPI_MakeSweep


proc `new`*(this: var BRepOffsetAPI_MakePipeShell; theSize: csize_t): pointer {.
    importcpp: "BRepOffsetAPI_MakePipeShell::operator new",
    header: "BRepOffsetAPI_MakePipeShell.hxx".}
proc `delete`*(this: var BRepOffsetAPI_MakePipeShell; theAddress: pointer) {.
    importcpp: "BRepOffsetAPI_MakePipeShell::operator delete",
    header: "BRepOffsetAPI_MakePipeShell.hxx".}
proc `new[]`*(this: var BRepOffsetAPI_MakePipeShell; theSize: csize_t): pointer {.
    importcpp: "BRepOffsetAPI_MakePipeShell::operator new[]",
    header: "BRepOffsetAPI_MakePipeShell.hxx".}
proc `delete[]`*(this: var BRepOffsetAPI_MakePipeShell; theAddress: pointer) {.
    importcpp: "BRepOffsetAPI_MakePipeShell::operator delete[]",
    header: "BRepOffsetAPI_MakePipeShell.hxx".}
proc `new`*(this: var BRepOffsetAPI_MakePipeShell; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "BRepOffsetAPI_MakePipeShell::operator new",
    header: "BRepOffsetAPI_MakePipeShell.hxx".}
proc `delete`*(this: var BRepOffsetAPI_MakePipeShell; a2: pointer; a3: pointer) {.
    importcpp: "BRepOffsetAPI_MakePipeShell::operator delete",
    header: "BRepOffsetAPI_MakePipeShell.hxx".}
proc constructBRepOffsetAPI_MakePipeShell*(spine: TopoDS_Wire): BRepOffsetAPI_MakePipeShell {.
    constructor, importcpp: "BRepOffsetAPI_MakePipeShell(@)",
    header: "BRepOffsetAPI_MakePipeShell.hxx".}
proc setMode*(this: var BRepOffsetAPI_MakePipeShell;
             isFrenet: StandardBoolean = false) {.importcpp: "SetMode",
    header: "BRepOffsetAPI_MakePipeShell.hxx".}
proc setDiscreteMode*(this: var BRepOffsetAPI_MakePipeShell) {.
    importcpp: "SetDiscreteMode", header: "BRepOffsetAPI_MakePipeShell.hxx".}
proc setMode*(this: var BRepOffsetAPI_MakePipeShell; axe: Ax2) {.importcpp: "SetMode",
    header: "BRepOffsetAPI_MakePipeShell.hxx".}
proc setMode*(this: var BRepOffsetAPI_MakePipeShell; biNormal: Dir) {.
    importcpp: "SetMode", header: "BRepOffsetAPI_MakePipeShell.hxx".}
proc setMode*(this: var BRepOffsetAPI_MakePipeShell; spineSupport: TopoDS_Shape): StandardBoolean {.
    importcpp: "SetMode", header: "BRepOffsetAPI_MakePipeShell.hxx".}
proc setMode*(this: var BRepOffsetAPI_MakePipeShell; auxiliarySpine: TopoDS_Wire;
             curvilinearEquivalence: StandardBoolean;
             keepContact: BRepFillTypeOfContact = bRepFillNoContact) {.
    importcpp: "SetMode", header: "BRepOffsetAPI_MakePipeShell.hxx".}
proc add*(this: var BRepOffsetAPI_MakePipeShell; profile: TopoDS_Shape;
         withContact: StandardBoolean = false;
         withCorrection: StandardBoolean = false) {.importcpp: "Add",
    header: "BRepOffsetAPI_MakePipeShell.hxx".}
proc add*(this: var BRepOffsetAPI_MakePipeShell; profile: TopoDS_Shape;
         location: TopoDS_Vertex; withContact: StandardBoolean = false;
         withCorrection: StandardBoolean = false) {.importcpp: "Add",
    header: "BRepOffsetAPI_MakePipeShell.hxx".}
proc setLaw*(this: var BRepOffsetAPI_MakePipeShell; profile: TopoDS_Shape;
            L: Handle[LawFunction]; withContact: StandardBoolean = false;
            withCorrection: StandardBoolean = false) {.importcpp: "SetLaw",
    header: "BRepOffsetAPI_MakePipeShell.hxx".}
proc setLaw*(this: var BRepOffsetAPI_MakePipeShell; profile: TopoDS_Shape;
            L: Handle[LawFunction]; location: TopoDS_Vertex;
            withContact: StandardBoolean = false;
            withCorrection: StandardBoolean = false) {.importcpp: "SetLaw",
    header: "BRepOffsetAPI_MakePipeShell.hxx".}
proc delete*(this: var BRepOffsetAPI_MakePipeShell; profile: TopoDS_Shape) {.
    importcpp: "Delete", header: "BRepOffsetAPI_MakePipeShell.hxx".}
proc isReady*(this: BRepOffsetAPI_MakePipeShell): StandardBoolean {.noSideEffect,
    importcpp: "IsReady", header: "BRepOffsetAPI_MakePipeShell.hxx".}
proc getStatus*(this: BRepOffsetAPI_MakePipeShell): BRepBuilderAPI_PipeError {.
    noSideEffect, importcpp: "GetStatus", header: "BRepOffsetAPI_MakePipeShell.hxx".}
proc setTolerance*(this: var BRepOffsetAPI_MakePipeShell;
                  tol3d: StandardReal = 1.0e-4; boundTol: StandardReal = 1.0e-4;
                  tolAngular: StandardReal = 1.0e-2) {.importcpp: "SetTolerance",
    header: "BRepOffsetAPI_MakePipeShell.hxx".}
proc setMaxDegree*(this: var BRepOffsetAPI_MakePipeShell; newMaxDegree: int) {.
    importcpp: "SetMaxDegree", header: "BRepOffsetAPI_MakePipeShell.hxx".}
proc setMaxSegments*(this: var BRepOffsetAPI_MakePipeShell; newMaxSegments: int) {.
    importcpp: "SetMaxSegments", header: "BRepOffsetAPI_MakePipeShell.hxx".}
proc setForceApproxC1*(this: var BRepOffsetAPI_MakePipeShell;
                      forceApproxC1: StandardBoolean) {.
    importcpp: "SetForceApproxC1", header: "BRepOffsetAPI_MakePipeShell.hxx".}
proc setTransitionMode*(this: var BRepOffsetAPI_MakePipeShell; mode: BRepBuilderAPI_TransitionMode = bRepBuilderAPI_Transformed) {.
    importcpp: "SetTransitionMode", header: "BRepOffsetAPI_MakePipeShell.hxx".}
proc simulate*(this: var BRepOffsetAPI_MakePipeShell; numberOfSection: int;
              result: var TopToolsListOfShape) {.importcpp: "Simulate",
    header: "BRepOffsetAPI_MakePipeShell.hxx".}
proc build*(this: var BRepOffsetAPI_MakePipeShell) {.importcpp: "Build",
    header: "BRepOffsetAPI_MakePipeShell.hxx".}
proc makeSolid*(this: var BRepOffsetAPI_MakePipeShell): StandardBoolean {.
    importcpp: "MakeSolid", header: "BRepOffsetAPI_MakePipeShell.hxx".}
proc firstShape*(this: var BRepOffsetAPI_MakePipeShell): TopoDS_Shape {.
    importcpp: "FirstShape", header: "BRepOffsetAPI_MakePipeShell.hxx".}
proc lastShape*(this: var BRepOffsetAPI_MakePipeShell): TopoDS_Shape {.
    importcpp: "LastShape", header: "BRepOffsetAPI_MakePipeShell.hxx".}
proc generated*(this: var BRepOffsetAPI_MakePipeShell; s: TopoDS_Shape): TopToolsListOfShape {.
    importcpp: "Generated", header: "BRepOffsetAPI_MakePipeShell.hxx".}
proc errorOnSurface*(this: BRepOffsetAPI_MakePipeShell): StandardReal {.
    noSideEffect, importcpp: "ErrorOnSurface",
    header: "BRepOffsetAPI_MakePipeShell.hxx".}
proc profiles*(this: var BRepOffsetAPI_MakePipeShell;
              theProfiles: var TopToolsListOfShape) {.importcpp: "Profiles",
    header: "BRepOffsetAPI_MakePipeShell.hxx".}
proc spine*(this: var BRepOffsetAPI_MakePipeShell): TopoDS_Wire {.importcpp: "Spine",
    header: "BRepOffsetAPI_MakePipeShell.hxx".}