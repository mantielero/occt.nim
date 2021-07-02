##  Created on: 1993-01-27
##  Created by: Philippe DAUTRY
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

discard "forward decl of Standard_NoMoreObject"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Standard_RangeError"
discard "forward decl of Standard_DomainError"
discard "forward decl of BRepSweep_Builder"
discard "forward decl of TopoDS_Shape"
discard "forward decl of Sweep_NumShape"
type
  BRepSweepNumLinearRegularSweep* {.importcpp: "BRepSweep_NumLinearRegularSweep", header: "BRepSweep_NumLinearRegularSweep.hxx",
                                   bycopy.} = object ## ! Builds the vertex addressed by [aGenV,aDirV], with its
                                                  ## ! geometric part, but without subcomponents.
                                                  ## ! Creates a NumLinearRegularSweep.    <aBuilder>  gives
                                                  ## ! basic topological services.


proc makeEmptyVertex*(this: var BRepSweepNumLinearRegularSweep; aGenV: TopoDS_Shape;
                     aDirV: SweepNumShape): TopoDS_Shape {.
    importcpp: "MakeEmptyVertex", header: "BRepSweep_NumLinearRegularSweep.hxx".}
proc destroyBRepSweepNumLinearRegularSweep*(
    this: var BRepSweepNumLinearRegularSweep) {.
    importcpp: "#.~BRepSweep_NumLinearRegularSweep()",
    header: "BRepSweep_NumLinearRegularSweep.hxx".}
proc makeEmptyDirectingEdge*(this: var BRepSweepNumLinearRegularSweep;
                            aGenV: TopoDS_Shape; aDirE: SweepNumShape): TopoDS_Shape {.
    importcpp: "MakeEmptyDirectingEdge",
    header: "BRepSweep_NumLinearRegularSweep.hxx".}
proc makeEmptyGeneratingEdge*(this: var BRepSweepNumLinearRegularSweep;
                             aGenE: TopoDS_Shape; aDirV: SweepNumShape): TopoDS_Shape {.
    importcpp: "MakeEmptyGeneratingEdge",
    header: "BRepSweep_NumLinearRegularSweep.hxx".}
proc setParameters*(this: var BRepSweepNumLinearRegularSweep;
                   aNewFace: TopoDS_Shape; aNewVertex: var TopoDS_Shape;
                   aGenF: TopoDS_Shape; aGenV: TopoDS_Shape; aDirV: SweepNumShape) {.
    importcpp: "SetParameters", header: "BRepSweep_NumLinearRegularSweep.hxx".}
proc setDirectingParameter*(this: var BRepSweepNumLinearRegularSweep;
                           aNewEdge: TopoDS_Shape; aNewVertex: var TopoDS_Shape;
                           aGenV: TopoDS_Shape; aDirE: SweepNumShape;
                           aDirV: SweepNumShape) {.
    importcpp: "SetDirectingParameter",
    header: "BRepSweep_NumLinearRegularSweep.hxx".}
proc setGeneratingParameter*(this: var BRepSweepNumLinearRegularSweep;
                            aNewEdge: TopoDS_Shape; aNewVertex: var TopoDS_Shape;
                            aGenE: TopoDS_Shape; aGenV: TopoDS_Shape;
                            aDirV: SweepNumShape) {.
    importcpp: "SetGeneratingParameter",
    header: "BRepSweep_NumLinearRegularSweep.hxx".}
proc makeEmptyFace*(this: var BRepSweepNumLinearRegularSweep; aGenS: TopoDS_Shape;
                   aDirS: SweepNumShape): TopoDS_Shape {.
    importcpp: "MakeEmptyFace", header: "BRepSweep_NumLinearRegularSweep.hxx".}
proc setPCurve*(this: var BRepSweepNumLinearRegularSweep; aNewFace: TopoDS_Shape;
               aNewEdge: var TopoDS_Shape; aGenF: TopoDS_Shape; aGenE: TopoDS_Shape;
               aDirV: SweepNumShape; orien: TopAbsOrientation) {.
    importcpp: "SetPCurve", header: "BRepSweep_NumLinearRegularSweep.hxx".}
proc setGeneratingPCurve*(this: var BRepSweepNumLinearRegularSweep;
                         aNewFace: TopoDS_Shape; aNewEdge: var TopoDS_Shape;
                         aGenE: TopoDS_Shape; aDirE: SweepNumShape;
                         aDirV: SweepNumShape; orien: TopAbsOrientation) {.
    importcpp: "SetGeneratingPCurve",
    header: "BRepSweep_NumLinearRegularSweep.hxx".}
proc setDirectingPCurve*(this: var BRepSweepNumLinearRegularSweep;
                        aNewFace: TopoDS_Shape; aNewEdge: var TopoDS_Shape;
                        aGenE: TopoDS_Shape; aGenV: TopoDS_Shape;
                        aDirE: SweepNumShape; orien: TopAbsOrientation) {.
    importcpp: "SetDirectingPCurve", header: "BRepSweep_NumLinearRegularSweep.hxx".}
