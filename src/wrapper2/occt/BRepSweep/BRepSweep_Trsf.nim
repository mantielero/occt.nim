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

discard "forward decl of BRep_Builder"
discard "forward decl of TopoDS_Shape"
discard "forward decl of Sweep_NumShape"
discard "forward decl of TopLoc_Location"
type
  BRepSweepTrsf* {.importcpp: "BRepSweep_Trsf", header: "BRepSweep_Trsf.hxx", bycopy.} = object of BRepSweepNumLinearRegularSweep ##
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


proc init*(this: var BRepSweepTrsf) {.importcpp: "Init", header: "BRepSweep_Trsf.hxx".}
proc process*(this: var BRepSweepTrsf; aGenS: TopoDS_Shape; aDirV: SweepNumShape): StandardBoolean {.
    importcpp: "Process", header: "BRepSweep_Trsf.hxx".}
proc makeEmptyVertex*(this: var BRepSweepTrsf; aGenV: TopoDS_Shape;
                     aDirV: SweepNumShape): TopoDS_Shape {.
    importcpp: "MakeEmptyVertex", header: "BRepSweep_Trsf.hxx".}
proc makeEmptyDirectingEdge*(this: var BRepSweepTrsf; aGenV: TopoDS_Shape;
                            aDirE: SweepNumShape): TopoDS_Shape {.
    importcpp: "MakeEmptyDirectingEdge", header: "BRepSweep_Trsf.hxx".}
proc makeEmptyGeneratingEdge*(this: var BRepSweepTrsf; aGenE: TopoDS_Shape;
                             aDirV: SweepNumShape): TopoDS_Shape {.
    importcpp: "MakeEmptyGeneratingEdge", header: "BRepSweep_Trsf.hxx".}
proc setParameters*(this: var BRepSweepTrsf; aNewFace: TopoDS_Shape;
                   aNewVertex: var TopoDS_Shape; aGenF: TopoDS_Shape;
                   aGenV: TopoDS_Shape; aDirV: SweepNumShape) {.
    importcpp: "SetParameters", header: "BRepSweep_Trsf.hxx".}
proc setDirectingParameter*(this: var BRepSweepTrsf; aNewEdge: TopoDS_Shape;
                           aNewVertex: var TopoDS_Shape; aGenV: TopoDS_Shape;
                           aDirE: SweepNumShape; aDirV: SweepNumShape) {.
    importcpp: "SetDirectingParameter", header: "BRepSweep_Trsf.hxx".}
proc setGeneratingParameter*(this: var BRepSweepTrsf; aNewEdge: TopoDS_Shape;
                            aNewVertex: var TopoDS_Shape; aGenE: TopoDS_Shape;
                            aGenV: TopoDS_Shape; aDirV: SweepNumShape) {.
    importcpp: "SetGeneratingParameter", header: "BRepSweep_Trsf.hxx".}
proc makeEmptyFace*(this: var BRepSweepTrsf; aGenS: TopoDS_Shape; aDirS: SweepNumShape): TopoDS_Shape {.
    importcpp: "MakeEmptyFace", header: "BRepSweep_Trsf.hxx".}
proc setPCurve*(this: var BRepSweepTrsf; aNewFace: TopoDS_Shape;
               aNewEdge: var TopoDS_Shape; aGenF: TopoDS_Shape; aGenE: TopoDS_Shape;
               aDirV: SweepNumShape; orien: TopAbsOrientation) {.
    importcpp: "SetPCurve", header: "BRepSweep_Trsf.hxx".}
proc setGeneratingPCurve*(this: var BRepSweepTrsf; aNewFace: TopoDS_Shape;
                         aNewEdge: var TopoDS_Shape; aGenE: TopoDS_Shape;
                         aDirE: SweepNumShape; aDirV: SweepNumShape;
                         orien: TopAbsOrientation) {.
    importcpp: "SetGeneratingPCurve", header: "BRepSweep_Trsf.hxx".}
proc setDirectingPCurve*(this: var BRepSweepTrsf; aNewFace: TopoDS_Shape;
                        aNewEdge: var TopoDS_Shape; aGenE: TopoDS_Shape;
                        aGenV: TopoDS_Shape; aDirE: SweepNumShape;
                        orien: TopAbsOrientation) {.
    importcpp: "SetDirectingPCurve", header: "BRepSweep_Trsf.hxx".}
proc gGDShapeIsToAdd*(this: BRepSweepTrsf; aNewShape: TopoDS_Shape;
                     aNewSubShape: TopoDS_Shape; aGenS: TopoDS_Shape;
                     aSubGenS: TopoDS_Shape; aDirS: SweepNumShape): StandardBoolean {.
    noSideEffect, importcpp: "GGDShapeIsToAdd", header: "BRepSweep_Trsf.hxx".}
proc gDDShapeIsToAdd*(this: BRepSweepTrsf; aNewShape: TopoDS_Shape;
                     aNewSubShape: TopoDS_Shape; aGenS: TopoDS_Shape;
                     aDirS: SweepNumShape; aSubDirS: SweepNumShape): StandardBoolean {.
    noSideEffect, importcpp: "GDDShapeIsToAdd", header: "BRepSweep_Trsf.hxx".}
proc separatedWires*(this: BRepSweepTrsf; aNewShape: TopoDS_Shape;
                    aNewSubShape: TopoDS_Shape; aGenS: TopoDS_Shape;
                    aSubGenS: TopoDS_Shape; aDirS: SweepNumShape): StandardBoolean {.
    noSideEffect, importcpp: "SeparatedWires", header: "BRepSweep_Trsf.hxx".}
proc hasShape*(this: BRepSweepTrsf; aGenS: TopoDS_Shape; aDirS: SweepNumShape): StandardBoolean {.
    noSideEffect, importcpp: "HasShape", header: "BRepSweep_Trsf.hxx".}
proc isInvariant*(this: BRepSweepTrsf; aGenS: TopoDS_Shape): StandardBoolean {.
    noSideEffect, importcpp: "IsInvariant", header: "BRepSweep_Trsf.hxx".}
proc setContinuity*(this: var BRepSweepTrsf; aGenS: TopoDS_Shape; aDirS: SweepNumShape) {.
    importcpp: "SetContinuity", header: "BRepSweep_Trsf.hxx".}

