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

discard "forward decl of Standard_ConstructionError"
discard "forward decl of TopoDS_Shape"
discard "forward decl of Sweep_NumShape"
discard "forward decl of TopLoc_Location"
discard "forward decl of gp_Ax1"
type
  BRepSweepRotation* {.importcpp: "BRepSweep_Rotation",
                      header: "BRepSweep_Rotation.hxx", bycopy.} = object of BRepSweepTrsf


proc `new`*(this: var BRepSweepRotation; theSize: csize_t): pointer {.
    importcpp: "BRepSweep_Rotation::operator new",
    header: "BRepSweep_Rotation.hxx".}
proc `delete`*(this: var BRepSweepRotation; theAddress: pointer) {.
    importcpp: "BRepSweep_Rotation::operator delete",
    header: "BRepSweep_Rotation.hxx".}
proc `new[]`*(this: var BRepSweepRotation; theSize: csize_t): pointer {.
    importcpp: "BRepSweep_Rotation::operator new[]",
    header: "BRepSweep_Rotation.hxx".}
proc `delete[]`*(this: var BRepSweepRotation; theAddress: pointer) {.
    importcpp: "BRepSweep_Rotation::operator delete[]",
    header: "BRepSweep_Rotation.hxx".}
proc `new`*(this: var BRepSweepRotation; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "BRepSweep_Rotation::operator new",
    header: "BRepSweep_Rotation.hxx".}
proc `delete`*(this: var BRepSweepRotation; a2: pointer; a3: pointer) {.
    importcpp: "BRepSweep_Rotation::operator delete",
    header: "BRepSweep_Rotation.hxx".}
proc constructBRepSweepRotation*(s: TopoDS_Shape; n: SweepNumShape;
                                L: TopLocLocation; a: Ax1; d: StandardReal;
                                c: StandardBoolean): BRepSweepRotation {.
    constructor, importcpp: "BRepSweep_Rotation(@)",
    header: "BRepSweep_Rotation.hxx".}
proc makeEmptyVertex*(this: var BRepSweepRotation; aGenV: TopoDS_Shape;
                     aDirV: SweepNumShape): TopoDS_Shape {.
    importcpp: "MakeEmptyVertex", header: "BRepSweep_Rotation.hxx".}
proc makeEmptyDirectingEdge*(this: var BRepSweepRotation; aGenV: TopoDS_Shape;
                            aDirE: SweepNumShape): TopoDS_Shape {.
    importcpp: "MakeEmptyDirectingEdge", header: "BRepSweep_Rotation.hxx".}
proc makeEmptyGeneratingEdge*(this: var BRepSweepRotation; aGenE: TopoDS_Shape;
                             aDirV: SweepNumShape): TopoDS_Shape {.
    importcpp: "MakeEmptyGeneratingEdge", header: "BRepSweep_Rotation.hxx".}
proc setParameters*(this: var BRepSweepRotation; aNewFace: TopoDS_Shape;
                   aNewVertex: var TopoDS_Shape; aGenF: TopoDS_Shape;
                   aGenV: TopoDS_Shape; aDirV: SweepNumShape) {.
    importcpp: "SetParameters", header: "BRepSweep_Rotation.hxx".}
proc setDirectingParameter*(this: var BRepSweepRotation; aNewEdge: TopoDS_Shape;
                           aNewVertex: var TopoDS_Shape; aGenV: TopoDS_Shape;
                           aDirE: SweepNumShape; aDirV: SweepNumShape) {.
    importcpp: "SetDirectingParameter", header: "BRepSweep_Rotation.hxx".}
proc setGeneratingParameter*(this: var BRepSweepRotation; aNewEdge: TopoDS_Shape;
                            aNewVertex: var TopoDS_Shape; aGenE: TopoDS_Shape;
                            aGenV: TopoDS_Shape; aDirV: SweepNumShape) {.
    importcpp: "SetGeneratingParameter", header: "BRepSweep_Rotation.hxx".}
