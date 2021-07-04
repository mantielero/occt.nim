##  Created on: 1993-06-23
##  Created by: Jean Yves LEBEY
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
  ../Standard/Standard_Handle, ../Standard/Standard_Integer,
  TopOpeBRepDS_MapOfSurface, TopOpeBRepDS_MapOfCurve, TopOpeBRepDS_MapOfPoint,
  TopOpeBRepDS_MapOfShapeData, ../TopTools/TopTools_IndexedMapOfShape,
  TopOpeBRepDS_ListOfInterference, ../TopTools/TopTools_ListOfShape,
  ../TopoDS/TopoDS_Shape, TopOpeBRepDS_Point, TopOpeBRepDS_Surface,
  TopOpeBRepDS_Curve, TopOpeBRepDS_ShapeSurface, ../Standard/Standard_Boolean,
  TopOpeBRepDS_IndexedDataMapOfShapeWithState, TopOpeBRepDS_Config,
  TopOpeBRepDS_ListIteratorOfListOfInterference

discard "forward decl of Geom_Surface"
discard "forward decl of TopOpeBRepDS_SurfaceExplorer"
discard "forward decl of TopOpeBRepDS_CurveExplorer"
discard "forward decl of TopOpeBRepDS_PointExplorer"
discard "forward decl of TopOpeBRepDS_Surface"
discard "forward decl of TopOpeBRepDS_Curve"
discard "forward decl of TopOpeBRepDS_Point"
discard "forward decl of TopoDS_Shape"
discard "forward decl of TopoDS_Edge"
discard "forward decl of TopOpeBRepDS_Interference"
discard "forward decl of TopOpeBRepDS_ShapeWithState"
type
  TopOpeBRepDS_DataStructure* {.importcpp: "TopOpeBRepDS_DataStructure",
                               header: "TopOpeBRepDS_DataStructure.hxx", bycopy.} = object


proc constructTopOpeBRepDS_DataStructure*(): TopOpeBRepDS_DataStructure {.
    constructor, importcpp: "TopOpeBRepDS_DataStructure(@)",
    header: "TopOpeBRepDS_DataStructure.hxx".}
proc Init*(this: var TopOpeBRepDS_DataStructure) {.importcpp: "Init",
    header: "TopOpeBRepDS_DataStructure.hxx".}
proc AddSurface*(this: var TopOpeBRepDS_DataStructure; S: TopOpeBRepDS_Surface): Standard_Integer {.
    importcpp: "AddSurface", header: "TopOpeBRepDS_DataStructure.hxx".}
proc RemoveSurface*(this: var TopOpeBRepDS_DataStructure; I: Standard_Integer) {.
    importcpp: "RemoveSurface", header: "TopOpeBRepDS_DataStructure.hxx".}
proc KeepSurface*(this: TopOpeBRepDS_DataStructure; I: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "KeepSurface",
    header: "TopOpeBRepDS_DataStructure.hxx".}
proc KeepSurface*(this: TopOpeBRepDS_DataStructure; S: var TopOpeBRepDS_Surface): Standard_Boolean {.
    noSideEffect, importcpp: "KeepSurface",
    header: "TopOpeBRepDS_DataStructure.hxx".}
proc ChangeKeepSurface*(this: var TopOpeBRepDS_DataStructure; I: Standard_Integer;
                       FindKeep: Standard_Boolean) {.
    importcpp: "ChangeKeepSurface", header: "TopOpeBRepDS_DataStructure.hxx".}
proc ChangeKeepSurface*(this: var TopOpeBRepDS_DataStructure;
                       S: var TopOpeBRepDS_Surface; FindKeep: Standard_Boolean) {.
    importcpp: "ChangeKeepSurface", header: "TopOpeBRepDS_DataStructure.hxx".}
proc AddCurve*(this: var TopOpeBRepDS_DataStructure; S: TopOpeBRepDS_Curve): Standard_Integer {.
    importcpp: "AddCurve", header: "TopOpeBRepDS_DataStructure.hxx".}
