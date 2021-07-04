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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../TopoDS/TopoDS_Wire,
  ../TopoDS/TopoDS_Shape, BRepFill_SequenceOfSection,
  ../TopTools/TopTools_DataMapOfShapeListOfShape, ../Standard/Standard_Real,
  ../Standard/Standard_Integer, ../Standard/Standard_Boolean,
  ../TopTools/TopTools_HArray2OfShape, ../GeomFill/GeomFill_Trihedron,
  BRepFill_TransitionStyle, ../GeomFill/GeomFill_PipeError,
  ../Standard/Standard_Transient, BRepFill_TypeOfContact,
  ../TopTools/TopTools_ListOfShape, ../TopTools/TopTools_SequenceOfShape,
  ../TColStd/TColStd_SequenceOfInteger

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
  Handle_BRepFill_PipeShell* = handle[BRepFill_PipeShell]

## ! Computes a topological shell using some wires
## ! (spines and profiles) and diplacement option
## ! Perform general sweeping construction

type
  BRepFill_PipeShell* {.importcpp: "BRepFill_PipeShell",
                       header: "BRepFill_PipeShell.hxx", bycopy.} = object of Standard_Transient ##
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


proc constructBRepFill_PipeShell*(Spine: TopoDS_Wire): BRepFill_PipeShell {.
    constructor, importcpp: "BRepFill_PipeShell(@)",
    header: "BRepFill_PipeShell.hxx".}
proc Set*(this: var BRepFill_PipeShell; Frenet: Standard_Boolean = Standard_False) {.
    importcpp: "Set", header: "BRepFill_PipeShell.hxx".}
proc SetDiscrete*(this: var BRepFill_PipeShell) {.importcpp: "SetDiscrete",
    header: "BRepFill_PipeShell.hxx".}
proc Set*(this: var BRepFill_PipeShell; Axe: gp_Ax2) {.importcpp: "Set",
    header: "BRepFill_PipeShell.hxx".}
proc Set*(this: var BRepFill_PipeShell; BiNormal: gp_Dir) {.importcpp: "Set",
    header: "BRepFill_PipeShell.hxx".}
proc Set*(this: var BRepFill_PipeShell; SpineSupport: TopoDS_Shape): Standard_Boolean {.
    importcpp: "Set", header: "BRepFill_PipeShell.hxx".}
proc Set*(this: var BRepFill_PipeShell; AuxiliarySpine: TopoDS_Wire;
         CurvilinearEquivalence: Standard_Boolean = Standard_True;
         KeepContact: BRepFill_TypeOfContact = BRepFill_NoContact) {.
    importcpp: "Set", header: "BRepFill_PipeShell.hxx".}
proc SetMaxDegree*(this: var BRepFill_PipeShell; NewMaxDegree: Standard_Integer) {.
    importcpp: "SetMaxDegree", header: "BRepFill_PipeShell.hxx".}
proc SetMaxSegments*(this: var BRepFill_PipeShell; NewMaxSegments: Standard_Integer) {.
    importcpp: "SetMaxSegments", header: "BRepFill_PipeShell.hxx".}
proc SetForceApproxC1*(this: var BRepFill_PipeShell; ForceApproxC1: Standard_Boolean) {.
    importcpp: "SetForceApproxC1", header: "BRepFill_PipeShell.hxx".}
proc Add*(this: var BRepFill_PipeShell; Profile: TopoDS_Shape;
         WithContact: Standard_Boolean = Standard_False;
         WithCorrection: Standard_Boolean = Standard_False) {.importcpp: "Add",
    header: "BRepFill_PipeShell.hxx".}
proc Add*(this: var BRepFill_PipeShell; Profile: TopoDS_Shape;
         Location: TopoDS_Vertex; WithContact: Standard_Boolean = Standard_False;
         WithCorrection: Standard_Boolean = Standard_False) {.importcpp: "Add",
    header: "BRepFill_PipeShell.hxx".}
