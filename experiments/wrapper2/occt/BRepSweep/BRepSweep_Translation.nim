##  Created on: 1993-02-03
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
discard "forward decl of gp_Vec"
type
  BRepSweepTranslation* {.importcpp: "BRepSweep_Translation",
                         header: "BRepSweep_Translation.hxx", bycopy.} = object of BRepSweepTrsf ##
                                                                                          ## !
                                                                                          ## Creates
                                                                                          ## a
                                                                                          ## topology
                                                                                          ## by
                                                                                          ## translating
                                                                                          ## <S>
                                                                                          ## with
                                                                                          ## the
                                                                                          ##
                                                                                          ## !
                                                                                          ## vector
                                                                                          ## <V>.
                                                                                          ## If
                                                                                          ## C
                                                                                          ## is
                                                                                          ## true
                                                                                          ## S
                                                                                          ## Sucomponents
                                                                                          ## are
                                                                                          ##
                                                                                          ## !
                                                                                          ## copied.
                                                                                          ## If
                                                                                          ## Canonize
                                                                                          ## is
                                                                                          ## true
                                                                                          ## then
                                                                                          ## generated
                                                                                          ## surfaces
                                                                                          ##
                                                                                          ## !
                                                                                          ## are
                                                                                          ## attempted
                                                                                          ## to
                                                                                          ## be
                                                                                          ## canonized
                                                                                          ## in
                                                                                          ## simple
                                                                                          ## types


proc constructBRepSweepTranslation*(s: TopoDS_Shape; n: SweepNumShape;
                                   L: TopLocLocation; v: Vec; c: bool;
                                   canonize: bool = true): BRepSweepTranslation {.
    constructor, importcpp: "BRepSweep_Translation(@)",
    header: "BRepSweep_Translation.hxx".}
proc makeEmptyVertex*(this: var BRepSweepTranslation; aGenV: TopoDS_Shape;
                     aDirV: SweepNumShape): TopoDS_Shape {.
    importcpp: "MakeEmptyVertex", header: "BRepSweep_Translation.hxx".}
proc makeEmptyDirectingEdge*(this: var BRepSweepTranslation; aGenV: TopoDS_Shape;
                            aDirE: SweepNumShape): TopoDS_Shape {.
    importcpp: "MakeEmptyDirectingEdge", header: "BRepSweep_Translation.hxx".}
proc makeEmptyGeneratingEdge*(this: var BRepSweepTranslation; aGenE: TopoDS_Shape;
                             aDirV: SweepNumShape): TopoDS_Shape {.
    importcpp: "MakeEmptyGeneratingEdge", header: "BRepSweep_Translation.hxx".}
proc setParameters*(this: var BRepSweepTranslation; aNewFace: TopoDS_Shape;
                   aNewVertex: var TopoDS_Shape; aGenF: TopoDS_Shape;
                   aGenV: TopoDS_Shape; aDirV: SweepNumShape) {.
    importcpp: "SetParameters", header: "BRepSweep_Translation.hxx".}
proc setDirectingParameter*(this: var BRepSweepTranslation; aNewEdge: TopoDS_Shape;
                           aNewVertex: var TopoDS_Shape; aGenV: TopoDS_Shape;
                           aDirE: SweepNumShape; aDirV: SweepNumShape) {.
    importcpp: "SetDirectingParameter", header: "BRepSweep_Translation.hxx".}
proc setGeneratingParameter*(this: var BRepSweepTranslation; aNewEdge: TopoDS_Shape;
                            aNewVertex: var TopoDS_Shape; aGenE: TopoDS_Shape;
                            aGenV: TopoDS_Shape; aDirV: SweepNumShape) {.
    importcpp: "SetGeneratingParameter", header: "BRepSweep_Translation.hxx".}
proc makeEmptyFace*(this: var BRepSweepTranslation; aGenS: TopoDS_Shape;
                   aDirS: SweepNumShape): TopoDS_Shape {.
    importcpp: "MakeEmptyFace", header: "BRepSweep_Translation.hxx".}
proc setPCurve*(this: var BRepSweepTranslation; aNewFace: TopoDS_Shape;
               aNewEdge: var TopoDS_Shape; aGenF: TopoDS_Shape; aGenE: TopoDS_Shape;
               aDirV: SweepNumShape; orien: TopAbsOrientation) {.
    importcpp: "SetPCurve", header: "BRepSweep_Translation.hxx".}
proc setGeneratingPCurve*(this: var BRepSweepTranslation; aNewFace: TopoDS_Shape;
                         aNewEdge: var TopoDS_Shape; aGenE: TopoDS_Shape;
                         aDirE: SweepNumShape; aDirV: SweepNumShape;
                         orien: TopAbsOrientation) {.
    importcpp: "SetGeneratingPCurve", header: "BRepSweep_Translation.hxx".}
proc setDirectingPCurve*(this: var BRepSweepTranslation; aNewFace: TopoDS_Shape;
                        aNewEdge: var TopoDS_Shape; aGenE: TopoDS_Shape;
                        aGenV: TopoDS_Shape; aDirE: SweepNumShape;
                        orien: TopAbsOrientation) {.
    importcpp: "SetDirectingPCurve", header: "BRepSweep_Translation.hxx".}
proc directSolid*(this: var BRepSweepTranslation; aGenS: TopoDS_Shape;
                 aDirS: SweepNumShape): TopAbsOrientation {.
    importcpp: "DirectSolid", header: "BRepSweep_Translation.hxx".}
proc gGDShapeIsToAdd*(this: BRepSweepTranslation; aNewShape: TopoDS_Shape;
                     aNewSubShape: TopoDS_Shape; aGenS: TopoDS_Shape;
                     aSubGenS: TopoDS_Shape; aDirS: SweepNumShape): bool {.
    noSideEffect, importcpp: "GGDShapeIsToAdd", header: "BRepSweep_Translation.hxx".}
proc gDDShapeIsToAdd*(this: BRepSweepTranslation; aNewShape: TopoDS_Shape;
                     aNewSubShape: TopoDS_Shape; aGenS: TopoDS_Shape;
                     aDirS: SweepNumShape; aSubDirS: SweepNumShape): bool {.
    noSideEffect, importcpp: "GDDShapeIsToAdd", header: "BRepSweep_Translation.hxx".}
proc separatedWires*(this: BRepSweepTranslation; aNewShape: TopoDS_Shape;
                    aNewSubShape: TopoDS_Shape; aGenS: TopoDS_Shape;
                    aSubGenS: TopoDS_Shape; aDirS: SweepNumShape): bool {.
    noSideEffect, importcpp: "SeparatedWires", header: "BRepSweep_Translation.hxx".}
proc hasShape*(this: BRepSweepTranslation; aGenS: TopoDS_Shape; aDirS: SweepNumShape): bool {.
    noSideEffect, importcpp: "HasShape", header: "BRepSweep_Translation.hxx".}
proc isInvariant*(this: BRepSweepTranslation; aGenS: TopoDS_Shape): bool {.
    noSideEffect, importcpp: "IsInvariant", header: "BRepSweep_Translation.hxx".}
proc vec*(this: BRepSweepTranslation): Vec {.noSideEffect, importcpp: "Vec",
    header: "BRepSweep_Translation.hxx".}