proc directSolid*(this: var BRepSweepNumLinearRegularSweep; aGenS: TopoDS_Shape;
                 aDirS: SweepNumShape): TopAbsOrientation {.
    importcpp: "DirectSolid", header: "BRepSweep_NumLinearRegularSweep.hxx".}
proc gGDShapeIsToAdd*(this: BRepSweepNumLinearRegularSweep;
                     aNewShape: TopoDS_Shape; aNewSubShape: TopoDS_Shape;
                     aGenS: TopoDS_Shape; aSubGenS: TopoDS_Shape;
                     aDirS: SweepNumShape): StandardBoolean {.noSideEffect,
    importcpp: "GGDShapeIsToAdd", header: "BRepSweep_NumLinearRegularSweep.hxx".}
proc gDDShapeIsToAdd*(this: BRepSweepNumLinearRegularSweep;
                     aNewShape: TopoDS_Shape; aNewSubShape: TopoDS_Shape;
                     aGenS: TopoDS_Shape; aDirS: SweepNumShape;
                     aSubDirS: SweepNumShape): StandardBoolean {.noSideEffect,
    importcpp: "GDDShapeIsToAdd", header: "BRepSweep_NumLinearRegularSweep.hxx".}
proc separatedWires*(this: BRepSweepNumLinearRegularSweep; aNewShape: TopoDS_Shape;
                    aNewSubShape: TopoDS_Shape; aGenS: TopoDS_Shape;
                    aSubGenS: TopoDS_Shape; aDirS: SweepNumShape): StandardBoolean {.
    noSideEffect, importcpp: "SeparatedWires",
    header: "BRepSweep_NumLinearRegularSweep.hxx".}
proc splitShell*(this: BRepSweepNumLinearRegularSweep; aNewShape: TopoDS_Shape): TopoDS_Shape {.
    noSideEffect, importcpp: "SplitShell",
    header: "BRepSweep_NumLinearRegularSweep.hxx".}
proc setContinuity*(this: var BRepSweepNumLinearRegularSweep; aGenS: TopoDS_Shape;
                   aDirS: SweepNumShape) {.importcpp: "SetContinuity",
    header: "BRepSweep_NumLinearRegularSweep.hxx".}
proc hasShape*(this: BRepSweepNumLinearRegularSweep; aGenS: TopoDS_Shape;
              aDirS: SweepNumShape): StandardBoolean {.noSideEffect,
    importcpp: "HasShape", header: "BRepSweep_NumLinearRegularSweep.hxx".}
proc isInvariant*(this: BRepSweepNumLinearRegularSweep; aGenS: TopoDS_Shape): StandardBoolean {.
    noSideEffect, importcpp: "IsInvariant",
    header: "BRepSweep_NumLinearRegularSweep.hxx".}
proc shape*(this: var BRepSweepNumLinearRegularSweep; aGenS: TopoDS_Shape;
           aDirS: SweepNumShape): TopoDS_Shape {.importcpp: "Shape",
    header: "BRepSweep_NumLinearRegularSweep.hxx".}
proc shape*(this: var BRepSweepNumLinearRegularSweep; aGenS: TopoDS_Shape): TopoDS_Shape {.
    importcpp: "Shape", header: "BRepSweep_NumLinearRegularSweep.hxx".}
proc isUsed*(this: BRepSweepNumLinearRegularSweep; aGenS: TopoDS_Shape): StandardBoolean {.
    noSideEffect, importcpp: "IsUsed",
    header: "BRepSweep_NumLinearRegularSweep.hxx".}
proc genIsUsed*(this: BRepSweepNumLinearRegularSweep; theS: TopoDS_Shape): StandardBoolean {.
    noSideEffect, importcpp: "GenIsUsed",
    header: "BRepSweep_NumLinearRegularSweep.hxx".}
proc shape*(this: var BRepSweepNumLinearRegularSweep): TopoDS_Shape {.
    importcpp: "Shape", header: "BRepSweep_NumLinearRegularSweep.hxx".}
proc firstShape*(this: var BRepSweepNumLinearRegularSweep): TopoDS_Shape {.
    importcpp: "FirstShape", header: "BRepSweep_NumLinearRegularSweep.hxx".}
proc lastShape*(this: var BRepSweepNumLinearRegularSweep): TopoDS_Shape {.
    importcpp: "LastShape", header: "BRepSweep_NumLinearRegularSweep.hxx".}
proc firstShape*(this: var BRepSweepNumLinearRegularSweep; aGenS: TopoDS_Shape): TopoDS_Shape {.
    importcpp: "FirstShape", header: "BRepSweep_NumLinearRegularSweep.hxx".}
proc lastShape*(this: var BRepSweepNumLinearRegularSweep; aGenS: TopoDS_Shape): TopoDS_Shape {.
    importcpp: "LastShape", header: "BRepSweep_NumLinearRegularSweep.hxx".}
proc closed*(this: BRepSweepNumLinearRegularSweep): StandardBoolean {.noSideEffect,
    importcpp: "Closed", header: "BRepSweep_NumLinearRegularSweep.hxx".}

