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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, BRepSweep_Builder, ../TopoDS/TopoDS_Shape,
  ../Sweep/Sweep_NumShape, BRepSweep_Tool, ../Sweep/Sweep_NumShapeTool,
  ../TopTools/TopTools_Array2OfShape, ../TColStd/TColStd_Array2OfBoolean,
  ../TopAbs/TopAbs_Orientation, ../Standard/Standard_Boolean

discard "forward decl of Standard_NoMoreObject"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Standard_RangeError"
discard "forward decl of Standard_DomainError"
discard "forward decl of BRepSweep_Builder"
discard "forward decl of TopoDS_Shape"
discard "forward decl of Sweep_NumShape"
type
  BRepSweep_NumLinearRegularSweep* {.importcpp: "BRepSweep_NumLinearRegularSweep", header: "BRepSweep_NumLinearRegularSweep.hxx",
                                    bycopy.} = object ## ! Builds the vertex addressed by [aGenV,aDirV], with its
                                                   ## ! geometric part, but without subcomponents.
                                                   ## ! Creates a NumLinearRegularSweep.    <aBuilder>  gives
                                                   ## ! basic topological services.


proc MakeEmptyVertex*(this: var BRepSweep_NumLinearRegularSweep;
                     aGenV: TopoDS_Shape; aDirV: Sweep_NumShape): TopoDS_Shape {.
    importcpp: "MakeEmptyVertex", header: "BRepSweep_NumLinearRegularSweep.hxx".}
proc destroyBRepSweep_NumLinearRegularSweep*(
    this: var BRepSweep_NumLinearRegularSweep) {.
    importcpp: "#.~BRepSweep_NumLinearRegularSweep()",
    header: "BRepSweep_NumLinearRegularSweep.hxx".}
proc MakeEmptyDirectingEdge*(this: var BRepSweep_NumLinearRegularSweep;
                            aGenV: TopoDS_Shape; aDirE: Sweep_NumShape): TopoDS_Shape {.
    importcpp: "MakeEmptyDirectingEdge",
    header: "BRepSweep_NumLinearRegularSweep.hxx".}
proc MakeEmptyGeneratingEdge*(this: var BRepSweep_NumLinearRegularSweep;
                             aGenE: TopoDS_Shape; aDirV: Sweep_NumShape): TopoDS_Shape {.
    importcpp: "MakeEmptyGeneratingEdge",
    header: "BRepSweep_NumLinearRegularSweep.hxx".}
proc SetParameters*(this: var BRepSweep_NumLinearRegularSweep;
                   aNewFace: TopoDS_Shape; aNewVertex: var TopoDS_Shape;
                   aGenF: TopoDS_Shape; aGenV: TopoDS_Shape; aDirV: Sweep_NumShape) {.
    importcpp: "SetParameters", header: "BRepSweep_NumLinearRegularSweep.hxx".}
proc SetDirectingParameter*(this: var BRepSweep_NumLinearRegularSweep;
                           aNewEdge: TopoDS_Shape; aNewVertex: var TopoDS_Shape;
                           aGenV: TopoDS_Shape; aDirE: Sweep_NumShape;
                           aDirV: Sweep_NumShape) {.
    importcpp: "SetDirectingParameter",
    header: "BRepSweep_NumLinearRegularSweep.hxx".}
proc SetGeneratingParameter*(this: var BRepSweep_NumLinearRegularSweep;
                            aNewEdge: TopoDS_Shape; aNewVertex: var TopoDS_Shape;
                            aGenE: TopoDS_Shape; aGenV: TopoDS_Shape;
                            aDirV: Sweep_NumShape) {.
    importcpp: "SetGeneratingParameter",
    header: "BRepSweep_NumLinearRegularSweep.hxx".}
proc MakeEmptyFace*(this: var BRepSweep_NumLinearRegularSweep; aGenS: TopoDS_Shape;
                   aDirS: Sweep_NumShape): TopoDS_Shape {.
    importcpp: "MakeEmptyFace", header: "BRepSweep_NumLinearRegularSweep.hxx".}
proc SetPCurve*(this: var BRepSweep_NumLinearRegularSweep; aNewFace: TopoDS_Shape;
               aNewEdge: var TopoDS_Shape; aGenF: TopoDS_Shape; aGenE: TopoDS_Shape;
               aDirV: Sweep_NumShape; orien: TopAbs_Orientation) {.
    importcpp: "SetPCurve", header: "BRepSweep_NumLinearRegularSweep.hxx".}
proc SetGeneratingPCurve*(this: var BRepSweep_NumLinearRegularSweep;
                         aNewFace: TopoDS_Shape; aNewEdge: var TopoDS_Shape;
                         aGenE: TopoDS_Shape; aDirE: Sweep_NumShape;
                         aDirV: Sweep_NumShape; orien: TopAbs_Orientation) {.
    importcpp: "SetGeneratingPCurve",
    header: "BRepSweep_NumLinearRegularSweep.hxx".}
proc SetDirectingPCurve*(this: var BRepSweep_NumLinearRegularSweep;
                        aNewFace: TopoDS_Shape; aNewEdge: var TopoDS_Shape;
                        aGenE: TopoDS_Shape; aGenV: TopoDS_Shape;
                        aDirE: Sweep_NumShape; orien: TopAbs_Orientation) {.
    importcpp: "SetDirectingPCurve", header: "BRepSweep_NumLinearRegularSweep.hxx".}