proc RemoveCurve*(this: var TopOpeBRepDS_DataStructure; I: Standard_Integer) {.
    importcpp: "RemoveCurve", header: "TopOpeBRepDS_DataStructure.hxx".}
proc KeepCurve*(this: TopOpeBRepDS_DataStructure; I: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "KeepCurve", header: "TopOpeBRepDS_DataStructure.hxx".}
proc KeepCurve*(this: TopOpeBRepDS_DataStructure; C: TopOpeBRepDS_Curve): Standard_Boolean {.
    noSideEffect, importcpp: "KeepCurve", header: "TopOpeBRepDS_DataStructure.hxx".}
proc ChangeKeepCurve*(this: var TopOpeBRepDS_DataStructure; I: Standard_Integer;
                     FindKeep: Standard_Boolean) {.importcpp: "ChangeKeepCurve",
    header: "TopOpeBRepDS_DataStructure.hxx".}
proc ChangeKeepCurve*(this: var TopOpeBRepDS_DataStructure;
                     C: var TopOpeBRepDS_Curve; FindKeep: Standard_Boolean) {.
    importcpp: "ChangeKeepCurve", header: "TopOpeBRepDS_DataStructure.hxx".}
proc AddPoint*(this: var TopOpeBRepDS_DataStructure; PDS: TopOpeBRepDS_Point): Standard_Integer {.
    importcpp: "AddPoint", header: "TopOpeBRepDS_DataStructure.hxx".}
proc AddPointSS*(this: var TopOpeBRepDS_DataStructure; PDS: TopOpeBRepDS_Point;
                S1: TopoDS_Shape; S2: TopoDS_Shape): Standard_Integer {.
    importcpp: "AddPointSS", header: "TopOpeBRepDS_DataStructure.hxx".}
proc RemovePoint*(this: var TopOpeBRepDS_DataStructure; I: Standard_Integer) {.
    importcpp: "RemovePoint", header: "TopOpeBRepDS_DataStructure.hxx".}
proc KeepPoint*(this: TopOpeBRepDS_DataStructure; I: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "KeepPoint", header: "TopOpeBRepDS_DataStructure.hxx".}
proc KeepPoint*(this: TopOpeBRepDS_DataStructure; P: TopOpeBRepDS_Point): Standard_Boolean {.
    noSideEffect, importcpp: "KeepPoint", header: "TopOpeBRepDS_DataStructure.hxx".}
proc ChangeKeepPoint*(this: var TopOpeBRepDS_DataStructure; I: Standard_Integer;
                     FindKeep: Standard_Boolean) {.importcpp: "ChangeKeepPoint",
    header: "TopOpeBRepDS_DataStructure.hxx".}
proc ChangeKeepPoint*(this: var TopOpeBRepDS_DataStructure;
                     P: var TopOpeBRepDS_Point; FindKeep: Standard_Boolean) {.
    importcpp: "ChangeKeepPoint", header: "TopOpeBRepDS_DataStructure.hxx".}
proc AddShape*(this: var TopOpeBRepDS_DataStructure; S: TopoDS_Shape): Standard_Integer {.
    importcpp: "AddShape", header: "TopOpeBRepDS_DataStructure.hxx".}
proc AddShape*(this: var TopOpeBRepDS_DataStructure; S: TopoDS_Shape;
              I: Standard_Integer): Standard_Integer {.importcpp: "AddShape",
    header: "TopOpeBRepDS_DataStructure.hxx".}
proc KeepShape*(this: TopOpeBRepDS_DataStructure; I: Standard_Integer;
               FindKeep: Standard_Boolean = Standard_True): Standard_Boolean {.
    noSideEffect, importcpp: "KeepShape", header: "TopOpeBRepDS_DataStructure.hxx".}
