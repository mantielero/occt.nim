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


proc constructTopOpeBRepDS_DataStructure*(): TopOpeBRepDS_DataStructure {.
    constructor, importcpp: "TopOpeBRepDS_DataStructure(@)",
    header: "TopOpeBRepDS_DataStructure.hxx".}
proc init*(this: var TopOpeBRepDS_DataStructure) {.importcpp: "Init",
    header: "TopOpeBRepDS_DataStructure.hxx".}
proc addSurface*(this: var TopOpeBRepDS_DataStructure; s: TopOpeBRepDS_Surface): cint {.
    importcpp: "AddSurface", header: "TopOpeBRepDS_DataStructure.hxx".}
proc removeSurface*(this: var TopOpeBRepDS_DataStructure; i: cint) {.
    importcpp: "RemoveSurface", header: "TopOpeBRepDS_DataStructure.hxx".}
proc keepSurface*(this: TopOpeBRepDS_DataStructure; i: cint): bool {.noSideEffect,
    importcpp: "KeepSurface", header: "TopOpeBRepDS_DataStructure.hxx".}
proc keepSurface*(this: TopOpeBRepDS_DataStructure; s: var TopOpeBRepDS_Surface): bool {.
    noSideEffect, importcpp: "KeepSurface",
    header: "TopOpeBRepDS_DataStructure.hxx".}
proc changeKeepSurface*(this: var TopOpeBRepDS_DataStructure; i: cint; findKeep: bool) {.
    importcpp: "ChangeKeepSurface", header: "TopOpeBRepDS_DataStructure.hxx".}
proc changeKeepSurface*(this: var TopOpeBRepDS_DataStructure;
                       s: var TopOpeBRepDS_Surface; findKeep: bool) {.
    importcpp: "ChangeKeepSurface", header: "TopOpeBRepDS_DataStructure.hxx".}
proc addCurve*(this: var TopOpeBRepDS_DataStructure; s: TopOpeBRepDS_Curve): cint {.
    importcpp: "AddCurve", header: "TopOpeBRepDS_DataStructure.hxx".}
proc removeCurve*(this: var TopOpeBRepDS_DataStructure; i: cint) {.
    importcpp: "RemoveCurve", header: "TopOpeBRepDS_DataStructure.hxx".}
proc keepCurve*(this: TopOpeBRepDS_DataStructure; i: cint): bool {.noSideEffect,
    importcpp: "KeepCurve", header: "TopOpeBRepDS_DataStructure.hxx".}
proc keepCurve*(this: TopOpeBRepDS_DataStructure; c: TopOpeBRepDS_Curve): bool {.
    noSideEffect, importcpp: "KeepCurve", header: "TopOpeBRepDS_DataStructure.hxx".}
proc changeKeepCurve*(this: var TopOpeBRepDS_DataStructure; i: cint; findKeep: bool) {.
    importcpp: "ChangeKeepCurve", header: "TopOpeBRepDS_DataStructure.hxx".}
proc changeKeepCurve*(this: var TopOpeBRepDS_DataStructure;
                     c: var TopOpeBRepDS_Curve; findKeep: bool) {.
    importcpp: "ChangeKeepCurve", header: "TopOpeBRepDS_DataStructure.hxx".}
proc addPoint*(this: var TopOpeBRepDS_DataStructure; pds: TopOpeBRepDS_Point): cint {.
    importcpp: "AddPoint", header: "TopOpeBRepDS_DataStructure.hxx".}
proc addPointSS*(this: var TopOpeBRepDS_DataStructure; pds: TopOpeBRepDS_Point;
                s1: TopoDS_Shape; s2: TopoDS_Shape): cint {.importcpp: "AddPointSS",
    header: "TopOpeBRepDS_DataStructure.hxx".}
proc removePoint*(this: var TopOpeBRepDS_DataStructure; i: cint) {.
    importcpp: "RemovePoint", header: "TopOpeBRepDS_DataStructure.hxx".}
