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


proc newTopOpeBRepDS_DataStructure*(): TopOpeBRepDS_DataStructure {.cdecl,
    constructor, importcpp: "TopOpeBRepDS_DataStructure(@)", dynlib: tkbool.}
proc init*(this: var TopOpeBRepDS_DataStructure) {.cdecl, importcpp: "Init",
    dynlib: tkbool.}
proc addSurface*(this: var TopOpeBRepDS_DataStructure; s: TopOpeBRepDS_Surface): cint {.
    cdecl, importcpp: "AddSurface", dynlib: tkbool.}
proc removeSurface*(this: var TopOpeBRepDS_DataStructure; i: cint) {.cdecl,
    importcpp: "RemoveSurface", dynlib: tkbool.}
proc keepSurface*(this: TopOpeBRepDS_DataStructure; i: cint): bool {.noSideEffect,
    cdecl, importcpp: "KeepSurface", dynlib: tkbool.}
proc keepSurface*(this: TopOpeBRepDS_DataStructure; s: var TopOpeBRepDS_Surface): bool {.
    noSideEffect, cdecl, importcpp: "KeepSurface", dynlib: tkbool.}
proc changeKeepSurface*(this: var TopOpeBRepDS_DataStructure; i: cint; findKeep: bool) {.
    cdecl, importcpp: "ChangeKeepSurface", dynlib: tkbool.}
proc changeKeepSurface*(this: var TopOpeBRepDS_DataStructure;
                       s: var TopOpeBRepDS_Surface; findKeep: bool) {.cdecl,
    importcpp: "ChangeKeepSurface", dynlib: tkbool.}
proc addCurve*(this: var TopOpeBRepDS_DataStructure; s: TopOpeBRepDS_Curve): cint {.
    cdecl, importcpp: "AddCurve", dynlib: tkbool.}
proc removeCurve*(this: var TopOpeBRepDS_DataStructure; i: cint) {.cdecl,
    importcpp: "RemoveCurve", dynlib: tkbool.}
proc keepCurve*(this: TopOpeBRepDS_DataStructure; i: cint): bool {.noSideEffect, cdecl,
    importcpp: "KeepCurve", dynlib: tkbool.}
proc keepCurve*(this: TopOpeBRepDS_DataStructure; c: TopOpeBRepDS_Curve): bool {.
    noSideEffect, cdecl, importcpp: "KeepCurve", dynlib: tkbool.}
proc changeKeepCurve*(this: var TopOpeBRepDS_DataStructure; i: cint; findKeep: bool) {.
    cdecl, importcpp: "ChangeKeepCurve", dynlib: tkbool.}
proc changeKeepCurve*(this: var TopOpeBRepDS_DataStructure;
                     c: var TopOpeBRepDS_Curve; findKeep: bool) {.cdecl,
    importcpp: "ChangeKeepCurve", dynlib: tkbool.}
proc addPoint*(this: var TopOpeBRepDS_DataStructure; pds: TopOpeBRepDS_Point): cint {.
    cdecl, importcpp: "AddPoint", dynlib: tkbool.}
proc addPointSS*(this: var TopOpeBRepDS_DataStructure; pds: TopOpeBRepDS_Point;
                s1: TopoDS_Shape; s2: TopoDS_Shape): cint {.cdecl,
    importcpp: "AddPointSS", dynlib: tkbool.}
proc removePoint*(this: var TopOpeBRepDS_DataStructure; i: cint) {.cdecl,
    importcpp: "RemovePoint", dynlib: tkbool.}
proc keepPoint*(this: TopOpeBRepDS_DataStructure; i: cint): bool {.noSideEffect, cdecl,
    importcpp: "KeepPoint", dynlib: tkbool.}
proc keepPoint*(this: TopOpeBRepDS_DataStructure; p: TopOpeBRepDS_Point): bool {.
    noSideEffect, cdecl, importcpp: "KeepPoint", dynlib: tkbool.}
proc changeKeepPoint*(this: var TopOpeBRepDS_DataStructure; i: cint; findKeep: bool) {.
    cdecl, importcpp: "ChangeKeepPoint", dynlib: tkbool.}
proc changeKeepPoint*(this: var TopOpeBRepDS_DataStructure;
                     p: var TopOpeBRepDS_Point; findKeep: bool) {.cdecl,
    importcpp: "ChangeKeepPoint", dynlib: tkbool.}