proc KeepShape*(this: TopOpeBRepDS_DataStructure; S: TopoDS_Shape;
               FindKeep: Standard_Boolean = Standard_True): Standard_Boolean {.
    noSideEffect, importcpp: "KeepShape", header: "TopOpeBRepDS_DataStructure.hxx".}
proc ChangeKeepShape*(this: var TopOpeBRepDS_DataStructure; I: Standard_Integer;
                     FindKeep: Standard_Boolean) {.importcpp: "ChangeKeepShape",
    header: "TopOpeBRepDS_DataStructure.hxx".}
proc ChangeKeepShape*(this: var TopOpeBRepDS_DataStructure; S: TopoDS_Shape;
                     FindKeep: Standard_Boolean) {.importcpp: "ChangeKeepShape",
    header: "TopOpeBRepDS_DataStructure.hxx".}
proc InitSectionEdges*(this: var TopOpeBRepDS_DataStructure) {.
    importcpp: "InitSectionEdges", header: "TopOpeBRepDS_DataStructure.hxx".}
proc AddSectionEdge*(this: var TopOpeBRepDS_DataStructure; E: TopoDS_Edge): Standard_Integer {.
    importcpp: "AddSectionEdge", header: "TopOpeBRepDS_DataStructure.hxx".}
proc SurfaceInterferences*(this: TopOpeBRepDS_DataStructure; I: Standard_Integer): TopOpeBRepDS_ListOfInterference {.
    noSideEffect, importcpp: "SurfaceInterferences",
    header: "TopOpeBRepDS_DataStructure.hxx".}
proc ChangeSurfaceInterferences*(this: var TopOpeBRepDS_DataStructure;
                                I: Standard_Integer): var TopOpeBRepDS_ListOfInterference {.
    importcpp: "ChangeSurfaceInterferences",
    header: "TopOpeBRepDS_DataStructure.hxx".}
proc CurveInterferences*(this: TopOpeBRepDS_DataStructure; I: Standard_Integer): TopOpeBRepDS_ListOfInterference {.
    noSideEffect, importcpp: "CurveInterferences",
    header: "TopOpeBRepDS_DataStructure.hxx".}
proc ChangeCurveInterferences*(this: var TopOpeBRepDS_DataStructure;
                              I: Standard_Integer): var TopOpeBRepDS_ListOfInterference {.
    importcpp: "ChangeCurveInterferences",
    header: "TopOpeBRepDS_DataStructure.hxx".}
proc PointInterferences*(this: TopOpeBRepDS_DataStructure; I: Standard_Integer): TopOpeBRepDS_ListOfInterference {.
    noSideEffect, importcpp: "PointInterferences",
    header: "TopOpeBRepDS_DataStructure.hxx".}
proc ChangePointInterferences*(this: var TopOpeBRepDS_DataStructure;
                              I: Standard_Integer): var TopOpeBRepDS_ListOfInterference {.
    importcpp: "ChangePointInterferences",
    header: "TopOpeBRepDS_DataStructure.hxx".}
proc ShapeInterferences*(this: TopOpeBRepDS_DataStructure; S: TopoDS_Shape;
                        FindKeep: Standard_Boolean = Standard_True): TopOpeBRepDS_ListOfInterference {.
    noSideEffect, importcpp: "ShapeInterferences",
    header: "TopOpeBRepDS_DataStructure.hxx".}
proc ChangeShapeInterferences*(this: var TopOpeBRepDS_DataStructure; S: TopoDS_Shape): var TopOpeBRepDS_ListOfInterference {.
    importcpp: "ChangeShapeInterferences",
    header: "TopOpeBRepDS_DataStructure.hxx".}
proc ShapeInterferences*(this: TopOpeBRepDS_DataStructure; I: Standard_Integer;
                        FindKeep: Standard_Boolean = Standard_True): TopOpeBRepDS_ListOfInterference {.
    noSideEffect, importcpp: "ShapeInterferences",
    header: "TopOpeBRepDS_DataStructure.hxx".}
