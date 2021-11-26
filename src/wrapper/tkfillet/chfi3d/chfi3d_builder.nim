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
  ChFi3dBuilder* {.importcpp: "ChFi3d_Builder", header: "ChFi3d_Builder.hxx", bycopy.} = object of RootObj


proc destroyChFi3dBuilder*(this: var ChFi3dBuilder) {.cdecl,
    importcpp: "#.~ChFi3d_Builder()", dynlib: tkfillet.}
proc setParams*(this: var ChFi3dBuilder; tang: cfloat; tesp: cfloat; t2d: cfloat;
               tApp3d: cfloat; tolApp2d: cfloat; fleche: cfloat) {.cdecl,
    importcpp: "SetParams", dynlib: tkfillet.}
proc setContinuity*(this: var ChFi3dBuilder; internalContinuity: GeomAbsShape;
                   angularTolerance: cfloat) {.cdecl, importcpp: "SetContinuity",
    dynlib: tkfillet.}
proc remove*(this: var ChFi3dBuilder; e: TopoDS_Edge) {.cdecl, importcpp: "Remove",
    dynlib: tkfillet.}
proc contains*(this: ChFi3dBuilder; e: TopoDS_Edge): cint {.noSideEffect, cdecl,
    importcpp: "Contains", dynlib: tkfillet.}
proc contains*(this: ChFi3dBuilder; e: TopoDS_Edge; indexInSpine: var cint): cint {.
    noSideEffect, cdecl, importcpp: "Contains", dynlib: tkfillet.}
proc nbElements*(this: ChFi3dBuilder): cint {.noSideEffect, cdecl,
    importcpp: "NbElements", dynlib: tkfillet.}
proc value*(this: ChFi3dBuilder; i: cint): Handle[ChFiDS_Spine] {.noSideEffect, cdecl,
    importcpp: "Value", dynlib: tkfillet.}
proc length*(this: ChFi3dBuilder; ic: cint): cfloat {.noSideEffect, cdecl,
    importcpp: "Length", dynlib: tkfillet.}
proc firstVertex*(this: ChFi3dBuilder; ic: cint): TopoDS_Vertex {.noSideEffect, cdecl,
    importcpp: "FirstVertex", dynlib: tkfillet.}
proc lastVertex*(this: ChFi3dBuilder; ic: cint): TopoDS_Vertex {.noSideEffect, cdecl,
    importcpp: "LastVertex", dynlib: tkfillet.}
proc abscissa*(this: ChFi3dBuilder; ic: cint; v: TopoDS_Vertex): cfloat {.noSideEffect,
    cdecl, importcpp: "Abscissa", dynlib: tkfillet.}
proc relativeAbscissa*(this: ChFi3dBuilder; ic: cint; v: TopoDS_Vertex): cfloat {.
    noSideEffect, cdecl, importcpp: "RelativeAbscissa", dynlib: tkfillet.}
proc closedAndTangent*(this: ChFi3dBuilder; ic: cint): bool {.noSideEffect, cdecl,
    importcpp: "ClosedAndTangent", dynlib: tkfillet.}
proc closed*(this: ChFi3dBuilder; ic: cint): bool {.noSideEffect, cdecl,
    importcpp: "Closed", dynlib: tkfillet.}
proc compute*(this: var ChFi3dBuilder) {.cdecl, importcpp: "Compute", dynlib: tkfillet.}
proc isDone*(this: ChFi3dBuilder): bool {.noSideEffect, cdecl, importcpp: "IsDone",
                                      dynlib: tkfillet.}
proc shape*(this: ChFi3dBuilder): TopoDS_Shape {.noSideEffect, cdecl,
    importcpp: "Shape", dynlib: tkfillet.}
proc generated*(this: var ChFi3dBuilder; eouV: TopoDS_Shape): TopToolsListOfShape {.
    cdecl, importcpp: "Generated", dynlib: tkfillet.}
proc nbFaultyContours*(this: ChFi3dBuilder): cint {.noSideEffect, cdecl,
    importcpp: "NbFaultyContours", dynlib: tkfillet.}
proc faultyContour*(this: ChFi3dBuilder; i: cint): cint {.noSideEffect, cdecl,
    importcpp: "FaultyContour", dynlib: tkfillet.}
proc nbComputedSurfaces*(this: ChFi3dBuilder; ic: cint): cint {.noSideEffect, cdecl,
    importcpp: "NbComputedSurfaces", dynlib: tkfillet.}
proc computedSurface*(this: ChFi3dBuilder; ic: cint; `is`: cint): Handle[GeomSurface] {.
    noSideEffect, cdecl, importcpp: "ComputedSurface", dynlib: tkfillet.}
proc nbFaultyVertices*(this: ChFi3dBuilder): cint {.noSideEffect, cdecl,
    importcpp: "NbFaultyVertices", dynlib: tkfillet.}
proc faultyVertex*(this: ChFi3dBuilder; iv: cint): TopoDS_Vertex {.noSideEffect, cdecl,
    importcpp: "FaultyVertex", dynlib: tkfillet.}
proc hasResult*(this: ChFi3dBuilder): bool {.noSideEffect, cdecl,
    importcpp: "HasResult", dynlib: tkfillet.}
proc badShape*(this: ChFi3dBuilder): TopoDS_Shape {.noSideEffect, cdecl,
    importcpp: "BadShape", dynlib: tkfillet.}
proc stripeStatus*(this: ChFi3dBuilder; ic: cint): ChFiDS_ErrorStatus {.noSideEffect,
    cdecl, importcpp: "StripeStatus", dynlib: tkfillet.}
proc reset*(this: var ChFi3dBuilder) {.cdecl, importcpp: "Reset", dynlib: tkfillet.}
proc builder*(this: ChFi3dBuilder): Handle[TopOpeBRepBuildHBuilder] {.noSideEffect,
    cdecl, importcpp: "Builder", dynlib: tkfillet.}
proc splitKPart*(this: var ChFi3dBuilder; data: Handle[ChFiDS_SurfData];
                setData: var ChFiDS_SequenceOfSurfData;
                spine: Handle[ChFiDS_Spine]; iedge: cint;
                s1: Handle[Adaptor3dHSurface]; i1: Handle[Adaptor3dTopolTool];
                s2: Handle[Adaptor3dHSurface]; i2: Handle[Adaptor3dTopolTool];
                intf: var bool; intl: var bool): bool {.cdecl, importcpp: "SplitKPart",
    dynlib: tkfillet.}
proc performTwoCornerbyInter*(this: var ChFi3dBuilder; index: cint): bool {.cdecl,
    importcpp: "PerformTwoCornerbyInter", dynlib: tkfillet.}