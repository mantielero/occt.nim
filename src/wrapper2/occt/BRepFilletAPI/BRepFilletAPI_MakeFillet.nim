##  Created on: 1994-06-17
##  Created by: Modeling
##  Copyright (c) 1994-1999 Matra Datavision
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
  ../Standard/Standard_Handle, ../ChFi3d/ChFi3d_FilBuilder,
  ../TopTools/TopTools_MapOfShape, BRepFilletAPI_LocalOperation,
  ../ChFi3d/ChFi3d_FilletShape, ../Standard/Standard_Real,
  ../GeomAbs/GeomAbs_Shape, ../TColgp/TColgp_Array1OfPnt2d,
  ../Standard/Standard_Integer, ../Standard/Standard_Boolean,
  ../TopTools/TopTools_ListOfShape, ../ChFiDS/ChFiDS_SecHArray1,
  ../ChFiDS/ChFiDS_ErrorStatus

discard "forward decl of StdFail_NotDone"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of TopoDS_Shape"
discard "forward decl of TopoDS_Edge"
discard "forward decl of Law_Function"
discard "forward decl of TopoDS_Vertex"
discard "forward decl of TopOpeBRepBuild_HBuilder"
discard "forward decl of Geom_Surface"
type
  BRepFilletAPI_MakeFillet* {.importcpp: "BRepFilletAPI_MakeFillet",
                             header: "BRepFilletAPI_MakeFillet.hxx", bycopy.} = object of BRepFilletAPI_LocalOperation ##
                                                                                                                ## !
                                                                                                                ## Initializes
                                                                                                                ## the
                                                                                                                ## computation
                                                                                                                ## of
                                                                                                                ## the
                                                                                                                ## fillets.
                                                                                                                ##
                                                                                                                ## !
                                                                                                                ## <FShape>
                                                                                                                ## sets
                                                                                                                ## the
                                                                                                                ## type
                                                                                                                ## of
                                                                                                                ## fillet
                                                                                                                ## surface.
                                                                                                                ## The
                                                                                                                ##
                                                                                                                ## !
                                                                                                                ## default
                                                                                                                ## value
                                                                                                                ## is
                                                                                                                ## ChFi3d_Rational
                                                                                                                ## (classical
                                                                                                                ## nurbs
                                                                                                                ##
                                                                                                                ## !
                                                                                                                ## representation
                                                                                                                ## of
                                                                                                                ## circles).
                                                                                                                ## ChFi3d_QuasiAngular
                                                                                                                ##
                                                                                                                ## !
                                                                                                                ## corresponds
                                                                                                                ## to
                                                                                                                ## a
                                                                                                                ## nurbs
                                                                                                                ## representation
                                                                                                                ## of
                                                                                                                ## circles
                                                                                                                ##
                                                                                                                ## !
                                                                                                                ## which
                                                                                                                ## parameterisation
                                                                                                                ## matches
                                                                                                                ## the
                                                                                                                ## circle
                                                                                                                ## one.
                                                                                                                ##
                                                                                                                ## !
                                                                                                                ## ChFi3d_Polynomial
                                                                                                                ## corresponds
                                                                                                                ## to
                                                                                                                ## a
                                                                                                                ## polynomial
                                                                                                                ##
                                                                                                                ## !
                                                                                                                ## representation
                                                                                                                ## of
                                                                                                                ## circles.


proc constructBRepFilletAPI_MakeFillet*(S: TopoDS_Shape; FShape: ChFi3d_FilletShape = ChFi3d_Rational): BRepFilletAPI_MakeFillet {.
    constructor, importcpp: "BRepFilletAPI_MakeFillet(@)",
    header: "BRepFilletAPI_MakeFillet.hxx".}
proc SetParams*(this: var BRepFilletAPI_MakeFillet; Tang: Standard_Real;
               Tesp: Standard_Real; T2d: Standard_Real; TApp3d: Standard_Real;
               TolApp2d: Standard_Real; Fleche: Standard_Real) {.
    importcpp: "SetParams", header: "BRepFilletAPI_MakeFillet.hxx".}