proc ChangeShapeInterferences*(this: var TopOpeBRepDS_DataStructure;
                              I: Standard_Integer): var TopOpeBRepDS_ListOfInterference {.
    importcpp: "ChangeShapeInterferences",
    header: "TopOpeBRepDS_DataStructure.hxx".}
proc ShapeSameDomain*(this: TopOpeBRepDS_DataStructure; S: TopoDS_Shape): TopTools_ListOfShape {.
    noSideEffect, importcpp: "ShapeSameDomain",
    header: "TopOpeBRepDS_DataStructure.hxx".}
proc ChangeShapeSameDomain*(this: var TopOpeBRepDS_DataStructure; S: TopoDS_Shape): var TopTools_ListOfShape {.
    importcpp: "ChangeShapeSameDomain", header: "TopOpeBRepDS_DataStructure.hxx".}
proc ShapeSameDomain*(this: TopOpeBRepDS_DataStructure; I: Standard_Integer): TopTools_ListOfShape {.
    noSideEffect, importcpp: "ShapeSameDomain",
    header: "TopOpeBRepDS_DataStructure.hxx".}
proc ChangeShapeSameDomain*(this: var TopOpeBRepDS_DataStructure;
                           I: Standard_Integer): var TopTools_ListOfShape {.
    importcpp: "ChangeShapeSameDomain", header: "TopOpeBRepDS_DataStructure.hxx".}
proc ChangeShapes*(this: var TopOpeBRepDS_DataStructure): var TopOpeBRepDS_MapOfShapeData {.
    importcpp: "ChangeShapes", header: "TopOpeBRepDS_DataStructure.hxx".}
proc AddShapeSameDomain*(this: var TopOpeBRepDS_DataStructure; S: TopoDS_Shape;
                        SSD: TopoDS_Shape) {.importcpp: "AddShapeSameDomain",
    header: "TopOpeBRepDS_DataStructure.hxx".}
proc RemoveShapeSameDomain*(this: var TopOpeBRepDS_DataStructure; S: TopoDS_Shape;
                           SSD: TopoDS_Shape) {.
    importcpp: "RemoveShapeSameDomain", header: "TopOpeBRepDS_DataStructure.hxx".}
proc SameDomainRef*(this: TopOpeBRepDS_DataStructure; I: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "SameDomainRef",
    header: "TopOpeBRepDS_DataStructure.hxx".}
proc SameDomainRef*(this: TopOpeBRepDS_DataStructure; S: TopoDS_Shape): Standard_Integer {.
    noSideEffect, importcpp: "SameDomainRef",
    header: "TopOpeBRepDS_DataStructure.hxx".}
proc SameDomainRef*(this: var TopOpeBRepDS_DataStructure; I: Standard_Integer;
                   Ref: Standard_Integer) {.importcpp: "SameDomainRef",
    header: "TopOpeBRepDS_DataStructure.hxx".}
proc SameDomainRef*(this: var TopOpeBRepDS_DataStructure; S: TopoDS_Shape;
                   Ref: Standard_Integer) {.importcpp: "SameDomainRef",
    header: "TopOpeBRepDS_DataStructure.hxx".}
proc SameDomainOri*(this: TopOpeBRepDS_DataStructure; I: Standard_Integer): TopOpeBRepDS_Config {.
    noSideEffect, importcpp: "SameDomainOri",
    header: "TopOpeBRepDS_DataStructure.hxx".}
proc SameDomainOri*(this: TopOpeBRepDS_DataStructure; S: TopoDS_Shape): TopOpeBRepDS_Config {.
    noSideEffect, importcpp: "SameDomainOri",
    header: "TopOpeBRepDS_DataStructure.hxx".}
proc SameDomainOri*(this: var TopOpeBRepDS_DataStructure; I: Standard_Integer;
                   Ori: TopOpeBRepDS_Config) {.importcpp: "SameDomainOri",
    header: "TopOpeBRepDS_DataStructure.hxx".}