proc keepPoint*(this: TopOpeBRepDS_DataStructure; i: cint): bool {.noSideEffect,
    importcpp: "KeepPoint", header: "TopOpeBRepDS_DataStructure.hxx".}
proc keepPoint*(this: TopOpeBRepDS_DataStructure; p: TopOpeBRepDS_Point): bool {.
    noSideEffect, importcpp: "KeepPoint", header: "TopOpeBRepDS_DataStructure.hxx".}
proc changeKeepPoint*(this: var TopOpeBRepDS_DataStructure; i: cint; findKeep: bool) {.
    importcpp: "ChangeKeepPoint", header: "TopOpeBRepDS_DataStructure.hxx".}
proc changeKeepPoint*(this: var TopOpeBRepDS_DataStructure;
                     p: var TopOpeBRepDS_Point; findKeep: bool) {.
    importcpp: "ChangeKeepPoint", header: "TopOpeBRepDS_DataStructure.hxx".}
proc addShape*(this: var TopOpeBRepDS_DataStructure; s: TopoDS_Shape): cint {.
    importcpp: "AddShape", header: "TopOpeBRepDS_DataStructure.hxx".}
proc addShape*(this: var TopOpeBRepDS_DataStructure; s: TopoDS_Shape; i: cint): cint {.
    importcpp: "AddShape", header: "TopOpeBRepDS_DataStructure.hxx".}
proc keepShape*(this: TopOpeBRepDS_DataStructure; i: cint; findKeep: bool = true): bool {.
    noSideEffect, importcpp: "KeepShape", header: "TopOpeBRepDS_DataStructure.hxx".}
proc keepShape*(this: TopOpeBRepDS_DataStructure; s: TopoDS_Shape;
               findKeep: bool = true): bool {.noSideEffect, importcpp: "KeepShape",
    header: "TopOpeBRepDS_DataStructure.hxx".}
proc changeKeepShape*(this: var TopOpeBRepDS_DataStructure; i: cint; findKeep: bool) {.
    importcpp: "ChangeKeepShape", header: "TopOpeBRepDS_DataStructure.hxx".}
proc changeKeepShape*(this: var TopOpeBRepDS_DataStructure; s: TopoDS_Shape;
                     findKeep: bool) {.importcpp: "ChangeKeepShape",
                                     header: "TopOpeBRepDS_DataStructure.hxx".}
proc initSectionEdges*(this: var TopOpeBRepDS_DataStructure) {.
    importcpp: "InitSectionEdges", header: "TopOpeBRepDS_DataStructure.hxx".}
proc addSectionEdge*(this: var TopOpeBRepDS_DataStructure; e: TopoDS_Edge): cint {.
    importcpp: "AddSectionEdge", header: "TopOpeBRepDS_DataStructure.hxx".}
proc surfaceInterferences*(this: TopOpeBRepDS_DataStructure; i: cint): TopOpeBRepDS_ListOfInterference {.
    noSideEffect, importcpp: "SurfaceInterferences",
    header: "TopOpeBRepDS_DataStructure.hxx".}
proc changeSurfaceInterferences*(this: var TopOpeBRepDS_DataStructure; i: cint): var TopOpeBRepDS_ListOfInterference {.
    importcpp: "ChangeSurfaceInterferences",
    header: "TopOpeBRepDS_DataStructure.hxx".}
proc curveInterferences*(this: TopOpeBRepDS_DataStructure; i: cint): TopOpeBRepDS_ListOfInterference {.
    noSideEffect, importcpp: "CurveInterferences",
    header: "TopOpeBRepDS_DataStructure.hxx".}
proc changeCurveInterferences*(this: var TopOpeBRepDS_DataStructure; i: cint): var TopOpeBRepDS_ListOfInterference {.
    importcpp: "ChangeCurveInterferences",
    header: "TopOpeBRepDS_DataStructure.hxx".}
proc pointInterferences*(this: TopOpeBRepDS_DataStructure; i: cint): TopOpeBRepDS_ListOfInterference {.
    noSideEffect, importcpp: "PointInterferences",
    header: "TopOpeBRepDS_DataStructure.hxx".}