proc DirectSolid*(this: var BRepSweep_NumLinearRegularSweep; aGenS: TopoDS_Shape;
                 aDirS: Sweep_NumShape): TopAbs_Orientation {.
    importcpp: "DirectSolid", header: "BRepSweep_NumLinearRegularSweep.hxx".}
proc GGDShapeIsToAdd*(this: BRepSweep_NumLinearRegularSweep;
                     aNewShape: TopoDS_Shape; aNewSubShape: TopoDS_Shape;
                     aGenS: TopoDS_Shape; aSubGenS: TopoDS_Shape;
                     aDirS: Sweep_NumShape): Standard_Boolean {.noSideEffect,
    importcpp: "GGDShapeIsToAdd", header: "BRepSweep_NumLinearRegularSweep.hxx".}
proc GDDShapeIsToAdd*(this: BRepSweep_NumLinearRegularSweep;
                     aNewShape: TopoDS_Shape; aNewSubShape: TopoDS_Shape;
                     aGenS: TopoDS_Shape; aDirS: Sweep_NumShape;
                     aSubDirS: Sweep_NumShape): Standard_Boolean {.noSideEffect,
    importcpp: "GDDShapeIsToAdd", header: "BRepSweep_NumLinearRegularSweep.hxx".}
proc SeparatedWires*(this: BRepSweep_NumLinearRegularSweep;
                    aNewShape: TopoDS_Shape; aNewSubShape: TopoDS_Shape;
                    aGenS: TopoDS_Shape; aSubGenS: TopoDS_Shape;
                    aDirS: Sweep_NumShape): Standard_Boolean {.noSideEffect,
    importcpp: "SeparatedWires", header: "BRepSweep_NumLinearRegularSweep.hxx".}
proc SplitShell*(this: BRepSweep_NumLinearRegularSweep; aNewShape: TopoDS_Shape): TopoDS_Shape {.
    noSideEffect, importcpp: "SplitShell",
    header: "BRepSweep_NumLinearRegularSweep.hxx".}
proc SetContinuity*(this: var BRepSweep_NumLinearRegularSweep; aGenS: TopoDS_Shape;
                   aDirS: Sweep_NumShape) {.importcpp: "SetContinuity",
    header: "BRepSweep_NumLinearRegularSweep.hxx".}
proc HasShape*(this: BRepSweep_NumLinearRegularSweep; aGenS: TopoDS_Shape;
              aDirS: Sweep_NumShape): Standard_Boolean {.noSideEffect,
    importcpp: "HasShape", header: "BRepSweep_NumLinearRegularSweep.hxx".}
proc IsInvariant*(this: BRepSweep_NumLinearRegularSweep; aGenS: TopoDS_Shape): Standard_Boolean {.
    noSideEffect, importcpp: "IsInvariant",
    header: "BRepSweep_NumLinearRegularSweep.hxx".}
proc Shape*(this: var BRepSweep_NumLinearRegularSweep; aGenS: TopoDS_Shape;
           aDirS: Sweep_NumShape): TopoDS_Shape {.importcpp: "Shape",
    header: "BRepSweep_NumLinearRegularSweep.hxx".}
proc Shape*(this: var BRepSweep_NumLinearRegularSweep; aGenS: TopoDS_Shape): TopoDS_Shape {.
    importcpp: "Shape", header: "BRepSweep_NumLinearRegularSweep.hxx".}
proc IsUsed*(this: BRepSweep_NumLinearRegularSweep; aGenS: TopoDS_Shape): Standard_Boolean {.
    noSideEffect, importcpp: "IsUsed",
    header: "BRepSweep_NumLinearRegularSweep.hxx".}
proc GenIsUsed*(this: BRepSweep_NumLinearRegularSweep; theS: TopoDS_Shape): Standard_Boolean {.
    noSideEffect, importcpp: "GenIsUsed",
    header: "BRepSweep_NumLinearRegularSweep.hxx".}
proc Shape*(this: var BRepSweep_NumLinearRegularSweep): TopoDS_Shape {.
    importcpp: "Shape", header: "BRepSweep_NumLinearRegularSweep.hxx".}
proc FirstShape*(this: var BRepSweep_NumLinearRegularSweep): TopoDS_Shape {.
    importcpp: "FirstShape", header: "BRepSweep_NumLinearRegularSweep.hxx".}
proc LastShape*(this: var BRepSweep_NumLinearRegularSweep): TopoDS_Shape {.
    importcpp: "LastShape", header: "BRepSweep_NumLinearRegularSweep.hxx".}
proc FirstShape*(this: var BRepSweep_NumLinearRegularSweep; aGenS: TopoDS_Shape): TopoDS_Shape {.
    importcpp: "FirstShape", header: "BRepSweep_NumLinearRegularSweep.hxx".}
proc LastShape*(this: var BRepSweep_NumLinearRegularSweep; aGenS: TopoDS_Shape): TopoDS_Shape {.
    importcpp: "LastShape", header: "BRepSweep_NumLinearRegularSweep.hxx".}
proc Closed*(this: BRepSweep_NumLinearRegularSweep): Standard_Boolean {.
    noSideEffect, importcpp: "Closed",
    header: "BRepSweep_NumLinearRegularSweep.hxx".}