proc SameDomainOri*(this: var TopOpeBRepDS_DataStructure; S: TopoDS_Shape;
                   Ori: TopOpeBRepDS_Config) {.importcpp: "SameDomainOri",
    header: "TopOpeBRepDS_DataStructure.hxx".}
proc SameDomainInd*(this: TopOpeBRepDS_DataStructure; I: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "SameDomainInd",
    header: "TopOpeBRepDS_DataStructure.hxx".}
proc SameDomainInd*(this: TopOpeBRepDS_DataStructure; S: TopoDS_Shape): Standard_Integer {.
    noSideEffect, importcpp: "SameDomainInd",
    header: "TopOpeBRepDS_DataStructure.hxx".}
proc SameDomainInd*(this: var TopOpeBRepDS_DataStructure; I: Standard_Integer;
                   Ind: Standard_Integer) {.importcpp: "SameDomainInd",
    header: "TopOpeBRepDS_DataStructure.hxx".}
proc SameDomainInd*(this: var TopOpeBRepDS_DataStructure; S: TopoDS_Shape;
                   Ind: Standard_Integer) {.importcpp: "SameDomainInd",
    header: "TopOpeBRepDS_DataStructure.hxx".}
proc AncestorRank*(this: TopOpeBRepDS_DataStructure; I: Standard_Integer): Standard_Integer {.
    noSideEffect, importcpp: "AncestorRank",
    header: "TopOpeBRepDS_DataStructure.hxx".}
proc AncestorRank*(this: TopOpeBRepDS_DataStructure; S: TopoDS_Shape): Standard_Integer {.
    noSideEffect, importcpp: "AncestorRank",
    header: "TopOpeBRepDS_DataStructure.hxx".}
proc AncestorRank*(this: var TopOpeBRepDS_DataStructure; I: Standard_Integer;
                  Ianc: Standard_Integer) {.importcpp: "AncestorRank",
    header: "TopOpeBRepDS_DataStructure.hxx".}
proc AncestorRank*(this: var TopOpeBRepDS_DataStructure; S: TopoDS_Shape;
                  Ianc: Standard_Integer) {.importcpp: "AncestorRank",
    header: "TopOpeBRepDS_DataStructure.hxx".}
proc AddShapeInterference*(this: var TopOpeBRepDS_DataStructure; S: TopoDS_Shape;
                          I: handle[TopOpeBRepDS_Interference]) {.
    importcpp: "AddShapeInterference", header: "TopOpeBRepDS_DataStructure.hxx".}
proc RemoveShapeInterference*(this: var TopOpeBRepDS_DataStructure; S: TopoDS_Shape;
                             I: handle[TopOpeBRepDS_Interference]) {.
    importcpp: "RemoveShapeInterference", header: "TopOpeBRepDS_DataStructure.hxx".}
proc FillShapesSameDomain*(this: var TopOpeBRepDS_DataStructure; S1: TopoDS_Shape;
                          S2: TopoDS_Shape;
                          refFirst: Standard_Boolean = Standard_True) {.
    importcpp: "FillShapesSameDomain", header: "TopOpeBRepDS_DataStructure.hxx".}
proc FillShapesSameDomain*(this: var TopOpeBRepDS_DataStructure; S1: TopoDS_Shape;
                          S2: TopoDS_Shape; c1: TopOpeBRepDS_Config;
                          c2: TopOpeBRepDS_Config;
                          refFirst: Standard_Boolean = Standard_True) {.
    importcpp: "FillShapesSameDomain", header: "TopOpeBRepDS_DataStructure.hxx".}
proc UnfillShapesSameDomain*(this: var TopOpeBRepDS_DataStructure; S1: TopoDS_Shape;
                            S2: TopoDS_Shape) {.
    importcpp: "UnfillShapesSameDomain", header: "TopOpeBRepDS_DataStructure.hxx".}