proc changePointInterferences*(this: var TopOpeBRepDS_DataStructure; i: cint): var TopOpeBRepDS_ListOfInterference {.
    importcpp: "ChangePointInterferences",
    header: "TopOpeBRepDS_DataStructure.hxx".}
proc shapeInterferences*(this: TopOpeBRepDS_DataStructure; s: TopoDS_Shape;
                        findKeep: bool = true): TopOpeBRepDS_ListOfInterference {.
    noSideEffect, importcpp: "ShapeInterferences",
    header: "TopOpeBRepDS_DataStructure.hxx".}
proc changeShapeInterferences*(this: var TopOpeBRepDS_DataStructure; s: TopoDS_Shape): var TopOpeBRepDS_ListOfInterference {.
    importcpp: "ChangeShapeInterferences",
    header: "TopOpeBRepDS_DataStructure.hxx".}
proc shapeInterferences*(this: TopOpeBRepDS_DataStructure; i: cint;
                        findKeep: bool = true): TopOpeBRepDS_ListOfInterference {.
    noSideEffect, importcpp: "ShapeInterferences",
    header: "TopOpeBRepDS_DataStructure.hxx".}
proc changeShapeInterferences*(this: var TopOpeBRepDS_DataStructure; i: cint): var TopOpeBRepDS_ListOfInterference {.
    importcpp: "ChangeShapeInterferences",
    header: "TopOpeBRepDS_DataStructure.hxx".}
proc shapeSameDomain*(this: TopOpeBRepDS_DataStructure; s: TopoDS_Shape): TopToolsListOfShape {.
    noSideEffect, importcpp: "ShapeSameDomain",
    header: "TopOpeBRepDS_DataStructure.hxx".}
proc changeShapeSameDomain*(this: var TopOpeBRepDS_DataStructure; s: TopoDS_Shape): var TopToolsListOfShape {.
    importcpp: "ChangeShapeSameDomain", header: "TopOpeBRepDS_DataStructure.hxx".}
proc shapeSameDomain*(this: TopOpeBRepDS_DataStructure; i: cint): TopToolsListOfShape {.
    noSideEffect, importcpp: "ShapeSameDomain",
    header: "TopOpeBRepDS_DataStructure.hxx".}
proc changeShapeSameDomain*(this: var TopOpeBRepDS_DataStructure; i: cint): var TopToolsListOfShape {.
    importcpp: "ChangeShapeSameDomain", header: "TopOpeBRepDS_DataStructure.hxx".}
proc changeShapes*(this: var TopOpeBRepDS_DataStructure): var TopOpeBRepDS_MapOfShapeData {.
    importcpp: "ChangeShapes", header: "TopOpeBRepDS_DataStructure.hxx".}
proc addShapeSameDomain*(this: var TopOpeBRepDS_DataStructure; s: TopoDS_Shape;
                        ssd: TopoDS_Shape) {.importcpp: "AddShapeSameDomain",
    header: "TopOpeBRepDS_DataStructure.hxx".}
proc removeShapeSameDomain*(this: var TopOpeBRepDS_DataStructure; s: TopoDS_Shape;
                           ssd: TopoDS_Shape) {.
    importcpp: "RemoveShapeSameDomain", header: "TopOpeBRepDS_DataStructure.hxx".}
proc sameDomainRef*(this: TopOpeBRepDS_DataStructure; i: cint): cint {.noSideEffect,
    importcpp: "SameDomainRef", header: "TopOpeBRepDS_DataStructure.hxx".}
proc sameDomainRef*(this: TopOpeBRepDS_DataStructure; s: TopoDS_Shape): cint {.
    noSideEffect, importcpp: "SameDomainRef",
    header: "TopOpeBRepDS_DataStructure.hxx".}
proc sameDomainRef*(this: var TopOpeBRepDS_DataStructure; i: cint; `ref`: cint) {.
    importcpp: "SameDomainRef", header: "TopOpeBRepDS_DataStructure.hxx".}
