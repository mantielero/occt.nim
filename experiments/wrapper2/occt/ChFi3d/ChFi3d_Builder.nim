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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../TopoDS/TopoDS_Shape, ../Standard/Standard_Real,
  ../GeomAbs/GeomAbs_Shape, ../ChFiDS/ChFiDS_Map, ../ChFiDS/ChFiDS_ListOfStripe,
  ../ChFiDS/ChFiDS_StripeMap, ../ChFiDS/ChFiDS_Regularities,
  ../TopTools/TopTools_ListOfShape,
  ../TopTools/TopTools_DataMapOfShapeListOfInteger,
  ../TopTools/TopTools_DataMapOfShapeShape, ../Standard/Standard_Boolean,
  ../Standard/Standard_Integer, ../ChFiDS/ChFiDS_ErrorStatus, ../math/math_Vector,
  ../TopAbs/TopAbs_Orientation, ../ChFiDS/ChFiDS_SequenceOfSurfData,
  ../TopAbs/TopAbs_State, ../BRepAdaptor/BRepAdaptor_Surface

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
  ChFi3d_Builder* {.importcpp: "ChFi3d_Builder", header: "ChFi3d_Builder.hxx", bycopy.} = object


proc destroyChFi3d_Builder*(this: var ChFi3d_Builder) {.
    importcpp: "#.~ChFi3d_Builder()", header: "ChFi3d_Builder.hxx".}
proc SetParams*(this: var ChFi3d_Builder; Tang: Standard_Real; Tesp: Standard_Real;
               T2d: Standard_Real; TApp3d: Standard_Real; TolApp2d: Standard_Real;
               Fleche: Standard_Real) {.importcpp: "SetParams",
                                      header: "ChFi3d_Builder.hxx".}
proc SetContinuity*(this: var ChFi3d_Builder; InternalContinuity: GeomAbs_Shape;
                   AngularTolerance: Standard_Real) {.importcpp: "SetContinuity",
    header: "ChFi3d_Builder.hxx".}
proc Remove*(this: var ChFi3d_Builder; E: TopoDS_Edge) {.importcpp: "Remove",
    header: "ChFi3d_Builder.hxx".}
proc Contains*(this: ChFi3d_Builder; E: TopoDS_Edge): Standard_Integer {.noSideEffect,
    importcpp: "Contains", header: "ChFi3d_Builder.hxx".}
proc Contains*(this: ChFi3d_Builder; E: TopoDS_Edge;
              IndexInSpine: var Standard_Integer): Standard_Integer {.noSideEffect,
    importcpp: "Contains", header: "ChFi3d_Builder.hxx".}
proc NbElements*(this: ChFi3d_Builder): Standard_Integer {.noSideEffect,
    importcpp: "NbElements", header: "ChFi3d_Builder.hxx".}
proc Value*(this: ChFi3d_Builder; I: Standard_Integer): handle[ChFiDS_Spine] {.
    noSideEffect, importcpp: "Value", header: "ChFi3d_Builder.hxx".}
proc Length*(this: ChFi3d_Builder; IC: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "Length", header: "ChFi3d_Builder.hxx".}
proc FirstVertex*(this: ChFi3d_Builder; IC: Standard_Integer): TopoDS_Vertex {.
    noSideEffect, importcpp: "FirstVertex", header: "ChFi3d_Builder.hxx".}
proc LastVertex*(this: ChFi3d_Builder; IC: Standard_Integer): TopoDS_Vertex {.
    noSideEffect, importcpp: "LastVertex", header: "ChFi3d_Builder.hxx".}
proc Abscissa*(this: ChFi3d_Builder; IC: Standard_Integer; V: TopoDS_Vertex): Standard_Real {.
    noSideEffect, importcpp: "Abscissa", header: "ChFi3d_Builder.hxx".}
proc RelativeAbscissa*(this: ChFi3d_Builder; IC: Standard_Integer; V: TopoDS_Vertex): Standard_Real {.
    noSideEffect, importcpp: "RelativeAbscissa", header: "ChFi3d_Builder.hxx".}