proc NbSurfaces*(this: TopOpeBRepDS_DataStructure): Standard_Integer {.noSideEffect,
    importcpp: "NbSurfaces", header: "TopOpeBRepDS_DataStructure.hxx".}
proc NbCurves*(this: TopOpeBRepDS_DataStructure): Standard_Integer {.noSideEffect,
    importcpp: "NbCurves", header: "TopOpeBRepDS_DataStructure.hxx".}
proc ChangeNbCurves*(this: var TopOpeBRepDS_DataStructure; N: Standard_Integer) {.
    importcpp: "ChangeNbCurves", header: "TopOpeBRepDS_DataStructure.hxx".}
proc NbPoints*(this: TopOpeBRepDS_DataStructure): Standard_Integer {.noSideEffect,
    importcpp: "NbPoints", header: "TopOpeBRepDS_DataStructure.hxx".}
proc NbShapes*(this: TopOpeBRepDS_DataStructure): Standard_Integer {.noSideEffect,
    importcpp: "NbShapes", header: "TopOpeBRepDS_DataStructure.hxx".}
proc NbSectionEdges*(this: TopOpeBRepDS_DataStructure): Standard_Integer {.
    noSideEffect, importcpp: "NbSectionEdges",
    header: "TopOpeBRepDS_DataStructure.hxx".}
proc Surface*(this: TopOpeBRepDS_DataStructure; I: Standard_Integer): TopOpeBRepDS_Surface {.
    noSideEffect, importcpp: "Surface", header: "TopOpeBRepDS_DataStructure.hxx".}
proc ChangeSurface*(this: var TopOpeBRepDS_DataStructure; I: Standard_Integer): var TopOpeBRepDS_Surface {.
    importcpp: "ChangeSurface", header: "TopOpeBRepDS_DataStructure.hxx".}
proc Curve*(this: TopOpeBRepDS_DataStructure; I: Standard_Integer): TopOpeBRepDS_Curve {.
    noSideEffect, importcpp: "Curve", header: "TopOpeBRepDS_DataStructure.hxx".}
proc ChangeCurve*(this: var TopOpeBRepDS_DataStructure; I: Standard_Integer): var TopOpeBRepDS_Curve {.
    importcpp: "ChangeCurve", header: "TopOpeBRepDS_DataStructure.hxx".}
proc Point*(this: TopOpeBRepDS_DataStructure; I: Standard_Integer): TopOpeBRepDS_Point {.
    noSideEffect, importcpp: "Point", header: "TopOpeBRepDS_DataStructure.hxx".}
proc ChangePoint*(this: var TopOpeBRepDS_DataStructure; I: Standard_Integer): var TopOpeBRepDS_Point {.
    importcpp: "ChangePoint", header: "TopOpeBRepDS_DataStructure.hxx".}
proc Shape*(this: TopOpeBRepDS_DataStructure; I: Standard_Integer;
           FindKeep: Standard_Boolean = Standard_True): TopoDS_Shape {.noSideEffect,
    importcpp: "Shape", header: "TopOpeBRepDS_DataStructure.hxx".}
proc Shape*(this: TopOpeBRepDS_DataStructure; S: TopoDS_Shape;
           FindKeep: Standard_Boolean = Standard_True): Standard_Integer {.
    noSideEffect, importcpp: "Shape", header: "TopOpeBRepDS_DataStructure.hxx".}
proc SectionEdge*(this: TopOpeBRepDS_DataStructure; I: Standard_Integer;
                 FindKeep: Standard_Boolean = Standard_True): TopoDS_Edge {.
    noSideEffect, importcpp: "SectionEdge",
    header: "TopOpeBRepDS_DataStructure.hxx".}
proc SectionEdge*(this: TopOpeBRepDS_DataStructure; E: TopoDS_Edge;
                 FindKeep: Standard_Boolean = Standard_True): Standard_Integer {.
    noSideEffect, importcpp: "SectionEdge",
    header: "TopOpeBRepDS_DataStructure.hxx".}