proc sameDomainRef*(this: var TopOpeBRepDS_DataStructure; s: TopoDS_Shape; `ref`: cint) {.
    importcpp: "SameDomainRef", header: "TopOpeBRepDS_DataStructure.hxx".}
proc sameDomainOri*(this: TopOpeBRepDS_DataStructure; i: cint): TopOpeBRepDS_Config {.
    noSideEffect, importcpp: "SameDomainOri",
    header: "TopOpeBRepDS_DataStructure.hxx".}
proc sameDomainOri*(this: TopOpeBRepDS_DataStructure; s: TopoDS_Shape): TopOpeBRepDS_Config {.
    noSideEffect, importcpp: "SameDomainOri",
    header: "TopOpeBRepDS_DataStructure.hxx".}
proc sameDomainOri*(this: var TopOpeBRepDS_DataStructure; i: cint;
                   ori: TopOpeBRepDS_Config) {.importcpp: "SameDomainOri",
    header: "TopOpeBRepDS_DataStructure.hxx".}
proc sameDomainOri*(this: var TopOpeBRepDS_DataStructure; s: TopoDS_Shape;
                   ori: TopOpeBRepDS_Config) {.importcpp: "SameDomainOri",
    header: "TopOpeBRepDS_DataStructure.hxx".}
proc sameDomainInd*(this: TopOpeBRepDS_DataStructure; i: cint): cint {.noSideEffect,
    importcpp: "SameDomainInd", header: "TopOpeBRepDS_DataStructure.hxx".}
proc sameDomainInd*(this: TopOpeBRepDS_DataStructure; s: TopoDS_Shape): cint {.
    noSideEffect, importcpp: "SameDomainInd",
    header: "TopOpeBRepDS_DataStructure.hxx".}
proc sameDomainInd*(this: var TopOpeBRepDS_DataStructure; i: cint; ind: cint) {.
    importcpp: "SameDomainInd", header: "TopOpeBRepDS_DataStructure.hxx".}
proc sameDomainInd*(this: var TopOpeBRepDS_DataStructure; s: TopoDS_Shape; ind: cint) {.
    importcpp: "SameDomainInd", header: "TopOpeBRepDS_DataStructure.hxx".}
proc ancestorRank*(this: TopOpeBRepDS_DataStructure; i: cint): cint {.noSideEffect,
    importcpp: "AncestorRank", header: "TopOpeBRepDS_DataStructure.hxx".}
proc ancestorRank*(this: TopOpeBRepDS_DataStructure; s: TopoDS_Shape): cint {.
    noSideEffect, importcpp: "AncestorRank",
    header: "TopOpeBRepDS_DataStructure.hxx".}
proc ancestorRank*(this: var TopOpeBRepDS_DataStructure; i: cint; ianc: cint) {.
    importcpp: "AncestorRank", header: "TopOpeBRepDS_DataStructure.hxx".}
proc ancestorRank*(this: var TopOpeBRepDS_DataStructure; s: TopoDS_Shape; ianc: cint) {.
    importcpp: "AncestorRank", header: "TopOpeBRepDS_DataStructure.hxx".}
proc addShapeInterference*(this: var TopOpeBRepDS_DataStructure; s: TopoDS_Shape;
                          i: Handle[TopOpeBRepDS_Interference]) {.
    importcpp: "AddShapeInterference", header: "TopOpeBRepDS_DataStructure.hxx".}
proc removeShapeInterference*(this: var TopOpeBRepDS_DataStructure; s: TopoDS_Shape;
                             i: Handle[TopOpeBRepDS_Interference]) {.
    importcpp: "RemoveShapeInterference", header: "TopOpeBRepDS_DataStructure.hxx".}
proc fillShapesSameDomain*(this: var TopOpeBRepDS_DataStructure; s1: TopoDS_Shape;
                          s2: TopoDS_Shape; refFirst: bool = true) {.
    importcpp: "FillShapesSameDomain", header: "TopOpeBRepDS_DataStructure.hxx".}
