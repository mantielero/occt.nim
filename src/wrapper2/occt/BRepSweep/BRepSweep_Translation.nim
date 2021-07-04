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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../gp/gp_Vec, ../Standard/Standard_Boolean,
  BRepSweep_Trsf, ../TopAbs/TopAbs_Orientation

discard "forward decl of Standard_ConstructionError"
discard "forward decl of TopoDS_Shape"
discard "forward decl of Sweep_NumShape"
discard "forward decl of TopLoc_Location"
discard "forward decl of gp_Vec"
type
  BRepSweep_Translation* {.importcpp: "BRepSweep_Translation",
                          header: "BRepSweep_Translation.hxx", bycopy.} = object of BRepSweep_Trsf ##
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


proc constructBRepSweep_Translation*(S: TopoDS_Shape; N: Sweep_NumShape;
                                    L: TopLoc_Location; V: gp_Vec;
                                    C: Standard_Boolean;
                                    Canonize: Standard_Boolean = Standard_True): BRepSweep_Translation {.
    constructor, importcpp: "BRepSweep_Translation(@)",
    header: "BRepSweep_Translation.hxx".}
proc MakeEmptyVertex*(this: var BRepSweep_Translation; aGenV: TopoDS_Shape;
                     aDirV: Sweep_NumShape): TopoDS_Shape {.
    importcpp: "MakeEmptyVertex", header: "BRepSweep_Translation.hxx".}
proc MakeEmptyDirectingEdge*(this: var BRepSweep_Translation; aGenV: TopoDS_Shape;
                            aDirE: Sweep_NumShape): TopoDS_Shape {.
    importcpp: "MakeEmptyDirectingEdge", header: "BRepSweep_Translation.hxx".}
proc MakeEmptyGeneratingEdge*(this: var BRepSweep_Translation; aGenE: TopoDS_Shape;
                             aDirV: Sweep_NumShape): TopoDS_Shape {.
    importcpp: "MakeEmptyGeneratingEdge", header: "BRepSweep_Translation.hxx".}
proc SetParameters*(this: var BRepSweep_Translation; aNewFace: TopoDS_Shape;
                   aNewVertex: var TopoDS_Shape; aGenF: TopoDS_Shape;
                   aGenV: TopoDS_Shape; aDirV: Sweep_NumShape) {.
    importcpp: "SetParameters", header: "BRepSweep_Translation.hxx".}
proc SetDirectingParameter*(this: var BRepSweep_Translation; aNewEdge: TopoDS_Shape;
                           aNewVertex: var TopoDS_Shape; aGenV: TopoDS_Shape;
                           aDirE: Sweep_NumShape; aDirV: Sweep_NumShape) {.
    importcpp: "SetDirectingParameter", header: "BRepSweep_Translation.hxx".}
proc SetGeneratingParameter*(this: var BRepSweep_Translation;
                            aNewEdge: TopoDS_Shape; aNewVertex: var TopoDS_Shape;
                            aGenE: TopoDS_Shape; aGenV: TopoDS_Shape;
                            aDirV: Sweep_NumShape) {.
    importcpp: "SetGeneratingParameter", header: "BRepSweep_Translation.hxx".}
proc MakeEmptyFace*(this: var BRepSweep_Translation; aGenS: TopoDS_Shape;
                   aDirS: Sweep_NumShape): TopoDS_Shape {.
    importcpp: "MakeEmptyFace", header: "BRepSweep_Translation.hxx".}
proc SetPCurve*(this: var BRepSweep_Translation; aNewFace: TopoDS_Shape;
               aNewEdge: var TopoDS_Shape; aGenF: TopoDS_Shape; aGenE: TopoDS_Shape;
               aDirV: Sweep_NumShape; orien: TopAbs_Orientation) {.
    importcpp: "SetPCurve", header: "BRepSweep_Translation.hxx".}
proc SetGeneratingPCurve*(this: var BRepSweep_Translation; aNewFace: TopoDS_Shape;
                         aNewEdge: var TopoDS_Shape; aGenE: TopoDS_Shape;
                         aDirE: Sweep_NumShape; aDirV: Sweep_NumShape;
                         orien: TopAbs_Orientation) {.
    importcpp: "SetGeneratingPCurve", header: "BRepSweep_Translation.hxx".}
proc SetDirectingPCurve*(this: var BRepSweep_Translation; aNewFace: TopoDS_Shape;
                        aNewEdge: var TopoDS_Shape; aGenE: TopoDS_Shape;
                        aGenV: TopoDS_Shape; aDirE: Sweep_NumShape;
                        orien: TopAbs_Orientation) {.
    importcpp: "SetDirectingPCurve", header: "BRepSweep_Translation.hxx".}
proc DirectSolid*(this: var BRepSweep_Translation; aGenS: TopoDS_Shape;
                 aDirS: Sweep_NumShape): TopAbs_Orientation {.
    importcpp: "DirectSolid", header: "BRepSweep_Translation.hxx".}
proc GGDShapeIsToAdd*(this: BRepSweep_Translation; aNewShape: TopoDS_Shape;
                     aNewSubShape: TopoDS_Shape; aGenS: TopoDS_Shape;
                     aSubGenS: TopoDS_Shape; aDirS: Sweep_NumShape): Standard_Boolean {.
    noSideEffect, importcpp: "GGDShapeIsToAdd", header: "BRepSweep_Translation.hxx".}
proc GDDShapeIsToAdd*(this: BRepSweep_Translation; aNewShape: TopoDS_Shape;
                     aNewSubShape: TopoDS_Shape; aGenS: TopoDS_Shape;
                     aDirS: Sweep_NumShape; aSubDirS: Sweep_NumShape): Standard_Boolean {.
    noSideEffect, importcpp: "GDDShapeIsToAdd", header: "BRepSweep_Translation.hxx".}
proc SeparatedWires*(this: BRepSweep_Translation; aNewShape: TopoDS_Shape;
                    aNewSubShape: TopoDS_Shape; aGenS: TopoDS_Shape;
                    aSubGenS: TopoDS_Shape; aDirS: Sweep_NumShape): Standard_Boolean {.
    noSideEffect, importcpp: "SeparatedWires", header: "BRepSweep_Translation.hxx".}
proc HasShape*(this: BRepSweep_Translation; aGenS: TopoDS_Shape;
              aDirS: Sweep_NumShape): Standard_Boolean {.noSideEffect,
    importcpp: "HasShape", header: "BRepSweep_Translation.hxx".}
proc IsInvariant*(this: BRepSweep_Translation; aGenS: TopoDS_Shape): Standard_Boolean {.
    noSideEffect, importcpp: "IsInvariant", header: "BRepSweep_Translation.hxx".}
proc Vec*(this: BRepSweep_Translation): gp_Vec {.noSideEffect, importcpp: "Vec",
    header: "BRepSweep_Translation.hxx".}