proc SetContinuity*(this: var BRepFilletAPI_MakeFillet;
                   InternalContinuity: GeomAbs_Shape;
                   AngularTolerance: Standard_Real) {.importcpp: "SetContinuity",
    header: "BRepFilletAPI_MakeFillet.hxx".}
proc Add*(this: var BRepFilletAPI_MakeFillet; E: TopoDS_Edge) {.importcpp: "Add",
    header: "BRepFilletAPI_MakeFillet.hxx".}
proc Add*(this: var BRepFilletAPI_MakeFillet; Radius: Standard_Real; E: TopoDS_Edge) {.
    importcpp: "Add", header: "BRepFilletAPI_MakeFillet.hxx".}
proc Add*(this: var BRepFilletAPI_MakeFillet; R1: Standard_Real; R2: Standard_Real;
         E: TopoDS_Edge) {.importcpp: "Add", header: "BRepFilletAPI_MakeFillet.hxx".}
proc Add*(this: var BRepFilletAPI_MakeFillet; L: handle[Law_Function]; E: TopoDS_Edge) {.
    importcpp: "Add", header: "BRepFilletAPI_MakeFillet.hxx".}
proc Add*(this: var BRepFilletAPI_MakeFillet; UandR: TColgp_Array1OfPnt2d;
         E: TopoDS_Edge) {.importcpp: "Add", header: "BRepFilletAPI_MakeFillet.hxx".}
proc SetRadius*(this: var BRepFilletAPI_MakeFillet; Radius: Standard_Real;
               IC: Standard_Integer; IinC: Standard_Integer) {.
    importcpp: "SetRadius", header: "BRepFilletAPI_MakeFillet.hxx".}
proc SetRadius*(this: var BRepFilletAPI_MakeFillet; R1: Standard_Real;
               R2: Standard_Real; IC: Standard_Integer; IinC: Standard_Integer) {.
    importcpp: "SetRadius", header: "BRepFilletAPI_MakeFillet.hxx".}
proc SetRadius*(this: var BRepFilletAPI_MakeFillet; L: handle[Law_Function];
               IC: Standard_Integer; IinC: Standard_Integer) {.
    importcpp: "SetRadius", header: "BRepFilletAPI_MakeFillet.hxx".}
proc SetRadius*(this: var BRepFilletAPI_MakeFillet; UandR: TColgp_Array1OfPnt2d;
               IC: Standard_Integer; IinC: Standard_Integer) {.
    importcpp: "SetRadius", header: "BRepFilletAPI_MakeFillet.hxx".}
proc ResetContour*(this: var BRepFilletAPI_MakeFillet; IC: Standard_Integer) {.
    importcpp: "ResetContour", header: "BRepFilletAPI_MakeFillet.hxx".}
proc IsConstant*(this: var BRepFilletAPI_MakeFillet; IC: Standard_Integer): Standard_Boolean {.
    importcpp: "IsConstant", header: "BRepFilletAPI_MakeFillet.hxx".}
proc Radius*(this: var BRepFilletAPI_MakeFillet; IC: Standard_Integer): Standard_Real {.
    importcpp: "Radius", header: "BRepFilletAPI_MakeFillet.hxx".}
proc IsConstant*(this: var BRepFilletAPI_MakeFillet; IC: Standard_Integer;
                E: TopoDS_Edge): Standard_Boolean {.importcpp: "IsConstant",
    header: "BRepFilletAPI_MakeFillet.hxx".}
proc Radius*(this: var BRepFilletAPI_MakeFillet; IC: Standard_Integer; E: TopoDS_Edge): Standard_Real {.
    importcpp: "Radius", header: "BRepFilletAPI_MakeFillet.hxx".}
proc SetRadius*(this: var BRepFilletAPI_MakeFillet; Radius: Standard_Real;
               IC: Standard_Integer; E: TopoDS_Edge) {.importcpp: "SetRadius",
    header: "BRepFilletAPI_MakeFillet.hxx".}
proc SetRadius*(this: var BRepFilletAPI_MakeFillet; Radius: Standard_Real;
               IC: Standard_Integer; V: TopoDS_Vertex) {.importcpp: "SetRadius",
    header: "BRepFilletAPI_MakeFillet.hxx".}
