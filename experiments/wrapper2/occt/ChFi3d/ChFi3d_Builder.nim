##  Created on: 1993-11-09
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

discard "forward decl of TopOpeBRepDS_HDataStructure"
discard "forward decl of TopOpeBRepBuild_HBuilder"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Standard_ConstructionError"
discard "forward decl of TopoDS_Shape"
discard "forward decl of TopoDS_Edge"
discard "forward decl of ChFiDS_Spine"
discard "forward decl of TopoDS_Vertex"
discard "forward decl of Geom_Surface"
discard "forward decl of ChFiDS_SurfData"
discard "forward decl of ChFiDS_HElSpine"
discard "forward decl of BRepAdaptor_HSurface"
discard "forward decl of Adaptor3d_TopolTool"
discard "forward decl of BRepAdaptor_HCurve2d"
discard "forward decl of BRepBlend_Line"
discard "forward decl of Adaptor3d_HSurface"
discard "forward decl of Blend_Function"
discard "forward decl of Blend_FuncInv"
discard "forward decl of Adaptor2d_HCurve2d"
discard "forward decl of Blend_SurfRstFunction"
discard "forward decl of Blend_SurfPointFuncInv"
discard "forward decl of Blend_SurfCurvFuncInv"
discard "forward decl of Blend_RstRstFunction"
discard "forward decl of Blend_CurvPointFuncInv"
discard "forward decl of ChFiDS_Stripe"
discard "forward decl of BRepTopAdaptor_TopolTool"
discard "forward decl of gp_Pnt2d"
discard "forward decl of ChFiDS_CommonPoint"
discard "forward decl of TopoDS_Face"
discard "forward decl of AppBlend_Approx"
discard "forward decl of Geom2d_Curve"
type
  ChFi3dBuilder* {.importcpp: "ChFi3d_Builder", header: "ChFi3d_Builder.hxx", bycopy.} = object


proc destroyChFi3dBuilder*(this: var ChFi3dBuilder) {.
    importcpp: "#.~ChFi3d_Builder()", header: "ChFi3d_Builder.hxx".}
proc setParams*(this: var ChFi3dBuilder; tang: float; tesp: float; t2d: float;
               tApp3d: float; tolApp2d: float; fleche: float) {.
    importcpp: "SetParams", header: "ChFi3d_Builder.hxx".}
proc setContinuity*(this: var ChFi3dBuilder; internalContinuity: GeomAbsShape;
                   angularTolerance: float) {.importcpp: "SetContinuity",
    header: "ChFi3d_Builder.hxx".}
proc remove*(this: var ChFi3dBuilder; e: TopoDS_Edge) {.importcpp: "Remove",
    header: "ChFi3d_Builder.hxx".}
proc contains*(this: ChFi3dBuilder; e: TopoDS_Edge): int {.noSideEffect,
    importcpp: "Contains", header: "ChFi3d_Builder.hxx".}
proc contains*(this: ChFi3dBuilder; e: TopoDS_Edge; indexInSpine: var int): int {.
    noSideEffect, importcpp: "Contains", header: "ChFi3d_Builder.hxx".}
proc nbElements*(this: ChFi3dBuilder): int {.noSideEffect, importcpp: "NbElements",
    header: "ChFi3d_Builder.hxx".}
proc value*(this: ChFi3dBuilder; i: int): Handle[ChFiDS_Spine] {.noSideEffect,
    importcpp: "Value", header: "ChFi3d_Builder.hxx".}
proc length*(this: ChFi3dBuilder; ic: int): float {.noSideEffect, importcpp: "Length",
    header: "ChFi3d_Builder.hxx".}
proc firstVertex*(this: ChFi3dBuilder; ic: int): TopoDS_Vertex {.noSideEffect,
    importcpp: "FirstVertex", header: "ChFi3d_Builder.hxx".}
proc lastVertex*(this: ChFi3dBuilder; ic: int): TopoDS_Vertex {.noSideEffect,
    importcpp: "LastVertex", header: "ChFi3d_Builder.hxx".}
proc abscissa*(this: ChFi3dBuilder; ic: int; v: TopoDS_Vertex): float {.noSideEffect,
    importcpp: "Abscissa", header: "ChFi3d_Builder.hxx".}