proc SetLaw*(this: var BRepFill_PipeShell; Profile: TopoDS_Shape;
            L: handle[Law_Function];
            WithContact: Standard_Boolean = Standard_False;
            WithCorrection: Standard_Boolean = Standard_False) {.
    importcpp: "SetLaw", header: "BRepFill_PipeShell.hxx".}
proc SetLaw*(this: var BRepFill_PipeShell; Profile: TopoDS_Shape;
            L: handle[Law_Function]; Location: TopoDS_Vertex;
            WithContact: Standard_Boolean = Standard_False;
            WithCorrection: Standard_Boolean = Standard_False) {.
    importcpp: "SetLaw", header: "BRepFill_PipeShell.hxx".}
proc DeleteProfile*(this: var BRepFill_PipeShell; Profile: TopoDS_Shape) {.
    importcpp: "DeleteProfile", header: "BRepFill_PipeShell.hxx".}
proc IsReady*(this: BRepFill_PipeShell): Standard_Boolean {.noSideEffect,
    importcpp: "IsReady", header: "BRepFill_PipeShell.hxx".}
proc GetStatus*(this: BRepFill_PipeShell): GeomFill_PipeError {.noSideEffect,
    importcpp: "GetStatus", header: "BRepFill_PipeShell.hxx".}
proc SetTolerance*(this: var BRepFill_PipeShell; Tol3d: Standard_Real = 1.0e-4;
                  BoundTol: Standard_Real = 1.0e-4;
                  TolAngular: Standard_Real = 1.0e-2) {.importcpp: "SetTolerance",
    header: "BRepFill_PipeShell.hxx".}
proc SetTransition*(this: var BRepFill_PipeShell;
                   Mode: BRepFill_TransitionStyle = BRepFill_Modified;
                   Angmin: Standard_Real = 1.0e-2; Angmax: Standard_Real = 6.0) {.
    importcpp: "SetTransition", header: "BRepFill_PipeShell.hxx".}
proc Simulate*(this: var BRepFill_PipeShell; NumberOfSection: Standard_Integer;
              Sections: var TopTools_ListOfShape) {.importcpp: "Simulate",
    header: "BRepFill_PipeShell.hxx".}
proc Build*(this: var BRepFill_PipeShell): Standard_Boolean {.importcpp: "Build",
    header: "BRepFill_PipeShell.hxx".}
proc MakeSolid*(this: var BRepFill_PipeShell): Standard_Boolean {.
    importcpp: "MakeSolid", header: "BRepFill_PipeShell.hxx".}
proc Shape*(this: BRepFill_PipeShell): TopoDS_Shape {.noSideEffect,
    importcpp: "Shape", header: "BRepFill_PipeShell.hxx".}
proc ErrorOnSurface*(this: BRepFill_PipeShell): Standard_Real {.noSideEffect,
    importcpp: "ErrorOnSurface", header: "BRepFill_PipeShell.hxx".}
proc FirstShape*(this: BRepFill_PipeShell): TopoDS_Shape {.noSideEffect,
    importcpp: "FirstShape", header: "BRepFill_PipeShell.hxx".}
proc LastShape*(this: BRepFill_PipeShell): TopoDS_Shape {.noSideEffect,
    importcpp: "LastShape", header: "BRepFill_PipeShell.hxx".}
proc Profiles*(this: var BRepFill_PipeShell; theProfiles: var TopTools_ListOfShape) {.
    importcpp: "Profiles", header: "BRepFill_PipeShell.hxx".}
proc Spine*(this: var BRepFill_PipeShell): TopoDS_Wire {.importcpp: "Spine",
    header: "BRepFill_PipeShell.hxx".}
proc Generated*(this: var BRepFill_PipeShell; S: TopoDS_Shape;
               L: var TopTools_ListOfShape) {.importcpp: "Generated",
    header: "BRepFill_PipeShell.hxx".}
type
  BRepFill_PipeShellbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "BRepFill_PipeShell::get_type_name(@)",
                              header: "BRepFill_PipeShell.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "BRepFill_PipeShell::get_type_descriptor(@)",
    header: "BRepFill_PipeShell.hxx".}
proc DynamicType*(this: BRepFill_PipeShell): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "BRepFill_PipeShell.hxx".}