proc GetBounds*(this: var BRepFilletAPI_MakeFillet; IC: Standard_Integer;
               E: TopoDS_Edge; F: var Standard_Real; L: var Standard_Real): Standard_Boolean {.
    importcpp: "GetBounds", header: "BRepFilletAPI_MakeFillet.hxx".}
proc GetLaw*(this: var BRepFilletAPI_MakeFillet; IC: Standard_Integer; E: TopoDS_Edge): handle[
    Law_Function] {.importcpp: "GetLaw", header: "BRepFilletAPI_MakeFillet.hxx".}
proc SetLaw*(this: var BRepFilletAPI_MakeFillet; IC: Standard_Integer; E: TopoDS_Edge;
            L: handle[Law_Function]) {.importcpp: "SetLaw",
                                     header: "BRepFilletAPI_MakeFillet.hxx".}
proc SetFilletShape*(this: var BRepFilletAPI_MakeFillet; FShape: ChFi3d_FilletShape) {.
    importcpp: "SetFilletShape", header: "BRepFilletAPI_MakeFillet.hxx".}
proc GetFilletShape*(this: BRepFilletAPI_MakeFillet): ChFi3d_FilletShape {.
    noSideEffect, importcpp: "GetFilletShape",
    header: "BRepFilletAPI_MakeFillet.hxx".}
proc NbContours*(this: BRepFilletAPI_MakeFillet): Standard_Integer {.noSideEffect,
    importcpp: "NbContours", header: "BRepFilletAPI_MakeFillet.hxx".}
proc Contour*(this: BRepFilletAPI_MakeFillet; E: TopoDS_Edge): Standard_Integer {.
    noSideEffect, importcpp: "Contour", header: "BRepFilletAPI_MakeFillet.hxx".}
proc NbEdges*(this: BRepFilletAPI_MakeFillet; I: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "NbEdges", header: "BRepFilletAPI_MakeFillet.hxx".}
proc Edge*(this: BRepFilletAPI_MakeFillet; I: Standard_Integer; J: Standard_Integer): TopoDS_Edge {.
    noSideEffect, importcpp: "Edge", header: "BRepFilletAPI_MakeFillet.hxx".}
proc Remove*(this: var BRepFilletAPI_MakeFillet; E: TopoDS_Edge) {.
    importcpp: "Remove", header: "BRepFilletAPI_MakeFillet.hxx".}
proc Length*(this: BRepFilletAPI_MakeFillet; IC: Standard_Integer): Standard_Real {.
    noSideEffect, importcpp: "Length", header: "BRepFilletAPI_MakeFillet.hxx".}
proc FirstVertex*(this: BRepFilletAPI_MakeFillet; IC: Standard_Integer): TopoDS_Vertex {.
    noSideEffect, importcpp: "FirstVertex", header: "BRepFilletAPI_MakeFillet.hxx".}
proc LastVertex*(this: BRepFilletAPI_MakeFillet; IC: Standard_Integer): TopoDS_Vertex {.
    noSideEffect, importcpp: "LastVertex", header: "BRepFilletAPI_MakeFillet.hxx".}
proc Abscissa*(this: BRepFilletAPI_MakeFillet; IC: Standard_Integer; V: TopoDS_Vertex): Standard_Real {.
    noSideEffect, importcpp: "Abscissa", header: "BRepFilletAPI_MakeFillet.hxx".}
proc RelativeAbscissa*(this: BRepFilletAPI_MakeFillet; IC: Standard_Integer;
                      V: TopoDS_Vertex): Standard_Real {.noSideEffect,
    importcpp: "RelativeAbscissa", header: "BRepFilletAPI_MakeFillet.hxx".}
proc ClosedAndTangent*(this: BRepFilletAPI_MakeFillet; IC: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "ClosedAndTangent",
    header: "BRepFilletAPI_MakeFillet.hxx".}
proc Closed*(this: BRepFilletAPI_MakeFillet; IC: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "Closed", header: "BRepFilletAPI_MakeFillet.hxx".}
proc Build*(this: var BRepFilletAPI_MakeFillet) {.importcpp: "Build",
    header: "BRepFilletAPI_MakeFillet.hxx".}
proc Reset*(this: var BRepFilletAPI_MakeFillet) {.importcpp: "Reset",
    header: "BRepFilletAPI_MakeFillet.hxx".}