proc relativeAbscissa*(this: ChFi3dBuilder; ic: int; v: TopoDS_Vertex): float {.
    noSideEffect, importcpp: "RelativeAbscissa", header: "ChFi3d_Builder.hxx".}
proc closedAndTangent*(this: ChFi3dBuilder; ic: int): bool {.noSideEffect,
    importcpp: "ClosedAndTangent", header: "ChFi3d_Builder.hxx".}
proc closed*(this: ChFi3dBuilder; ic: int): bool {.noSideEffect, importcpp: "Closed",
    header: "ChFi3d_Builder.hxx".}
proc compute*(this: var ChFi3dBuilder) {.importcpp: "Compute",
                                     header: "ChFi3d_Builder.hxx".}
proc isDone*(this: ChFi3dBuilder): bool {.noSideEffect, importcpp: "IsDone",
                                      header: "ChFi3d_Builder.hxx".}
proc shape*(this: ChFi3dBuilder): TopoDS_Shape {.noSideEffect, importcpp: "Shape",
    header: "ChFi3d_Builder.hxx".}
proc generated*(this: var ChFi3dBuilder; eouV: TopoDS_Shape): TopToolsListOfShape {.
    importcpp: "Generated", header: "ChFi3d_Builder.hxx".}
proc nbFaultyContours*(this: ChFi3dBuilder): int {.noSideEffect,
    importcpp: "NbFaultyContours", header: "ChFi3d_Builder.hxx".}
proc faultyContour*(this: ChFi3dBuilder; i: int): int {.noSideEffect,
    importcpp: "FaultyContour", header: "ChFi3d_Builder.hxx".}
proc nbComputedSurfaces*(this: ChFi3dBuilder; ic: int): int {.noSideEffect,
    importcpp: "NbComputedSurfaces", header: "ChFi3d_Builder.hxx".}
proc computedSurface*(this: ChFi3dBuilder; ic: int; `is`: int): Handle[GeomSurface] {.
    noSideEffect, importcpp: "ComputedSurface", header: "ChFi3d_Builder.hxx".}
proc nbFaultyVertices*(this: ChFi3dBuilder): int {.noSideEffect,
    importcpp: "NbFaultyVertices", header: "ChFi3d_Builder.hxx".}
proc faultyVertex*(this: ChFi3dBuilder; iv: int): TopoDS_Vertex {.noSideEffect,
    importcpp: "FaultyVertex", header: "ChFi3d_Builder.hxx".}
proc hasResult*(this: ChFi3dBuilder): bool {.noSideEffect, importcpp: "HasResult",
    header: "ChFi3d_Builder.hxx".}
proc badShape*(this: ChFi3dBuilder): TopoDS_Shape {.noSideEffect,
    importcpp: "BadShape", header: "ChFi3d_Builder.hxx".}
proc stripeStatus*(this: ChFi3dBuilder; ic: int): ChFiDS_ErrorStatus {.noSideEffect,
    importcpp: "StripeStatus", header: "ChFi3d_Builder.hxx".}
proc reset*(this: var ChFi3dBuilder) {.importcpp: "Reset",
                                   header: "ChFi3d_Builder.hxx".}
proc builder*(this: ChFi3dBuilder): Handle[TopOpeBRepBuildHBuilder] {.noSideEffect,
    importcpp: "Builder", header: "ChFi3d_Builder.hxx".}
proc splitKPart*(this: var ChFi3dBuilder; data: Handle[ChFiDS_SurfData];
                setData: var ChFiDS_SequenceOfSurfData;
                spine: Handle[ChFiDS_Spine]; iedge: int;
                s1: Handle[Adaptor3dHSurface]; i1: Handle[Adaptor3dTopolTool];
                s2: Handle[Adaptor3dHSurface]; i2: Handle[Adaptor3dTopolTool];
                intf: var bool; intl: var bool): bool {.importcpp: "SplitKPart",
    header: "ChFi3d_Builder.hxx".}
proc performTwoCornerbyInter*(this: var ChFi3dBuilder; index: int): bool {.
    importcpp: "PerformTwoCornerbyInter", header: "ChFi3d_Builder.hxx".}
