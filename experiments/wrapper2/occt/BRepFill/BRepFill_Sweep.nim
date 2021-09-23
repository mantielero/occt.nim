##  Created on: 1997-11-21
##  Created by: Philippe MANGIN
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
  ../Standard/Standard_Handle, ../Standard/Standard_Boolean,
  ../Standard/Standard_Real, ../GeomFill/GeomFill_ApproxStyle,
  ../GeomAbs/GeomAbs_Shape, ../Standard/Standard_Integer, ../TopoDS/TopoDS_Shape,
  ../TopTools/TopTools_HArray2OfShape, ../TopTools/TopTools_DataMapOfShapeShape,
  ../TopTools/TopTools_ListOfShape, ../TopoDS/TopoDS_Wire,
  ../TopTools/TopTools_MapOfShape, BRepFill_DataMapOfShapeHArray2OfShape,
  BRepFill_TransitionStyle

discard "forward decl of BRepFill_LocationLaw"
discard "forward decl of BRepFill_SectionLaw"
discard "forward decl of StdFail_NotDone"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_ConstructionError"
discard "forward decl of TopoDS_Wire"
discard "forward decl of TopoDS_Shape"
discard "forward decl of TopoDS_Edge"
type
  BRepFill_Sweep* {.importcpp: "BRepFill_Sweep", header: "BRepFill_Sweep.hxx", bycopy.} = object


proc constructBRepFill_Sweep*(Section: handle[BRepFill_SectionLaw];
                             Location: handle[BRepFill_LocationLaw];
                             WithKPart: Standard_Boolean): BRepFill_Sweep {.
    constructor, importcpp: "BRepFill_Sweep(@)", header: "BRepFill_Sweep.hxx".}
proc SetBounds*(this: var BRepFill_Sweep; FirstShape: TopoDS_Wire;
               LastShape: TopoDS_Wire) {.importcpp: "SetBounds",
                                       header: "BRepFill_Sweep.hxx".}
proc SetTolerance*(this: var BRepFill_Sweep; Tol3d: Standard_Real;
                  BoundTol: Standard_Real = 1.0; Tol2d: Standard_Real = 1.0e-5;
                  TolAngular: Standard_Real = 1.0e-2) {.importcpp: "SetTolerance",
    header: "BRepFill_Sweep.hxx".}
proc SetAngularControl*(this: var BRepFill_Sweep; AngleMin: Standard_Real = 0.01;
                       AngleMax: Standard_Real = 6.0) {.
    importcpp: "SetAngularControl", header: "BRepFill_Sweep.hxx".}
proc SetForceApproxC1*(this: var BRepFill_Sweep; ForceApproxC1: Standard_Boolean) {.
    importcpp: "SetForceApproxC1", header: "BRepFill_Sweep.hxx".}
proc Build*(this: var BRepFill_Sweep; ReversedEdges: var TopTools_MapOfShape;
           Tapes: var BRepFill_DataMapOfShapeHArray2OfShape;
           Rails: var BRepFill_DataMapOfShapeHArray2OfShape;
           Transition: BRepFill_TransitionStyle = BRepFill_Modified;
           Continuity: GeomAbs_Shape = GeomAbs_C2;
           Approx: GeomFill_ApproxStyle = GeomFill_Location;
           Degmax: Standard_Integer = 11; Segmax: Standard_Integer = 30) {.
    importcpp: "Build", header: "BRepFill_Sweep.hxx".}
proc IsDone*(this: BRepFill_Sweep): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "BRepFill_Sweep.hxx".}
proc Shape*(this: BRepFill_Sweep): TopoDS_Shape {.noSideEffect, importcpp: "Shape",
    header: "BRepFill_Sweep.hxx".}
proc ErrorOnSurface*(this: BRepFill_Sweep): Standard_Real {.noSideEffect,
    importcpp: "ErrorOnSurface", header: "BRepFill_Sweep.hxx".}
proc SubShape*(this: BRepFill_Sweep): handle[TopTools_HArray2OfShape] {.
    noSideEffect, importcpp: "SubShape", header: "BRepFill_Sweep.hxx".}
proc InterFaces*(this: BRepFill_Sweep): handle[TopTools_HArray2OfShape] {.
    noSideEffect, importcpp: "InterFaces", header: "BRepFill_Sweep.hxx".}
proc Sections*(this: BRepFill_Sweep): handle[TopTools_HArray2OfShape] {.
    noSideEffect, importcpp: "Sections", header: "BRepFill_Sweep.hxx".}
proc Tape*(this: BRepFill_Sweep; Index: Standard_Integer): TopoDS_Shape {.
    noSideEffect, importcpp: "Tape", header: "BRepFill_Sweep.hxx".}