proc addShape*(this: var TopOpeBRepDS_DataStructure; s: TopoDS_Shape): cint {.cdecl,
    importcpp: "AddShape", dynlib: tkbool.}
proc addShape*(this: var TopOpeBRepDS_DataStructure; s: TopoDS_Shape; i: cint): cint {.
    cdecl, importcpp: "AddShape", dynlib: tkbool.}
proc keepShape*(this: TopOpeBRepDS_DataStructure; i: cint; findKeep: bool = true): bool {.
    noSideEffect, cdecl, importcpp: "KeepShape", dynlib: tkbool.}
proc keepShape*(this: TopOpeBRepDS_DataStructure; s: TopoDS_Shape;
               findKeep: bool = true): bool {.noSideEffect, cdecl,
    importcpp: "KeepShape", dynlib: tkbool.}
proc changeKeepShape*(this: var TopOpeBRepDS_DataStructure; i: cint; findKeep: bool) {.
    cdecl, importcpp: "ChangeKeepShape", dynlib: tkbool.}
proc changeKeepShape*(this: var TopOpeBRepDS_DataStructure; s: TopoDS_Shape;
                     findKeep: bool) {.cdecl, importcpp: "ChangeKeepShape",
                                     dynlib: tkbool.}
proc initSectionEdges*(this: var TopOpeBRepDS_DataStructure) {.cdecl,
    importcpp: "InitSectionEdges", dynlib: tkbool.}
proc addSectionEdge*(this: var TopOpeBRepDS_DataStructure; e: TopoDS_Edge): cint {.
    cdecl, importcpp: "AddSectionEdge", dynlib: tkbool.}
proc surfaceInterferences*(this: TopOpeBRepDS_DataStructure; i: cint): TopOpeBRepDS_ListOfInterference {.
    noSideEffect, cdecl, importcpp: "SurfaceInterferences", dynlib: tkbool.}
proc changeSurfaceInterferences*(this: var TopOpeBRepDS_DataStructure; i: cint): var TopOpeBRepDS_ListOfInterference {.
    cdecl, importcpp: "ChangeSurfaceInterferences", dynlib: tkbool.}
proc curveInterferences*(this: TopOpeBRepDS_DataStructure; i: cint): TopOpeBRepDS_ListOfInterference {.
    noSideEffect, cdecl, importcpp: "CurveInterferences", dynlib: tkbool.}
proc changeCurveInterferences*(this: var TopOpeBRepDS_DataStructure; i: cint): var TopOpeBRepDS_ListOfInterference {.
    cdecl, importcpp: "ChangeCurveInterferences", dynlib: tkbool.}
proc pointInterferences*(this: TopOpeBRepDS_DataStructure; i: cint): TopOpeBRepDS_ListOfInterference {.
    noSideEffect, cdecl, importcpp: "PointInterferences", dynlib: tkbool.}
proc changePointInterferences*(this: var TopOpeBRepDS_DataStructure; i: cint): var TopOpeBRepDS_ListOfInterference {.
    cdecl, importcpp: "ChangePointInterferences", dynlib: tkbool.}
proc shapeInterferences*(this: TopOpeBRepDS_DataStructure; s: TopoDS_Shape;
                        findKeep: bool = true): TopOpeBRepDS_ListOfInterference {.
    noSideEffect, cdecl, importcpp: "ShapeInterferences", dynlib: tkbool.}
proc changeShapeInterferences*(this: var TopOpeBRepDS_DataStructure; s: TopoDS_Shape): var TopOpeBRepDS_ListOfInterference {.
    cdecl, importcpp: "ChangeShapeInterferences", dynlib: tkbool.}
proc shapeInterferences*(this: TopOpeBRepDS_DataStructure; i: cint;
                        findKeep: bool = true): TopOpeBRepDS_ListOfInterference {.
    noSideEffect, cdecl, importcpp: "ShapeInterferences", dynlib: tkbool.}
proc changeShapeInterferences*(this: var TopOpeBRepDS_DataStructure; i: cint): var TopOpeBRepDS_ListOfInterference {.
    cdecl, importcpp: "ChangeShapeInterferences", dynlib: tkbool.}
proc shapeSameDomain*(this: TopOpeBRepDS_DataStructure; s: TopoDS_Shape): TopToolsListOfShape {.
    noSideEffect, cdecl, importcpp: "ShapeSameDomain", dynlib: tkbool.}
