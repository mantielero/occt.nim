##  Created on: 1993-06-08
##  Created by: Laurent BOURESCHE
##  Copyright (c) 1993-1999 Matra Datavision
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
  ../Standard/Standard_Handle, ../TopLoc/TopLoc_Location,
  ../Standard/Standard_Boolean, BRepSweep_NumLinearRegularSweep,
  ../TopAbs/TopAbs_Orientation

discard "forward decl of BRep_Builder"
discard "forward decl of TopoDS_Shape"
discard "forward decl of Sweep_NumShape"
discard "forward decl of TopLoc_Location"
type
  BRepSweep_Trsf* {.importcpp: "BRepSweep_Trsf", header: "BRepSweep_Trsf.hxx", bycopy.} = object of BRepSweep_NumLinearRegularSweep ##
                                                                                                                          ## !
                                                                                                                          ## ends
                                                                                                                          ## the
                                                                                                                          ## construction
                                                                                                                          ## of
                                                                                                                          ## the
                                                                                                                          ## swept
                                                                                                                          ## primitive
                                                                                                                          ##
                                                                                                                          ## !
                                                                                                                          ## calling
                                                                                                                          ## the
                                                                                                                          ## virtual
                                                                                                                          ## geometric
                                                                                                                          ## functions
                                                                                                                          ## that
                                                                                                                          ## can't
                                                                                                                          ##
                                                                                                                          ## !
                                                                                                                          ## be
                                                                                                                          ## called
                                                                                                                          ## in
                                                                                                                          ## the
                                                                                                                          ## initialize.
                                                                                                                          ##
                                                                                                                          ## !
                                                                                                                          ## Initialize
                                                                                                                          ## the
                                                                                                                          ## Trsf
                                                                                                                          ## BrepSweep,
                                                                                                                          ## if
                                                                                                                          ## aCopy
                                                                                                                          ## is
                                                                                                                          ## true
                                                                                                                          ##
                                                                                                                          ## !
                                                                                                                          ## the
                                                                                                                          ## basis
                                                                                                                          ## elements
                                                                                                                          ## are
                                                                                                                          ## shared
                                                                                                                          ## as
                                                                                                                          ## often
                                                                                                                          ## as
                                                                                                                          ##
                                                                                                                          ## !
                                                                                                                          ## possible,
                                                                                                                          ## else
                                                                                                                          ## everything
                                                                                                                          ## is
                                                                                                                          ## copied.


proc Init*(this: var BRepSweep_Trsf) {.importcpp: "Init", header: "BRepSweep_Trsf.hxx".}
proc Process*(this: var BRepSweep_Trsf; aGenS: TopoDS_Shape; aDirV: Sweep_NumShape): Standard_Boolean {.
    importcpp: "Process", header: "BRepSweep_Trsf.hxx".}
proc MakeEmptyVertex*(this: var BRepSweep_Trsf; aGenV: TopoDS_Shape;
                     aDirV: Sweep_NumShape): TopoDS_Shape {.
    importcpp: "MakeEmptyVertex", header: "BRepSweep_Trsf.hxx".}
proc MakeEmptyDirectingEdge*(this: var BRepSweep_Trsf; aGenV: TopoDS_Shape;
                            aDirE: Sweep_NumShape): TopoDS_Shape {.
    importcpp: "MakeEmptyDirectingEdge", header: "BRepSweep_Trsf.hxx".}
proc MakeEmptyGeneratingEdge*(this: var BRepSweep_Trsf; aGenE: TopoDS_Shape;
                             aDirV: Sweep_NumShape): TopoDS_Shape {.
    importcpp: "MakeEmptyGeneratingEdge", header: "BRepSweep_Trsf.hxx".}
proc SetParameters*(this: var BRepSweep_Trsf; aNewFace: TopoDS_Shape;
                   aNewVertex: var TopoDS_Shape; aGenF: TopoDS_Shape;
                   aGenV: TopoDS_Shape; aDirV: Sweep_NumShape) {.
    importcpp: "SetParameters", header: "BRepSweep_Trsf.hxx".}
