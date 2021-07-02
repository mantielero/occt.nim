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

discard "forward decl of BRepFill_LocationLaw"
discard "forward decl of BRepFill_SectionLaw"
discard "forward decl of StdFail_NotDone"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_ConstructionError"
discard "forward decl of TopoDS_Wire"
discard "forward decl of TopoDS_Shape"
discard "forward decl of TopoDS_Edge"
type
  BRepFillSweep* {.importcpp: "BRepFill_Sweep", header: "BRepFill_Sweep.hxx", bycopy.} = object


proc constructBRepFillSweep*(section: Handle[BRepFillSectionLaw];
                            location: Handle[BRepFillLocationLaw];
                            withKPart: StandardBoolean): BRepFillSweep {.
    constructor, importcpp: "BRepFill_Sweep(@)", header: "BRepFill_Sweep.hxx".}
proc setBounds*(this: var BRepFillSweep; firstShape: TopoDS_Wire;
               lastShape: TopoDS_Wire) {.importcpp: "SetBounds",
                                       header: "BRepFill_Sweep.hxx".}
proc setTolerance*(this: var BRepFillSweep; tol3d: StandardReal;
                  boundTol: StandardReal = 1.0; tol2d: StandardReal = 1.0e-5;
                  tolAngular: StandardReal = 1.0e-2) {.importcpp: "SetTolerance",
    header: "BRepFill_Sweep.hxx".}
proc setAngularControl*(this: var BRepFillSweep; angleMin: StandardReal = 0.01;
                       angleMax: StandardReal = 6.0) {.
    importcpp: "SetAngularControl", header: "BRepFill_Sweep.hxx".}
proc setForceApproxC1*(this: var BRepFillSweep; forceApproxC1: StandardBoolean) {.
    importcpp: "SetForceApproxC1", header: "BRepFill_Sweep.hxx".}
proc build*(this: var BRepFillSweep; reversedEdges: var TopToolsMapOfShape;
           tapes: var BRepFillDataMapOfShapeHArray2OfShape;
           rails: var BRepFillDataMapOfShapeHArray2OfShape;
           transition: BRepFillTransitionStyle = bRepFillModified;
           continuity: GeomAbsShape = geomAbsC2;
           approx: GeomFillApproxStyle = geomFillLocation;
           degmax: StandardInteger = 11; segmax: StandardInteger = 30) {.
    importcpp: "Build", header: "BRepFill_Sweep.hxx".}
proc isDone*(this: BRepFillSweep): StandardBoolean {.noSideEffect,
    importcpp: "IsDone", header: "BRepFill_Sweep.hxx".}
proc shape*(this: BRepFillSweep): TopoDS_Shape {.noSideEffect, importcpp: "Shape",
    header: "BRepFill_Sweep.hxx".}
proc errorOnSurface*(this: BRepFillSweep): StandardReal {.noSideEffect,
    importcpp: "ErrorOnSurface", header: "BRepFill_Sweep.hxx".}
proc subShape*(this: BRepFillSweep): Handle[TopToolsHArray2OfShape] {.noSideEffect,
    importcpp: "SubShape", header: "BRepFill_Sweep.hxx".}
proc interFaces*(this: BRepFillSweep): Handle[TopToolsHArray2OfShape] {.
    noSideEffect, importcpp: "InterFaces", header: "BRepFill_Sweep.hxx".}
proc sections*(this: BRepFillSweep): Handle[TopToolsHArray2OfShape] {.noSideEffect,
    importcpp: "Sections", header: "BRepFill_Sweep.hxx".}
proc tape*(this: BRepFillSweep; index: StandardInteger): TopoDS_Shape {.noSideEffect,
    importcpp: "Tape", header: "BRepFill_Sweep.hxx".}