proc changeShapeSameDomain*(this: var TopOpeBRepDS_DataStructure; s: TopoDS_Shape): var TopToolsListOfShape {.
    cdecl, importcpp: "ChangeShapeSameDomain", dynlib: tkbool.}
proc shapeSameDomain*(this: TopOpeBRepDS_DataStructure; i: cint): TopToolsListOfShape {.
    noSideEffect, cdecl, importcpp: "ShapeSameDomain", dynlib: tkbool.}
proc changeShapeSameDomain*(this: var TopOpeBRepDS_DataStructure; i: cint): var TopToolsListOfShape {.
    cdecl, importcpp: "ChangeShapeSameDomain", dynlib: tkbool.}
proc changeShapes*(this: var TopOpeBRepDS_DataStructure): var TopOpeBRepDS_MapOfShapeData {.
    cdecl, importcpp: "ChangeShapes", dynlib: tkbool.}
proc addShapeSameDomain*(this: var TopOpeBRepDS_DataStructure; s: TopoDS_Shape;
                        ssd: TopoDS_Shape) {.cdecl,
    importcpp: "AddShapeSameDomain", dynlib: tkbool.}
proc removeShapeSameDomain*(this: var TopOpeBRepDS_DataStructure; s: TopoDS_Shape;
                           ssd: TopoDS_Shape) {.cdecl,
    importcpp: "RemoveShapeSameDomain", dynlib: tkbool.}
proc sameDomainRef*(this: TopOpeBRepDS_DataStructure; i: cint): cint {.noSideEffect,
    cdecl, importcpp: "SameDomainRef", dynlib: tkbool.}
proc sameDomainRef*(this: TopOpeBRepDS_DataStructure; s: TopoDS_Shape): cint {.
    noSideEffect, cdecl, importcpp: "SameDomainRef", dynlib: tkbool.}
proc sameDomainRef*(this: var TopOpeBRepDS_DataStructure; i: cint; `ref`: cint) {.cdecl,
    importcpp: "SameDomainRef", dynlib: tkbool.}
proc sameDomainRef*(this: var TopOpeBRepDS_DataStructure; s: TopoDS_Shape; `ref`: cint) {.
    cdecl, importcpp: "SameDomainRef", dynlib: tkbool.}
proc sameDomainOri*(this: TopOpeBRepDS_DataStructure; i: cint): TopOpeBRepDS_Config {.
    noSideEffect, cdecl, importcpp: "SameDomainOri", dynlib: tkbool.}
proc sameDomainOri*(this: TopOpeBRepDS_DataStructure; s: TopoDS_Shape): TopOpeBRepDS_Config {.
    noSideEffect, cdecl, importcpp: "SameDomainOri", dynlib: tkbool.}
proc sameDomainOri*(this: var TopOpeBRepDS_DataStructure; i: cint;
                   ori: TopOpeBRepDS_Config) {.cdecl, importcpp: "SameDomainOri",
    dynlib: tkbool.}
proc sameDomainOri*(this: var TopOpeBRepDS_DataStructure; s: TopoDS_Shape;
                   ori: TopOpeBRepDS_Config) {.cdecl, importcpp: "SameDomainOri",
    dynlib: tkbool.}
proc sameDomainInd*(this: TopOpeBRepDS_DataStructure; i: cint): cint {.noSideEffect,
    cdecl, importcpp: "SameDomainInd", dynlib: tkbool.}
proc sameDomainInd*(this: TopOpeBRepDS_DataStructure; s: TopoDS_Shape): cint {.
    noSideEffect, cdecl, importcpp: "SameDomainInd", dynlib: tkbool.}
proc sameDomainInd*(this: var TopOpeBRepDS_DataStructure; i: cint; ind: cint) {.cdecl,
    importcpp: "SameDomainInd", dynlib: tkbool.}
proc sameDomainInd*(this: var TopOpeBRepDS_DataStructure; s: TopoDS_Shape; ind: cint) {.
    cdecl, importcpp: "SameDomainInd", dynlib: tkbool.}
proc ancestorRank*(this: TopOpeBRepDS_DataStructure; i: cint): cint {.noSideEffect,
    cdecl, importcpp: "AncestorRank", dynlib: tkbool.}