proc SetDirectingParameter*(this: var BRepSweep_Trsf; aNewEdge: TopoDS_Shape;
                           aNewVertex: var TopoDS_Shape; aGenV: TopoDS_Shape;
                           aDirE: Sweep_NumShape; aDirV: Sweep_NumShape) {.
    importcpp: "SetDirectingParameter", header: "BRepSweep_Trsf.hxx".}
proc SetGeneratingParameter*(this: var BRepSweep_Trsf; aNewEdge: TopoDS_Shape;
                            aNewVertex: var TopoDS_Shape; aGenE: TopoDS_Shape;
                            aGenV: TopoDS_Shape; aDirV: Sweep_NumShape) {.
    importcpp: "SetGeneratingParameter", header: "BRepSweep_Trsf.hxx".}
proc MakeEmptyFace*(this: var BRepSweep_Trsf; aGenS: TopoDS_Shape;
                   aDirS: Sweep_NumShape): TopoDS_Shape {.
    importcpp: "MakeEmptyFace", header: "BRepSweep_Trsf.hxx".}
proc SetPCurve*(this: var BRepSweep_Trsf; aNewFace: TopoDS_Shape;
               aNewEdge: var TopoDS_Shape; aGenF: TopoDS_Shape; aGenE: TopoDS_Shape;
               aDirV: Sweep_NumShape; orien: TopAbs_Orientation) {.
    importcpp: "SetPCurve", header: "BRepSweep_Trsf.hxx".}
proc SetGeneratingPCurve*(this: var BRepSweep_Trsf; aNewFace: TopoDS_Shape;
                         aNewEdge: var TopoDS_Shape; aGenE: TopoDS_Shape;
                         aDirE: Sweep_NumShape; aDirV: Sweep_NumShape;
                         orien: TopAbs_Orientation) {.
    importcpp: "SetGeneratingPCurve", header: "BRepSweep_Trsf.hxx".}
proc SetDirectingPCurve*(this: var BRepSweep_Trsf; aNewFace: TopoDS_Shape;
                        aNewEdge: var TopoDS_Shape; aGenE: TopoDS_Shape;
                        aGenV: TopoDS_Shape; aDirE: Sweep_NumShape;
                        orien: TopAbs_Orientation) {.
    importcpp: "SetDirectingPCurve", header: "BRepSweep_Trsf.hxx".}
proc GGDShapeIsToAdd*(this: BRepSweep_Trsf; aNewShape: TopoDS_Shape;
                     aNewSubShape: TopoDS_Shape; aGenS: TopoDS_Shape;
                     aSubGenS: TopoDS_Shape; aDirS: Sweep_NumShape): Standard_Boolean {.
    noSideEffect, importcpp: "GGDShapeIsToAdd", header: "BRepSweep_Trsf.hxx".}
proc GDDShapeIsToAdd*(this: BRepSweep_Trsf; aNewShape: TopoDS_Shape;
                     aNewSubShape: TopoDS_Shape; aGenS: TopoDS_Shape;
                     aDirS: Sweep_NumShape; aSubDirS: Sweep_NumShape): Standard_Boolean {.
    noSideEffect, importcpp: "GDDShapeIsToAdd", header: "BRepSweep_Trsf.hxx".}
proc SeparatedWires*(this: BRepSweep_Trsf; aNewShape: TopoDS_Shape;
                    aNewSubShape: TopoDS_Shape; aGenS: TopoDS_Shape;
                    aSubGenS: TopoDS_Shape; aDirS: Sweep_NumShape): Standard_Boolean {.
    noSideEffect, importcpp: "SeparatedWires", header: "BRepSweep_Trsf.hxx".}
proc HasShape*(this: BRepSweep_Trsf; aGenS: TopoDS_Shape; aDirS: Sweep_NumShape): Standard_Boolean {.
    noSideEffect, importcpp: "HasShape", header: "BRepSweep_Trsf.hxx".}
proc IsInvariant*(this: BRepSweep_Trsf; aGenS: TopoDS_Shape): Standard_Boolean {.
    noSideEffect, importcpp: "IsInvariant", header: "BRepSweep_Trsf.hxx".}
proc SetContinuity*(this: var BRepSweep_Trsf; aGenS: TopoDS_Shape;
                   aDirS: Sweep_NumShape) {.importcpp: "SetContinuity",
    header: "BRepSweep_Trsf.hxx".}