proc fillShapesSameDomain*(this: var TopOpeBRepDS_DataStructure; s1: TopoDS_Shape;
                          s2: TopoDS_Shape; c1: TopOpeBRepDS_Config;
                          c2: TopOpeBRepDS_Config; refFirst: bool = true) {.
    importcpp: "FillShapesSameDomain", header: "TopOpeBRepDS_DataStructure.hxx".}
proc unfillShapesSameDomain*(this: var TopOpeBRepDS_DataStructure; s1: TopoDS_Shape;
                            s2: TopoDS_Shape) {.
    importcpp: "UnfillShapesSameDomain", header: "TopOpeBRepDS_DataStructure.hxx".}
proc nbSurfaces*(this: TopOpeBRepDS_DataStructure): cint {.noSideEffect,
    importcpp: "NbSurfaces", header: "TopOpeBRepDS_DataStructure.hxx".}
proc nbCurves*(this: TopOpeBRepDS_DataStructure): cint {.noSideEffect,
    importcpp: "NbCurves", header: "TopOpeBRepDS_DataStructure.hxx".}
proc changeNbCurves*(this: var TopOpeBRepDS_DataStructure; n: cint) {.
    importcpp: "ChangeNbCurves", header: "TopOpeBRepDS_DataStructure.hxx".}
proc nbPoints*(this: TopOpeBRepDS_DataStructure): cint {.noSideEffect,
    importcpp: "NbPoints", header: "TopOpeBRepDS_DataStructure.hxx".}
proc nbShapes*(this: TopOpeBRepDS_DataStructure): cint {.noSideEffect,
    importcpp: "NbShapes", header: "TopOpeBRepDS_DataStructure.hxx".}
proc nbSectionEdges*(this: TopOpeBRepDS_DataStructure): cint {.noSideEffect,
    importcpp: "NbSectionEdges", header: "TopOpeBRepDS_DataStructure.hxx".}
proc surface*(this: TopOpeBRepDS_DataStructure; i: cint): TopOpeBRepDS_Surface {.
    noSideEffect, importcpp: "Surface", header: "TopOpeBRepDS_DataStructure.hxx".}
proc changeSurface*(this: var TopOpeBRepDS_DataStructure; i: cint): var TopOpeBRepDS_Surface {.
    importcpp: "ChangeSurface", header: "TopOpeBRepDS_DataStructure.hxx".}
proc curve*(this: TopOpeBRepDS_DataStructure; i: cint): TopOpeBRepDS_Curve {.
    noSideEffect, importcpp: "Curve", header: "TopOpeBRepDS_DataStructure.hxx".}
proc changeCurve*(this: var TopOpeBRepDS_DataStructure; i: cint): var TopOpeBRepDS_Curve {.
    importcpp: "ChangeCurve", header: "TopOpeBRepDS_DataStructure.hxx".}
proc point*(this: TopOpeBRepDS_DataStructure; i: cint): TopOpeBRepDS_Point {.
    noSideEffect, importcpp: "Point", header: "TopOpeBRepDS_DataStructure.hxx".}
proc changePoint*(this: var TopOpeBRepDS_DataStructure; i: cint): var TopOpeBRepDS_Point {.
    importcpp: "ChangePoint", header: "TopOpeBRepDS_DataStructure.hxx".}
proc shape*(this: TopOpeBRepDS_DataStructure; i: cint; findKeep: bool = true): TopoDS_Shape {.
    noSideEffect, importcpp: "Shape", header: "TopOpeBRepDS_DataStructure.hxx".}
proc shape*(this: TopOpeBRepDS_DataStructure; s: TopoDS_Shape; findKeep: bool = true): cint {.
    noSideEffect, importcpp: "Shape", header: "TopOpeBRepDS_DataStructure.hxx".}
proc sectionEdge*(this: TopOpeBRepDS_DataStructure; i: cint; findKeep: bool = true): TopoDS_Edge {.
    noSideEffect, importcpp: "SectionEdge",
    header: "TopOpeBRepDS_DataStructure.hxx".}