proc ClosedAndTangent*(this: ChFi3d_Builder; IC: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "ClosedAndTangent", header: "ChFi3d_Builder.hxx".}
proc Closed*(this: ChFi3d_Builder; IC: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "Closed", header: "ChFi3d_Builder.hxx".}
proc Compute*(this: var ChFi3d_Builder) {.importcpp: "Compute",
                                      header: "ChFi3d_Builder.hxx".}
proc IsDone*(this: ChFi3d_Builder): Standard_Boolean {.noSideEffect,
    importcpp: "IsDone", header: "ChFi3d_Builder.hxx".}
proc Shape*(this: ChFi3d_Builder): TopoDS_Shape {.noSideEffect, importcpp: "Shape",
    header: "ChFi3d_Builder.hxx".}
proc Generated*(this: var ChFi3d_Builder; EouV: TopoDS_Shape): TopTools_ListOfShape {.
    importcpp: "Generated", header: "ChFi3d_Builder.hxx".}
proc NbFaultyContours*(this: ChFi3d_Builder): Standard_Integer {.noSideEffect,
    importcpp: "NbFaultyContours", header: "ChFi3d_Builder.hxx".}
proc FaultyContour*(this: ChFi3d_Builder; I: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "FaultyContour", header: "ChFi3d_Builder.hxx".}
proc NbComputedSurfaces*(this: ChFi3d_Builder; IC: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "NbComputedSurfaces", header: "ChFi3d_Builder.hxx".}
proc ComputedSurface*(this: ChFi3d_Builder; IC: Standard_Integer;
                     IS: Standard_Integer): handle[Geom_Surface] {.noSideEffect,
    importcpp: "ComputedSurface", header: "ChFi3d_Builder.hxx".}
proc NbFaultyVertices*(this: ChFi3d_Builder): Standard_Integer {.noSideEffect,
    importcpp: "NbFaultyVertices", header: "ChFi3d_Builder.hxx".}
proc FaultyVertex*(this: ChFi3d_Builder; IV: Standard_Integer): TopoDS_Vertex {.
    noSideEffect, importcpp: "FaultyVertex", header: "ChFi3d_Builder.hxx".}
proc HasResult*(this: ChFi3d_Builder): Standard_Boolean {.noSideEffect,
    importcpp: "HasResult", header: "ChFi3d_Builder.hxx".}
proc BadShape*(this: ChFi3d_Builder): TopoDS_Shape {.noSideEffect,
    importcpp: "BadShape", header: "ChFi3d_Builder.hxx".}
proc StripeStatus*(this: ChFi3d_Builder; IC: Standard_Integer): ChFiDS_ErrorStatus {.
    noSideEffect, importcpp: "StripeStatus", header: "ChFi3d_Builder.hxx".}
proc Reset*(this: var ChFi3d_Builder) {.importcpp: "Reset",
                                    header: "ChFi3d_Builder.hxx".}
proc Builder*(this: ChFi3d_Builder): handle[TopOpeBRepBuild_HBuilder] {.
    noSideEffect, importcpp: "Builder", header: "ChFi3d_Builder.hxx".}
proc SplitKPart*(this: var ChFi3d_Builder; Data: handle[ChFiDS_SurfData];
                SetData: var ChFiDS_SequenceOfSurfData;
                Spine: handle[ChFiDS_Spine]; Iedge: Standard_Integer;
                S1: handle[Adaptor3d_HSurface]; I1: handle[Adaptor3d_TopolTool];
                S2: handle[Adaptor3d_HSurface]; I2: handle[Adaptor3d_TopolTool];
                Intf: var Standard_Boolean; Intl: var Standard_Boolean): Standard_Boolean {.
    importcpp: "SplitKPart", header: "ChFi3d_Builder.hxx".}
proc PerformTwoCornerbyInter*(this: var ChFi3d_Builder; Index: Standard_Integer): Standard_Boolean {.
    importcpp: "PerformTwoCornerbyInter", header: "ChFi3d_Builder.hxx".}