proc makeEmptyFace*(this: var BRepSweepRotation; aGenS: TopoDS_Shape;
                   aDirS: SweepNumShape): TopoDS_Shape {.
    importcpp: "MakeEmptyFace", header: "BRepSweep_Rotation.hxx".}
proc setPCurve*(this: var BRepSweepRotation; aNewFace: TopoDS_Shape;
               aNewEdge: var TopoDS_Shape; aGenF: TopoDS_Shape; aGenE: TopoDS_Shape;
               aDirV: SweepNumShape; orien: TopAbsOrientation) {.
    importcpp: "SetPCurve", header: "BRepSweep_Rotation.hxx".}
proc setGeneratingPCurve*(this: var BRepSweepRotation; aNewFace: TopoDS_Shape;
                         aNewEdge: var TopoDS_Shape; aGenE: TopoDS_Shape;
                         aDirE: SweepNumShape; aDirV: SweepNumShape;
                         orien: TopAbsOrientation) {.
    importcpp: "SetGeneratingPCurve", header: "BRepSweep_Rotation.hxx".}
proc setDirectingPCurve*(this: var BRepSweepRotation; aNewFace: TopoDS_Shape;
                        aNewEdge: var TopoDS_Shape; aGenE: TopoDS_Shape;
                        aGenV: TopoDS_Shape; aDirE: SweepNumShape;
                        orien: TopAbsOrientation) {.
    importcpp: "SetDirectingPCurve", header: "BRepSweep_Rotation.hxx".}
proc directSolid*(this: var BRepSweepRotation; aGenS: TopoDS_Shape;
                 aDirS: SweepNumShape): TopAbsOrientation {.
    importcpp: "DirectSolid", header: "BRepSweep_Rotation.hxx".}
proc gGDShapeIsToAdd*(this: BRepSweepRotation; aNewShape: TopoDS_Shape;
                     aNewSubShape: TopoDS_Shape; aGenS: TopoDS_Shape;
                     aSubGenS: TopoDS_Shape; aDirS: SweepNumShape): StandardBoolean {.
    noSideEffect, importcpp: "GGDShapeIsToAdd", header: "BRepSweep_Rotation.hxx".}
proc gDDShapeIsToAdd*(this: BRepSweepRotation; aNewShape: TopoDS_Shape;
                     aNewSubShape: TopoDS_Shape; aGenS: TopoDS_Shape;
                     aDirS: SweepNumShape; aSubDirS: SweepNumShape): StandardBoolean {.
    noSideEffect, importcpp: "GDDShapeIsToAdd", header: "BRepSweep_Rotation.hxx".}
proc separatedWires*(this: BRepSweepRotation; aNewShape: TopoDS_Shape;
                    aNewSubShape: TopoDS_Shape; aGenS: TopoDS_Shape;
                    aSubGenS: TopoDS_Shape; aDirS: SweepNumShape): StandardBoolean {.
    noSideEffect, importcpp: "SeparatedWires", header: "BRepSweep_Rotation.hxx".}
proc splitShell*(this: BRepSweepRotation; aNewShape: TopoDS_Shape): TopoDS_Shape {.
    noSideEffect, importcpp: "SplitShell", header: "BRepSweep_Rotation.hxx".}
proc hasShape*(this: BRepSweepRotation; aGenS: TopoDS_Shape; aDirS: SweepNumShape): StandardBoolean {.
    noSideEffect, importcpp: "HasShape", header: "BRepSweep_Rotation.hxx".}
proc isInvariant*(this: BRepSweepRotation; aGenS: TopoDS_Shape): StandardBoolean {.
    noSideEffect, importcpp: "IsInvariant", header: "BRepSweep_Rotation.hxx".}
proc axe*(this: BRepSweepRotation): Ax1 {.noSideEffect, importcpp: "Axe",
                                      header: "BRepSweep_Rotation.hxx".}
proc angle*(this: BRepSweepRotation): StandardReal {.noSideEffect,
    importcpp: "Angle", header: "BRepSweep_Rotation.hxx".}