proc ancestorRank*(this: TopOpeBRepDS_DataStructure; s: TopoDS_Shape): cint {.
    noSideEffect, cdecl, importcpp: "AncestorRank", dynlib: tkbool.}
proc ancestorRank*(this: var TopOpeBRepDS_DataStructure; i: cint; ianc: cint) {.cdecl,
    importcpp: "AncestorRank", dynlib: tkbool.}
proc ancestorRank*(this: var TopOpeBRepDS_DataStructure; s: TopoDS_Shape; ianc: cint) {.
    cdecl, importcpp: "AncestorRank", dynlib: tkbool.}
proc addShapeInterference*(this: var TopOpeBRepDS_DataStructure; s: TopoDS_Shape;
                          i: Handle[TopOpeBRepDS_Interference]) {.cdecl,
    importcpp: "AddShapeInterference", dynlib: tkbool.}
proc removeShapeInterference*(this: var TopOpeBRepDS_DataStructure; s: TopoDS_Shape;
                             i: Handle[TopOpeBRepDS_Interference]) {.cdecl,
    importcpp: "RemoveShapeInterference", dynlib: tkbool.}
proc fillShapesSameDomain*(this: var TopOpeBRepDS_DataStructure; s1: TopoDS_Shape;
                          s2: TopoDS_Shape; refFirst: bool = true) {.cdecl,
    importcpp: "FillShapesSameDomain", dynlib: tkbool.}
proc fillShapesSameDomain*(this: var TopOpeBRepDS_DataStructure; s1: TopoDS_Shape;
                          s2: TopoDS_Shape; c1: TopOpeBRepDS_Config;
                          c2: TopOpeBRepDS_Config; refFirst: bool = true) {.cdecl,
    importcpp: "FillShapesSameDomain", dynlib: tkbool.}
proc unfillShapesSameDomain*(this: var TopOpeBRepDS_DataStructure; s1: TopoDS_Shape;
                            s2: TopoDS_Shape) {.cdecl,
    importcpp: "UnfillShapesSameDomain", dynlib: tkbool.}
proc nbSurfaces*(this: TopOpeBRepDS_DataStructure): cint {.noSideEffect, cdecl,
    importcpp: "NbSurfaces", dynlib: tkbool.}
proc nbCurves*(this: TopOpeBRepDS_DataStructure): cint {.noSideEffect, cdecl,
    importcpp: "NbCurves", dynlib: tkbool.}
proc changeNbCurves*(this: var TopOpeBRepDS_DataStructure; n: cint) {.cdecl,
    importcpp: "ChangeNbCurves", dynlib: tkbool.}
proc nbPoints*(this: TopOpeBRepDS_DataStructure): cint {.noSideEffect, cdecl,
    importcpp: "NbPoints", dynlib: tkbool.}
proc nbShapes*(this: TopOpeBRepDS_DataStructure): cint {.noSideEffect, cdecl,
    importcpp: "NbShapes", dynlib: tkbool.}
proc nbSectionEdges*(this: TopOpeBRepDS_DataStructure): cint {.noSideEffect, cdecl,
    importcpp: "NbSectionEdges", dynlib: tkbool.}
proc surface*(this: TopOpeBRepDS_DataStructure; i: cint): TopOpeBRepDS_Surface {.
    noSideEffect, cdecl, importcpp: "Surface", dynlib: tkbool.}
proc changeSurface*(this: var TopOpeBRepDS_DataStructure; i: cint): var TopOpeBRepDS_Surface {.
    cdecl, importcpp: "ChangeSurface", dynlib: tkbool.}
proc curve*(this: TopOpeBRepDS_DataStructure; i: cint): TopOpeBRepDS_Curve {.
    noSideEffect, cdecl, importcpp: "Curve", dynlib: tkbool.}
proc changeCurve*(this: var TopOpeBRepDS_DataStructure; i: cint): var TopOpeBRepDS_Curve {.
    cdecl, importcpp: "ChangeCurve", dynlib: tkbool.}
proc point*(this: TopOpeBRepDS_DataStructure; i: cint): TopOpeBRepDS_Point {.
    noSideEffect, cdecl, importcpp: "Point", dynlib: tkbool.}
proc changePoint*(this: var TopOpeBRepDS_DataStructure; i: cint): var TopOpeBRepDS_Point {.
    cdecl, importcpp: "ChangePoint", dynlib: tkbool.}
