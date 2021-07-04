##  Created on: 1993-02-15
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
  ../Standard/Standard_Handle, ../Standard/Standard_Real, ../gp/gp_Ax1,
  BRepSweep_Trsf, ../Standard/Standard_Boolean, ../TopAbs/TopAbs_Orientation

discard "forward decl of Standard_ConstructionError"
discard "forward decl of TopoDS_Shape"
discard "forward decl of Sweep_NumShape"
discard "forward decl of TopLoc_Location"
discard "forward decl of gp_Ax1"
type
  BRepSweep_Rotation* {.importcpp: "BRepSweep_Rotation",
                       header: "BRepSweep_Rotation.hxx", bycopy.} = object of BRepSweep_Trsf ##
                                                                                      ## !
                                                                                      ## Creates
                                                                                      ## a
                                                                                      ## topology
                                                                                      ## by
                                                                                      ## rotating
                                                                                      ## <S>
                                                                                      ## around
                                                                                      ## A
                                                                                      ## with
                                                                                      ## the
                                                                                      ##
                                                                                      ## !
                                                                                      ## angle
                                                                                      ## D.


proc constructBRepSweep_Rotation*(S: TopoDS_Shape; N: Sweep_NumShape;
                                 L: TopLoc_Location; A: gp_Ax1; D: Standard_Real;
                                 C: Standard_Boolean): BRepSweep_Rotation {.
    constructor, importcpp: "BRepSweep_Rotation(@)",
    header: "BRepSweep_Rotation.hxx".}
proc MakeEmptyVertex*(this: var BRepSweep_Rotation; aGenV: TopoDS_Shape;
                     aDirV: Sweep_NumShape): TopoDS_Shape {.
    importcpp: "MakeEmptyVertex", header: "BRepSweep_Rotation.hxx".}
proc MakeEmptyDirectingEdge*(this: var BRepSweep_Rotation; aGenV: TopoDS_Shape;
                            aDirE: Sweep_NumShape): TopoDS_Shape {.
    importcpp: "MakeEmptyDirectingEdge", header: "BRepSweep_Rotation.hxx".}
proc MakeEmptyGeneratingEdge*(this: var BRepSweep_Rotation; aGenE: TopoDS_Shape;
                             aDirV: Sweep_NumShape): TopoDS_Shape {.
    importcpp: "MakeEmptyGeneratingEdge", header: "BRepSweep_Rotation.hxx".}
proc SetParameters*(this: var BRepSweep_Rotation; aNewFace: TopoDS_Shape;
                   aNewVertex: var TopoDS_Shape; aGenF: TopoDS_Shape;
                   aGenV: TopoDS_Shape; aDirV: Sweep_NumShape) {.
    importcpp: "SetParameters", header: "BRepSweep_Rotation.hxx".}
proc SetDirectingParameter*(this: var BRepSweep_Rotation; aNewEdge: TopoDS_Shape;
                           aNewVertex: var TopoDS_Shape; aGenV: TopoDS_Shape;
                           aDirE: Sweep_NumShape; aDirV: Sweep_NumShape) {.
    importcpp: "SetDirectingParameter", header: "BRepSweep_Rotation.hxx".}
proc SetGeneratingParameter*(this: var BRepSweep_Rotation; aNewEdge: TopoDS_Shape;
                            aNewVertex: var TopoDS_Shape; aGenE: TopoDS_Shape;
                            aGenV: TopoDS_Shape; aDirV: Sweep_NumShape) {.
    importcpp: "SetGeneratingParameter", header: "BRepSweep_Rotation.hxx".}
proc MakeEmptyFace*(this: var BRepSweep_Rotation; aGenS: TopoDS_Shape;
                   aDirS: Sweep_NumShape): TopoDS_Shape {.
    importcpp: "MakeEmptyFace", header: "BRepSweep_Rotation.hxx".}
