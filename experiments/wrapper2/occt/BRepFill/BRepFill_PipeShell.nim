##  Created on: 1998-07-22
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

discard "forward decl of Law_Function"
discard "forward decl of BRepFill_LocationLaw"
discard "forward decl of BRepFill_SectionLaw"
discard "forward decl of Standard_DomainError"
discard "forward decl of StdFail_NotDone"
discard "forward decl of TopoDS_Wire"
discard "forward decl of gp_Ax2"
discard "forward decl of gp_Dir"
discard "forward decl of TopoDS_Shape"
discard "forward decl of TopoDS_Vertex"
discard "forward decl of BRepFill_Section"
discard "forward decl of gp_Trsf"
discard "forward decl of BRepFill_Sweep"
discard "forward decl of BRepFill_PipeShell"
discard "forward decl of BRepFill_PipeShell"
type
  HandleBRepFillPipeShell* = Handle[BRepFillPipeShell]

## ! Computes a topological shell using some wires
## ! (spines and profiles) and diplacement option
## ! Perform general sweeping construction

type
  BRepFillPipeShell* {.importcpp: "BRepFill_PipeShell",
                      header: "BRepFill_PipeShell.hxx", bycopy.} = object of StandardTransient ##
                                                                                        ## !
                                                                                        ## Set
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


proc constructBRepFillPipeShell*(spine: TopoDS_Wire): BRepFillPipeShell {.
    constructor, importcpp: "BRepFill_PipeShell(@)",
    header: "BRepFill_PipeShell.hxx".}
proc set*(this: var BRepFillPipeShell; frenet: bool = false) {.importcpp: "Set",
    header: "BRepFill_PipeShell.hxx".}
proc setDiscrete*(this: var BRepFillPipeShell) {.importcpp: "SetDiscrete",
    header: "BRepFill_PipeShell.hxx".}
proc set*(this: var BRepFillPipeShell; axe: Ax2) {.importcpp: "Set",
    header: "BRepFill_PipeShell.hxx".}
proc set*(this: var BRepFillPipeShell; biNormal: Dir) {.importcpp: "Set",
    header: "BRepFill_PipeShell.hxx".}
proc set*(this: var BRepFillPipeShell; spineSupport: TopoDS_Shape): bool {.
    importcpp: "Set", header: "BRepFill_PipeShell.hxx".}
proc set*(this: var BRepFillPipeShell; auxiliarySpine: TopoDS_Wire;
         curvilinearEquivalence: bool = true;
         keepContact: BRepFillTypeOfContact = bRepFillNoContact) {.importcpp: "Set",
    header: "BRepFill_PipeShell.hxx".}
proc setMaxDegree*(this: var BRepFillPipeShell; newMaxDegree: int) {.
    importcpp: "SetMaxDegree", header: "BRepFill_PipeShell.hxx".}
proc setMaxSegments*(this: var BRepFillPipeShell; newMaxSegments: int) {.
    importcpp: "SetMaxSegments", header: "BRepFill_PipeShell.hxx".}
proc setForceApproxC1*(this: var BRepFillPipeShell; forceApproxC1: bool) {.
    importcpp: "SetForceApproxC1", header: "BRepFill_PipeShell.hxx".}
proc add*(this: var BRepFillPipeShell; profile: TopoDS_Shape;
         withContact: bool = false; withCorrection: bool = false) {.importcpp: "Add",
    header: "BRepFill_PipeShell.hxx".}
proc add*(this: var BRepFillPipeShell; profile: TopoDS_Shape; location: TopoDS_Vertex;
         withContact: bool = false; withCorrection: bool = false) {.importcpp: "Add",
    header: "BRepFill_PipeShell.hxx".}
proc setLaw*(this: var BRepFillPipeShell; profile: TopoDS_Shape;
            L: Handle[LawFunction]; withContact: bool = false;
            withCorrection: bool = false) {.importcpp: "SetLaw",
                                        header: "BRepFill_PipeShell.hxx".}
proc setLaw*(this: var BRepFillPipeShell; profile: TopoDS_Shape;
            L: Handle[LawFunction]; location: TopoDS_Vertex;
            withContact: bool = false; withCorrection: bool = false) {.
    importcpp: "SetLaw", header: "BRepFill_PipeShell.hxx".}
proc deleteProfile*(this: var BRepFillPipeShell; profile: TopoDS_Shape) {.
    importcpp: "DeleteProfile", header: "BRepFill_PipeShell.hxx".}
proc isReady*(this: BRepFillPipeShell): bool {.noSideEffect, importcpp: "IsReady",
    header: "BRepFill_PipeShell.hxx".}
proc getStatus*(this: BRepFillPipeShell): GeomFillPipeError {.noSideEffect,
    importcpp: "GetStatus", header: "BRepFill_PipeShell.hxx".}
proc setTolerance*(this: var BRepFillPipeShell; tol3d: float = 1.0e-4;
                  boundTol: float = 1.0e-4; tolAngular: float = 1.0e-2) {.
    importcpp: "SetTolerance", header: "BRepFill_PipeShell.hxx".}
proc setTransition*(this: var BRepFillPipeShell;
                   mode: BRepFillTransitionStyle = bRepFillModified;
                   angmin: float = 1.0e-2; angmax: float = 6.0) {.
    importcpp: "SetTransition", header: "BRepFill_PipeShell.hxx".}
proc simulate*(this: var BRepFillPipeShell; numberOfSection: int;
              sections: var TopToolsListOfShape) {.importcpp: "Simulate",
    header: "BRepFill_PipeShell.hxx".}
proc build*(this: var BRepFillPipeShell): bool {.importcpp: "Build",
    header: "BRepFill_PipeShell.hxx".}
proc makeSolid*(this: var BRepFillPipeShell): bool {.importcpp: "MakeSolid",
    header: "BRepFill_PipeShell.hxx".}
proc shape*(this: BRepFillPipeShell): TopoDS_Shape {.noSideEffect,
    importcpp: "Shape", header: "BRepFill_PipeShell.hxx".}
proc errorOnSurface*(this: BRepFillPipeShell): float {.noSideEffect,
    importcpp: "ErrorOnSurface", header: "BRepFill_PipeShell.hxx".}
proc firstShape*(this: BRepFillPipeShell): TopoDS_Shape {.noSideEffect,
    importcpp: "FirstShape", header: "BRepFill_PipeShell.hxx".}
proc lastShape*(this: BRepFillPipeShell): TopoDS_Shape {.noSideEffect,
    importcpp: "LastShape", header: "BRepFill_PipeShell.hxx".}
proc profiles*(this: var BRepFillPipeShell; theProfiles: var TopToolsListOfShape) {.
    importcpp: "Profiles", header: "BRepFill_PipeShell.hxx".}
proc spine*(this: var BRepFillPipeShell): TopoDS_Wire {.importcpp: "Spine",
    header: "BRepFill_PipeShell.hxx".}
proc generated*(this: var BRepFillPipeShell; s: TopoDS_Shape;
               L: var TopToolsListOfShape) {.importcpp: "Generated",
    header: "BRepFill_PipeShell.hxx".}
type
  BRepFillPipeShellbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "BRepFill_PipeShell::get_type_name(@)",
                            header: "BRepFill_PipeShell.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "BRepFill_PipeShell::get_type_descriptor(@)",
    header: "BRepFill_PipeShell.hxx".}
proc dynamicType*(this: BRepFillPipeShell): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "BRepFill_PipeShell.hxx".}