proc shape*(this: TopOpeBRepDS_DataStructure; i: cint; findKeep: bool = true): TopoDS_Shape {.
    noSideEffect, cdecl, importcpp: "Shape", dynlib: tkbool.}
proc shape*(this: TopOpeBRepDS_DataStructure; s: TopoDS_Shape; findKeep: bool = true): cint {.
    noSideEffect, cdecl, importcpp: "Shape", dynlib: tkbool.}
proc sectionEdge*(this: TopOpeBRepDS_DataStructure; i: cint; findKeep: bool = true): TopoDS_Edge {.
    noSideEffect, cdecl, importcpp: "SectionEdge", dynlib: tkbool.}
proc sectionEdge*(this: TopOpeBRepDS_DataStructure; e: TopoDS_Edge;
                 findKeep: bool = true): cint {.noSideEffect, cdecl,
    importcpp: "SectionEdge", dynlib: tkbool.}
proc isSectionEdge*(this: TopOpeBRepDS_DataStructure; e: TopoDS_Edge;
                   findKeep: bool = true): bool {.noSideEffect, cdecl,
    importcpp: "IsSectionEdge", dynlib: tkbool.}
proc hasGeometry*(this: TopOpeBRepDS_DataStructure; s: TopoDS_Shape): bool {.
    noSideEffect, cdecl, importcpp: "HasGeometry", dynlib: tkbool.}
proc hasShape*(this: TopOpeBRepDS_DataStructure; s: TopoDS_Shape;
              findKeep: bool = true): bool {.noSideEffect, cdecl,
                                        importcpp: "HasShape", dynlib: tkbool.}
proc setNewSurface*(this: var TopOpeBRepDS_DataStructure; f: TopoDS_Shape;
                   s: Handle[GeomSurface]) {.cdecl, importcpp: "SetNewSurface",
    dynlib: tkbool.}
proc hasNewSurface*(this: TopOpeBRepDS_DataStructure; f: TopoDS_Shape): bool {.
    noSideEffect, cdecl, importcpp: "HasNewSurface", dynlib: tkbool.}
proc newSurface*(this: TopOpeBRepDS_DataStructure; f: TopoDS_Shape): Handle[
    GeomSurface] {.noSideEffect, cdecl, importcpp: "NewSurface", dynlib: tkbool.}
proc isfafa*(this: var TopOpeBRepDS_DataStructure; isfafa: bool) {.cdecl,
    importcpp: "Isfafa", dynlib: tkbool.}
proc isfafa*(this: TopOpeBRepDS_DataStructure): bool {.noSideEffect, cdecl,
    importcpp: "Isfafa", dynlib: tkbool.}
proc changeMapOfShapeWithStateObj*(this: var TopOpeBRepDS_DataStructure): var TopOpeBRepDS_IndexedDataMapOfShapeWithState {.
    cdecl, importcpp: "ChangeMapOfShapeWithStateObj", dynlib: tkbool.}
proc changeMapOfShapeWithStateTool*(this: var TopOpeBRepDS_DataStructure): var TopOpeBRepDS_IndexedDataMapOfShapeWithState {.
    cdecl, importcpp: "ChangeMapOfShapeWithStateTool", dynlib: tkbool.}
proc changeMapOfShapeWithState*(this: var TopOpeBRepDS_DataStructure;
                               aShape: TopoDS_Shape; aFlag: var bool): var TopOpeBRepDS_IndexedDataMapOfShapeWithState {.
    cdecl, importcpp: "ChangeMapOfShapeWithState", dynlib: tkbool.}
proc getShapeWithState*(this: TopOpeBRepDS_DataStructure; aShape: TopoDS_Shape): TopOpeBRepDS_ShapeWithState {.
    noSideEffect, cdecl, importcpp: "GetShapeWithState", dynlib: tkbool.}
proc changeMapOfRejectedShapesObj*(this: var TopOpeBRepDS_DataStructure): var TopToolsIndexedMapOfShape {.
    cdecl, importcpp: "ChangeMapOfRejectedShapesObj", dynlib: tkbool.}
proc changeMapOfRejectedShapesTool*(this: var TopOpeBRepDS_DataStructure): var TopToolsIndexedMapOfShape {.
    cdecl, importcpp: "ChangeMapOfRejectedShapesTool", dynlib: tkbool.}