proc SetPCurve*(this: var BRepSweep_Rotation; aNewFace: TopoDS_Shape;
               aNewEdge: var TopoDS_Shape; aGenF: TopoDS_Shape; aGenE: TopoDS_Shape;
               aDirV: Sweep_NumShape; orien: TopAbs_Orientation) {.
    importcpp: "SetPCurve", header: "BRepSweep_Rotation.hxx".}
proc SetGeneratingPCurve*(this: var BRepSweep_Rotation; aNewFace: TopoDS_Shape;
                         aNewEdge: var TopoDS_Shape; aGenE: TopoDS_Shape;
                         aDirE: Sweep_NumShape; aDirV: Sweep_NumShape;
                         orien: TopAbs_Orientation) {.
    importcpp: "SetGeneratingPCurve", header: "BRepSweep_Rotation.hxx".}
proc SetDirectingPCurve*(this: var BRepSweep_Rotation; aNewFace: TopoDS_Shape;
                        aNewEdge: var TopoDS_Shape; aGenE: TopoDS_Shape;
                        aGenV: TopoDS_Shape; aDirE: Sweep_NumShape;
                        orien: TopAbs_Orientation) {.
    importcpp: "SetDirectingPCurve", header: "BRepSweep_Rotation.hxx".}
proc DirectSolid*(this: var BRepSweep_Rotation; aGenS: TopoDS_Shape;
                 aDirS: Sweep_NumShape): TopAbs_Orientation {.
    importcpp: "DirectSolid", header: "BRepSweep_Rotation.hxx".}
proc GGDShapeIsToAdd*(this: BRepSweep_Rotation; aNewShape: TopoDS_Shape;
                     aNewSubShape: TopoDS_Shape; aGenS: TopoDS_Shape;
                     aSubGenS: TopoDS_Shape; aDirS: Sweep_NumShape): Standard_Boolean {.
    noSideEffect, importcpp: "GGDShapeIsToAdd", header: "BRepSweep_Rotation.hxx".}
proc GDDShapeIsToAdd*(this: BRepSweep_Rotation; aNewShape: TopoDS_Shape;
                     aNewSubShape: TopoDS_Shape; aGenS: TopoDS_Shape;
                     aDirS: Sweep_NumShape; aSubDirS: Sweep_NumShape): Standard_Boolean {.
    noSideEffect, importcpp: "GDDShapeIsToAdd", header: "BRepSweep_Rotation.hxx".}
proc SeparatedWires*(this: BRepSweep_Rotation; aNewShape: TopoDS_Shape;
                    aNewSubShape: TopoDS_Shape; aGenS: TopoDS_Shape;
                    aSubGenS: TopoDS_Shape; aDirS: Sweep_NumShape): Standard_Boolean {.
    noSideEffect, importcpp: "SeparatedWires", header: "BRepSweep_Rotation.hxx".}
proc SplitShell*(this: BRepSweep_Rotation; aNewShape: TopoDS_Shape): TopoDS_Shape {.
    noSideEffect, importcpp: "SplitShell", header: "BRepSweep_Rotation.hxx".}
proc HasShape*(this: BRepSweep_Rotation; aGenS: TopoDS_Shape; aDirS: Sweep_NumShape): Standard_Boolean {.
    noSideEffect, importcpp: "HasShape", header: "BRepSweep_Rotation.hxx".}
proc IsInvariant*(this: BRepSweep_Rotation; aGenS: TopoDS_Shape): Standard_Boolean {.
    noSideEffect, importcpp: "IsInvariant", header: "BRepSweep_Rotation.hxx".}
proc Axe*(this: BRepSweep_Rotation): gp_Ax1 {.noSideEffect, importcpp: "Axe",
    header: "BRepSweep_Rotation.hxx".}
proc Angle*(this: BRepSweep_Rotation): Standard_Real {.noSideEffect,
    importcpp: "Angle", header: "BRepSweep_Rotation.hxx".}