proc sectionEdge*(this: TopOpeBRepDS_DataStructure; e: TopoDS_Edge;
                 findKeep: bool = true): cint {.noSideEffect,
    importcpp: "SectionEdge", header: "TopOpeBRepDS_DataStructure.hxx".}
proc isSectionEdge*(this: TopOpeBRepDS_DataStructure; e: TopoDS_Edge;
                   findKeep: bool = true): bool {.noSideEffect,
    importcpp: "IsSectionEdge", header: "TopOpeBRepDS_DataStructure.hxx".}
proc hasGeometry*(this: TopOpeBRepDS_DataStructure; s: TopoDS_Shape): bool {.
    noSideEffect, importcpp: "HasGeometry",
    header: "TopOpeBRepDS_DataStructure.hxx".}
proc hasShape*(this: TopOpeBRepDS_DataStructure; s: TopoDS_Shape;
              findKeep: bool = true): bool {.noSideEffect, importcpp: "HasShape", header: "TopOpeBRepDS_DataStructure.hxx".}
proc setNewSurface*(this: var TopOpeBRepDS_DataStructure; f: TopoDS_Shape;
                   s: Handle[GeomSurface]) {.importcpp: "SetNewSurface",
    header: "TopOpeBRepDS_DataStructure.hxx".}
proc hasNewSurface*(this: TopOpeBRepDS_DataStructure; f: TopoDS_Shape): bool {.
    noSideEffect, importcpp: "HasNewSurface",
    header: "TopOpeBRepDS_DataStructure.hxx".}
proc newSurface*(this: TopOpeBRepDS_DataStructure; f: TopoDS_Shape): Handle[
    GeomSurface] {.noSideEffect, importcpp: "NewSurface",
                  header: "TopOpeBRepDS_DataStructure.hxx".}
proc isfafa*(this: var TopOpeBRepDS_DataStructure; isfafa: bool) {.
    importcpp: "Isfafa", header: "TopOpeBRepDS_DataStructure.hxx".}
proc isfafa*(this: TopOpeBRepDS_DataStructure): bool {.noSideEffect,
    importcpp: "Isfafa", header: "TopOpeBRepDS_DataStructure.hxx".}
proc changeMapOfShapeWithStateObj*(this: var TopOpeBRepDS_DataStructure): var TopOpeBRepDS_IndexedDataMapOfShapeWithState {.
    importcpp: "ChangeMapOfShapeWithStateObj",
    header: "TopOpeBRepDS_DataStructure.hxx".}
proc changeMapOfShapeWithStateTool*(this: var TopOpeBRepDS_DataStructure): var TopOpeBRepDS_IndexedDataMapOfShapeWithState {.
    importcpp: "ChangeMapOfShapeWithStateTool",
    header: "TopOpeBRepDS_DataStructure.hxx".}
proc changeMapOfShapeWithState*(this: var TopOpeBRepDS_DataStructure;
                               aShape: TopoDS_Shape; aFlag: var bool): var TopOpeBRepDS_IndexedDataMapOfShapeWithState {.
    importcpp: "ChangeMapOfShapeWithState",
    header: "TopOpeBRepDS_DataStructure.hxx".}
proc getShapeWithState*(this: TopOpeBRepDS_DataStructure; aShape: TopoDS_Shape): TopOpeBRepDS_ShapeWithState {.
    noSideEffect, importcpp: "GetShapeWithState",
    header: "TopOpeBRepDS_DataStructure.hxx".}
proc changeMapOfRejectedShapesObj*(this: var TopOpeBRepDS_DataStructure): var TopToolsIndexedMapOfShape {.
    importcpp: "ChangeMapOfRejectedShapesObj",
    header: "TopOpeBRepDS_DataStructure.hxx".}
proc changeMapOfRejectedShapesTool*(this: var TopOpeBRepDS_DataStructure): var TopToolsIndexedMapOfShape {.
    importcpp: "ChangeMapOfRejectedShapesTool",
    header: "TopOpeBRepDS_DataStructure.hxx".}

