proc Builder*(this: BRepFilletAPI_MakeFillet): handle[TopOpeBRepBuild_HBuilder] {.
    noSideEffect, importcpp: "Builder", header: "BRepFilletAPI_MakeFillet.hxx".}
proc Generated*(this: var BRepFilletAPI_MakeFillet; EorV: TopoDS_Shape): TopTools_ListOfShape {.
    importcpp: "Generated", header: "BRepFilletAPI_MakeFillet.hxx".}
proc Modified*(this: var BRepFilletAPI_MakeFillet; F: TopoDS_Shape): TopTools_ListOfShape {.
    importcpp: "Modified", header: "BRepFilletAPI_MakeFillet.hxx".}
proc IsDeleted*(this: var BRepFilletAPI_MakeFillet; F: TopoDS_Shape): Standard_Boolean {.
    importcpp: "IsDeleted", header: "BRepFilletAPI_MakeFillet.hxx".}
proc NbSurfaces*(this: BRepFilletAPI_MakeFillet): Standard_Integer {.noSideEffect,
    importcpp: "NbSurfaces", header: "BRepFilletAPI_MakeFillet.hxx".}
proc NewFaces*(this: var BRepFilletAPI_MakeFillet; I: Standard_Integer): TopTools_ListOfShape {.
    importcpp: "NewFaces", header: "BRepFilletAPI_MakeFillet.hxx".}
proc Simulate*(this: var BRepFilletAPI_MakeFillet; IC: Standard_Integer) {.
    importcpp: "Simulate", header: "BRepFilletAPI_MakeFillet.hxx".}
proc NbSurf*(this: BRepFilletAPI_MakeFillet; IC: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "NbSurf", header: "BRepFilletAPI_MakeFillet.hxx".}
proc Sect*(this: BRepFilletAPI_MakeFillet; IC: Standard_Integer; IS: Standard_Integer): handle[
    ChFiDS_SecHArray1] {.noSideEffect, importcpp: "Sect",
                        header: "BRepFilletAPI_MakeFillet.hxx".}
proc NbFaultyContours*(this: BRepFilletAPI_MakeFillet): Standard_Integer {.
    noSideEffect, importcpp: "NbFaultyContours",
    header: "BRepFilletAPI_MakeFillet.hxx".}
proc FaultyContour*(this: BRepFilletAPI_MakeFillet; I: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "FaultyContour",
    header: "BRepFilletAPI_MakeFillet.hxx".}
proc NbComputedSurfaces*(this: BRepFilletAPI_MakeFillet; IC: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "NbComputedSurfaces",
    header: "BRepFilletAPI_MakeFillet.hxx".}
proc ComputedSurface*(this: BRepFilletAPI_MakeFillet; IC: Standard_Integer;
                     IS: Standard_Integer): handle[Geom_Surface] {.noSideEffect,
    importcpp: "ComputedSurface", header: "BRepFilletAPI_MakeFillet.hxx".}
proc NbFaultyVertices*(this: BRepFilletAPI_MakeFillet): Standard_Integer {.
    noSideEffect, importcpp: "NbFaultyVertices",
    header: "BRepFilletAPI_MakeFillet.hxx".}
proc FaultyVertex*(this: BRepFilletAPI_MakeFillet; IV: Standard_Integer): TopoDS_Vertex {.
    noSideEffect, importcpp: "FaultyVertex", header: "BRepFilletAPI_MakeFillet.hxx".}
proc HasResult*(this: BRepFilletAPI_MakeFillet): Standard_Boolean {.noSideEffect,
    importcpp: "HasResult", header: "BRepFilletAPI_MakeFillet.hxx".}
proc BadShape*(this: BRepFilletAPI_MakeFillet): TopoDS_Shape {.noSideEffect,
    importcpp: "BadShape", header: "BRepFilletAPI_MakeFillet.hxx".}
proc StripeStatus*(this: BRepFilletAPI_MakeFillet; IC: Standard_Integer): ChFiDS_ErrorStatus {.
    noSideEffect, importcpp: "StripeStatus", header: "BRepFilletAPI_MakeFillet.hxx".}