proc IsSectionEdge*(this: TopOpeBRepDS_DataStructure; E: TopoDS_Edge;
                   FindKeep: Standard_Boolean = Standard_True): Standard_Boolean {.
    noSideEffect, importcpp: "IsSectionEdge",
    header: "TopOpeBRepDS_DataStructure.hxx".}
proc HasGeometry*(this: TopOpeBRepDS_DataStructure; S: TopoDS_Shape): Standard_Boolean {.
    noSideEffect, importcpp: "HasGeometry",
    header: "TopOpeBRepDS_DataStructure.hxx".}
proc HasShape*(this: TopOpeBRepDS_DataStructure; S: TopoDS_Shape;
              FindKeep: Standard_Boolean = Standard_True): Standard_Boolean {.
    noSideEffect, importcpp: "HasShape", header: "TopOpeBRepDS_DataStructure.hxx".}
proc SetNewSurface*(this: var TopOpeBRepDS_DataStructure; F: TopoDS_Shape;
                   S: handle[Geom_Surface]) {.importcpp: "SetNewSurface",
    header: "TopOpeBRepDS_DataStructure.hxx".}
proc HasNewSurface*(this: TopOpeBRepDS_DataStructure; F: TopoDS_Shape): Standard_Boolean {.
    noSideEffect, importcpp: "HasNewSurface",
    header: "TopOpeBRepDS_DataStructure.hxx".}
proc NewSurface*(this: TopOpeBRepDS_DataStructure; F: TopoDS_Shape): handle[
    Geom_Surface] {.noSideEffect, importcpp: "NewSurface",
                   header: "TopOpeBRepDS_DataStructure.hxx".}
proc Isfafa*(this: var TopOpeBRepDS_DataStructure; isfafa: Standard_Boolean) {.
    importcpp: "Isfafa", header: "TopOpeBRepDS_DataStructure.hxx".}
proc Isfafa*(this: TopOpeBRepDS_DataStructure): Standard_Boolean {.noSideEffect,
    importcpp: "Isfafa", header: "TopOpeBRepDS_DataStructure.hxx".}
proc ChangeMapOfShapeWithStateObj*(this: var TopOpeBRepDS_DataStructure): var TopOpeBRepDS_IndexedDataMapOfShapeWithState {.
    importcpp: "ChangeMapOfShapeWithStateObj",
    header: "TopOpeBRepDS_DataStructure.hxx".}
proc ChangeMapOfShapeWithStateTool*(this: var TopOpeBRepDS_DataStructure): var TopOpeBRepDS_IndexedDataMapOfShapeWithState {.
    importcpp: "ChangeMapOfShapeWithStateTool",
    header: "TopOpeBRepDS_DataStructure.hxx".}
proc ChangeMapOfShapeWithState*(this: var TopOpeBRepDS_DataStructure;
                               aShape: TopoDS_Shape; aFlag: var Standard_Boolean): var TopOpeBRepDS_IndexedDataMapOfShapeWithState {.
    importcpp: "ChangeMapOfShapeWithState",
    header: "TopOpeBRepDS_DataStructure.hxx".}
proc GetShapeWithState*(this: TopOpeBRepDS_DataStructure; aShape: TopoDS_Shape): TopOpeBRepDS_ShapeWithState {.
    noSideEffect, importcpp: "GetShapeWithState",
    header: "TopOpeBRepDS_DataStructure.hxx".}
proc ChangeMapOfRejectedShapesObj*(this: var TopOpeBRepDS_DataStructure): var TopTools_IndexedMapOfShape {.
    importcpp: "ChangeMapOfRejectedShapesObj",
    header: "TopOpeBRepDS_DataStructure.hxx".}
proc ChangeMapOfRejectedShapesTool*(this: var TopOpeBRepDS_DataStructure): var TopTools_IndexedMapOfShape {.
    importcpp: "ChangeMapOfRejectedShapesTool",
    header: "TopOpeBRepDS_DataStructure.hxx".}