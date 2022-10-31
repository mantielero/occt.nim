import topopebrepds_types
import ../../tkernel/standard/standard_types
import ../../tkbrep/toptools/toptools_types
import ../../tkbrep/topods/topods_types
import ../../tkg3d/geom/geom_types





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



proc newTopOpeBRepDS_DataStructure*(): TopOpeBRepDS_DataStructure {.cdecl,
    constructor, importcpp: "TopOpeBRepDS_DataStructure(@)", header: "TopOpeBRepDS_DataStructure.hxx".}
proc init*(this: var TopOpeBRepDS_DataStructure) {.cdecl, importcpp: "Init",
    header: "TopOpeBRepDS_DataStructure.hxx".}
proc addSurface*(this: var TopOpeBRepDS_DataStructure; s: TopOpeBRepDS_Surface): cint {.
    cdecl, importcpp: "AddSurface", header: "TopOpeBRepDS_DataStructure.hxx".}
proc removeSurface*(this: var TopOpeBRepDS_DataStructure; i: cint) {.cdecl,
    importcpp: "RemoveSurface", header: "TopOpeBRepDS_DataStructure.hxx".}
proc keepSurface*(this: TopOpeBRepDS_DataStructure; i: cint): bool {.noSideEffect,
    cdecl, importcpp: "KeepSurface", header: "TopOpeBRepDS_DataStructure.hxx".}
proc keepSurface*(this: TopOpeBRepDS_DataStructure; s: var TopOpeBRepDS_Surface): bool {.
    noSideEffect, cdecl, importcpp: "KeepSurface", header: "TopOpeBRepDS_DataStructure.hxx".}
proc changeKeepSurface*(this: var TopOpeBRepDS_DataStructure; i: cint; findKeep: bool) {.
    cdecl, importcpp: "ChangeKeepSurface", header: "TopOpeBRepDS_DataStructure.hxx".}
proc changeKeepSurface*(this: var TopOpeBRepDS_DataStructure;
                       s: var TopOpeBRepDS_Surface; findKeep: bool) {.cdecl,
    importcpp: "ChangeKeepSurface", header: "TopOpeBRepDS_DataStructure.hxx".}
proc addCurve*(this: var TopOpeBRepDS_DataStructure; s: TopOpeBRepDS_Curve): cint {.
    cdecl, importcpp: "AddCurve", header: "TopOpeBRepDS_DataStructure.hxx".}
proc removeCurve*(this: var TopOpeBRepDS_DataStructure; i: cint) {.cdecl,
    importcpp: "RemoveCurve", header: "TopOpeBRepDS_DataStructure.hxx".}
proc keepCurve*(this: TopOpeBRepDS_DataStructure; i: cint): bool {.noSideEffect, cdecl,
    importcpp: "KeepCurve", header: "TopOpeBRepDS_DataStructure.hxx".}
proc keepCurve*(this: TopOpeBRepDS_DataStructure; c: TopOpeBRepDS_Curve): bool {.
    noSideEffect, cdecl, importcpp: "KeepCurve", header: "TopOpeBRepDS_DataStructure.hxx".}
proc changeKeepCurve*(this: var TopOpeBRepDS_DataStructure; i: cint; findKeep: bool) {.
    cdecl, importcpp: "ChangeKeepCurve", header: "TopOpeBRepDS_DataStructure.hxx".}
proc changeKeepCurve*(this: var TopOpeBRepDS_DataStructure;
                     c: var TopOpeBRepDS_Curve; findKeep: bool) {.cdecl,
    importcpp: "ChangeKeepCurve", header: "TopOpeBRepDS_DataStructure.hxx".}
proc addPoint*(this: var TopOpeBRepDS_DataStructure; pds: TopOpeBRepDS_Point): cint {.
    cdecl, importcpp: "AddPoint", header: "TopOpeBRepDS_DataStructure.hxx".}
proc addPointSS*(this: var TopOpeBRepDS_DataStructure; pds: TopOpeBRepDS_Point;
                s1: TopoDS_Shape; s2: TopoDS_Shape): cint {.cdecl,
    importcpp: "AddPointSS", header: "TopOpeBRepDS_DataStructure.hxx".}
proc removePoint*(this: var TopOpeBRepDS_DataStructure; i: cint) {.cdecl,
    importcpp: "RemovePoint", header: "TopOpeBRepDS_DataStructure.hxx".}
proc keepPoint*(this: TopOpeBRepDS_DataStructure; i: cint): bool {.noSideEffect, cdecl,
    importcpp: "KeepPoint", header: "TopOpeBRepDS_DataStructure.hxx".}
proc keepPoint*(this: TopOpeBRepDS_DataStructure; p: TopOpeBRepDS_Point): bool {.
    noSideEffect, cdecl, importcpp: "KeepPoint", header: "TopOpeBRepDS_DataStructure.hxx".}
proc changeKeepPoint*(this: var TopOpeBRepDS_DataStructure; i: cint; findKeep: bool) {.
    cdecl, importcpp: "ChangeKeepPoint", header: "TopOpeBRepDS_DataStructure.hxx".}
proc changeKeepPoint*(this: var TopOpeBRepDS_DataStructure;
                     p: var TopOpeBRepDS_Point; findKeep: bool) {.cdecl,
    importcpp: "ChangeKeepPoint", header: "TopOpeBRepDS_DataStructure.hxx".}
proc addShape*(this: var TopOpeBRepDS_DataStructure; s: TopoDS_Shape): cint {.cdecl,
    importcpp: "AddShape", header: "TopOpeBRepDS_DataStructure.hxx".}
proc addShape*(this: var TopOpeBRepDS_DataStructure; s: TopoDS_Shape; i: cint): cint {.
    cdecl, importcpp: "AddShape", header: "TopOpeBRepDS_DataStructure.hxx".}
proc keepShape*(this: TopOpeBRepDS_DataStructure; i: cint; findKeep: bool = true): bool {.
    noSideEffect, cdecl, importcpp: "KeepShape", header: "TopOpeBRepDS_DataStructure.hxx".}
proc keepShape*(this: TopOpeBRepDS_DataStructure; s: TopoDS_Shape;
               findKeep: bool = true): bool {.noSideEffect, cdecl,
    importcpp: "KeepShape", header: "TopOpeBRepDS_DataStructure.hxx".}
proc changeKeepShape*(this: var TopOpeBRepDS_DataStructure; i: cint; findKeep: bool) {.
    cdecl, importcpp: "ChangeKeepShape", header: "TopOpeBRepDS_DataStructure.hxx".}
proc changeKeepShape*(this: var TopOpeBRepDS_DataStructure; s: TopoDS_Shape;
                     findKeep: bool) {.cdecl, importcpp: "ChangeKeepShape",
                                     header: "TopOpeBRepDS_DataStructure.hxx".}
proc initSectionEdges*(this: var TopOpeBRepDS_DataStructure) {.cdecl,
    importcpp: "InitSectionEdges", header: "TopOpeBRepDS_DataStructure.hxx".}
proc addSectionEdge*(this: var TopOpeBRepDS_DataStructure; e: TopoDS_Edge): cint {.
    cdecl, importcpp: "AddSectionEdge", header: "TopOpeBRepDS_DataStructure.hxx".}
proc surfaceInterferences*(this: TopOpeBRepDS_DataStructure; i: cint): TopOpeBRepDS_ListOfInterference {.
    noSideEffect, cdecl, importcpp: "SurfaceInterferences", header: "TopOpeBRepDS_DataStructure.hxx".}
proc changeSurfaceInterferences*(this: var TopOpeBRepDS_DataStructure; i: cint): var TopOpeBRepDS_ListOfInterference {.
    cdecl, importcpp: "ChangeSurfaceInterferences", header: "TopOpeBRepDS_DataStructure.hxx".}
proc curveInterferences*(this: TopOpeBRepDS_DataStructure; i: cint): TopOpeBRepDS_ListOfInterference {.
    noSideEffect, cdecl, importcpp: "CurveInterferences", header: "TopOpeBRepDS_DataStructure.hxx".}
proc changeCurveInterferences*(this: var TopOpeBRepDS_DataStructure; i: cint): var TopOpeBRepDS_ListOfInterference {.
    cdecl, importcpp: "ChangeCurveInterferences", header: "TopOpeBRepDS_DataStructure.hxx".}
proc pointInterferences*(this: TopOpeBRepDS_DataStructure; i: cint): TopOpeBRepDS_ListOfInterference {.
    noSideEffect, cdecl, importcpp: "PointInterferences", header: "TopOpeBRepDS_DataStructure.hxx".}
proc changePointInterferences*(this: var TopOpeBRepDS_DataStructure; i: cint): var TopOpeBRepDS_ListOfInterference {.
    cdecl, importcpp: "ChangePointInterferences", header: "TopOpeBRepDS_DataStructure.hxx".}
proc shapeInterferences*(this: TopOpeBRepDS_DataStructure; s: TopoDS_Shape;
                        findKeep: bool = true): TopOpeBRepDS_ListOfInterference {.
    noSideEffect, cdecl, importcpp: "ShapeInterferences", header: "TopOpeBRepDS_DataStructure.hxx".}
proc changeShapeInterferences*(this: var TopOpeBRepDS_DataStructure; s: TopoDS_Shape): var TopOpeBRepDS_ListOfInterference {.
    cdecl, importcpp: "ChangeShapeInterferences", header: "TopOpeBRepDS_DataStructure.hxx".}
proc shapeInterferences*(this: TopOpeBRepDS_DataStructure; i: cint;
                        findKeep: bool = true): TopOpeBRepDS_ListOfInterference {.
    noSideEffect, cdecl, importcpp: "ShapeInterferences", header: "TopOpeBRepDS_DataStructure.hxx".}
proc changeShapeInterferences*(this: var TopOpeBRepDS_DataStructure; i: cint): var TopOpeBRepDS_ListOfInterference {.
    cdecl, importcpp: "ChangeShapeInterferences", header: "TopOpeBRepDS_DataStructure.hxx".}
proc shapeSameDomain*(this: TopOpeBRepDS_DataStructure; s: TopoDS_Shape): TopToolsListOfShape {.
    noSideEffect, cdecl, importcpp: "ShapeSameDomain", header: "TopOpeBRepDS_DataStructure.hxx".}
proc changeShapeSameDomain*(this: var TopOpeBRepDS_DataStructure; s: TopoDS_Shape): var TopToolsListOfShape {.
    cdecl, importcpp: "ChangeShapeSameDomain", header: "TopOpeBRepDS_DataStructure.hxx".}
proc shapeSameDomain*(this: TopOpeBRepDS_DataStructure; i: cint): TopToolsListOfShape {.
    noSideEffect, cdecl, importcpp: "ShapeSameDomain", header: "TopOpeBRepDS_DataStructure.hxx".}
proc changeShapeSameDomain*(this: var TopOpeBRepDS_DataStructure; i: cint): var TopToolsListOfShape {.
    cdecl, importcpp: "ChangeShapeSameDomain", header: "TopOpeBRepDS_DataStructure.hxx".}
proc changeShapes*(this: var TopOpeBRepDS_DataStructure): var TopOpeBRepDS_MapOfShapeData {.
    cdecl, importcpp: "ChangeShapes", header: "TopOpeBRepDS_DataStructure.hxx".}
proc addShapeSameDomain*(this: var TopOpeBRepDS_DataStructure; s: TopoDS_Shape;
                        ssd: TopoDS_Shape) {.cdecl,
    importcpp: "AddShapeSameDomain", header: "TopOpeBRepDS_DataStructure.hxx".}
proc removeShapeSameDomain*(this: var TopOpeBRepDS_DataStructure; s: TopoDS_Shape;
                           ssd: TopoDS_Shape) {.cdecl,
    importcpp: "RemoveShapeSameDomain", header: "TopOpeBRepDS_DataStructure.hxx".}
proc sameDomainRef*(this: TopOpeBRepDS_DataStructure; i: cint): cint {.noSideEffect,
    cdecl, importcpp: "SameDomainRef", header: "TopOpeBRepDS_DataStructure.hxx".}
proc sameDomainRef*(this: TopOpeBRepDS_DataStructure; s: TopoDS_Shape): cint {.
    noSideEffect, cdecl, importcpp: "SameDomainRef", header: "TopOpeBRepDS_DataStructure.hxx".}
proc sameDomainRef*(this: var TopOpeBRepDS_DataStructure; i: cint; `ref`: cint) {.cdecl,
    importcpp: "SameDomainRef", header: "TopOpeBRepDS_DataStructure.hxx".}
proc sameDomainRef*(this: var TopOpeBRepDS_DataStructure; s: TopoDS_Shape; `ref`: cint) {.
    cdecl, importcpp: "SameDomainRef", header: "TopOpeBRepDS_DataStructure.hxx".}
proc sameDomainOri*(this: TopOpeBRepDS_DataStructure; i: cint): TopOpeBRepDS_Config {.
    noSideEffect, cdecl, importcpp: "SameDomainOri", header: "TopOpeBRepDS_DataStructure.hxx".}
proc sameDomainOri*(this: TopOpeBRepDS_DataStructure; s: TopoDS_Shape): TopOpeBRepDS_Config {.
    noSideEffect, cdecl, importcpp: "SameDomainOri", header: "TopOpeBRepDS_DataStructure.hxx".}
proc sameDomainOri*(this: var TopOpeBRepDS_DataStructure; i: cint;
                   ori: TopOpeBRepDS_Config) {.cdecl, importcpp: "SameDomainOri",
    header: "TopOpeBRepDS_DataStructure.hxx".}
proc sameDomainOri*(this: var TopOpeBRepDS_DataStructure; s: TopoDS_Shape;
                   ori: TopOpeBRepDS_Config) {.cdecl, importcpp: "SameDomainOri",
    header: "TopOpeBRepDS_DataStructure.hxx".}
proc sameDomainInd*(this: TopOpeBRepDS_DataStructure; i: cint): cint {.noSideEffect,
    cdecl, importcpp: "SameDomainInd", header: "TopOpeBRepDS_DataStructure.hxx".}
proc sameDomainInd*(this: TopOpeBRepDS_DataStructure; s: TopoDS_Shape): cint {.
    noSideEffect, cdecl, importcpp: "SameDomainInd", header: "TopOpeBRepDS_DataStructure.hxx".}
proc sameDomainInd*(this: var TopOpeBRepDS_DataStructure; i: cint; ind: cint) {.cdecl,
    importcpp: "SameDomainInd", header: "TopOpeBRepDS_DataStructure.hxx".}
proc sameDomainInd*(this: var TopOpeBRepDS_DataStructure; s: TopoDS_Shape; ind: cint) {.
    cdecl, importcpp: "SameDomainInd", header: "TopOpeBRepDS_DataStructure.hxx".}
proc ancestorRank*(this: TopOpeBRepDS_DataStructure; i: cint): cint {.noSideEffect,
    cdecl, importcpp: "AncestorRank", header: "TopOpeBRepDS_DataStructure.hxx".}
proc ancestorRank*(this: TopOpeBRepDS_DataStructure; s: TopoDS_Shape): cint {.
    noSideEffect, cdecl, importcpp: "AncestorRank", header: "TopOpeBRepDS_DataStructure.hxx".}
proc ancestorRank*(this: var TopOpeBRepDS_DataStructure; i: cint; ianc: cint) {.cdecl,
    importcpp: "AncestorRank", header: "TopOpeBRepDS_DataStructure.hxx".}
proc ancestorRank*(this: var TopOpeBRepDS_DataStructure; s: TopoDS_Shape; ianc: cint) {.
    cdecl, importcpp: "AncestorRank", header: "TopOpeBRepDS_DataStructure.hxx".}
proc addShapeInterference*(this: var TopOpeBRepDS_DataStructure; s: TopoDS_Shape;
                          i: Handle[TopOpeBRepDS_Interference]) {.cdecl,
    importcpp: "AddShapeInterference", header: "TopOpeBRepDS_DataStructure.hxx".}
proc removeShapeInterference*(this: var TopOpeBRepDS_DataStructure; s: TopoDS_Shape;
                             i: Handle[TopOpeBRepDS_Interference]) {.cdecl,
    importcpp: "RemoveShapeInterference", header: "TopOpeBRepDS_DataStructure.hxx".}
proc fillShapesSameDomain*(this: var TopOpeBRepDS_DataStructure; s1: TopoDS_Shape;
                          s2: TopoDS_Shape; refFirst: bool = true) {.cdecl,
    importcpp: "FillShapesSameDomain", header: "TopOpeBRepDS_DataStructure.hxx".}
proc fillShapesSameDomain*(this: var TopOpeBRepDS_DataStructure; s1: TopoDS_Shape;
                          s2: TopoDS_Shape; c1: TopOpeBRepDS_Config;
                          c2: TopOpeBRepDS_Config; refFirst: bool = true) {.cdecl,
    importcpp: "FillShapesSameDomain", header: "TopOpeBRepDS_DataStructure.hxx".}
proc unfillShapesSameDomain*(this: var TopOpeBRepDS_DataStructure; s1: TopoDS_Shape;
                            s2: TopoDS_Shape) {.cdecl,
    importcpp: "UnfillShapesSameDomain", header: "TopOpeBRepDS_DataStructure.hxx".}
proc nbSurfaces*(this: TopOpeBRepDS_DataStructure): cint {.noSideEffect, cdecl,
    importcpp: "NbSurfaces", header: "TopOpeBRepDS_DataStructure.hxx".}
proc nbCurves*(this: TopOpeBRepDS_DataStructure): cint {.noSideEffect, cdecl,
    importcpp: "NbCurves", header: "TopOpeBRepDS_DataStructure.hxx".}
proc changeNbCurves*(this: var TopOpeBRepDS_DataStructure; n: cint) {.cdecl,
    importcpp: "ChangeNbCurves", header: "TopOpeBRepDS_DataStructure.hxx".}
proc nbPoints*(this: TopOpeBRepDS_DataStructure): cint {.noSideEffect, cdecl,
    importcpp: "NbPoints", header: "TopOpeBRepDS_DataStructure.hxx".}
proc nbShapes*(this: TopOpeBRepDS_DataStructure): cint {.noSideEffect, cdecl,
    importcpp: "NbShapes", header: "TopOpeBRepDS_DataStructure.hxx".}
proc nbSectionEdges*(this: TopOpeBRepDS_DataStructure): cint {.noSideEffect, cdecl,
    importcpp: "NbSectionEdges", header: "TopOpeBRepDS_DataStructure.hxx".}
proc surface*(this: TopOpeBRepDS_DataStructure; i: cint): TopOpeBRepDS_Surface {.
    noSideEffect, cdecl, importcpp: "Surface", header: "TopOpeBRepDS_DataStructure.hxx".}
proc changeSurface*(this: var TopOpeBRepDS_DataStructure; i: cint): var TopOpeBRepDS_Surface {.
    cdecl, importcpp: "ChangeSurface", header: "TopOpeBRepDS_DataStructure.hxx".}
proc curve*(this: TopOpeBRepDS_DataStructure; i: cint): TopOpeBRepDS_Curve {.
    noSideEffect, cdecl, importcpp: "Curve", header: "TopOpeBRepDS_DataStructure.hxx".}
proc changeCurve*(this: var TopOpeBRepDS_DataStructure; i: cint): var TopOpeBRepDS_Curve {.
    cdecl, importcpp: "ChangeCurve", header: "TopOpeBRepDS_DataStructure.hxx".}
proc point*(this: TopOpeBRepDS_DataStructure; i: cint): TopOpeBRepDS_Point {.
    noSideEffect, cdecl, importcpp: "Point", header: "TopOpeBRepDS_DataStructure.hxx".}
proc changePoint*(this: var TopOpeBRepDS_DataStructure; i: cint): var TopOpeBRepDS_Point {.
    cdecl, importcpp: "ChangePoint", header: "TopOpeBRepDS_DataStructure.hxx".}
proc shape*(this: TopOpeBRepDS_DataStructure; i: cint; findKeep: bool = true): TopoDS_Shape {.
    noSideEffect, cdecl, importcpp: "Shape", header: "TopOpeBRepDS_DataStructure.hxx".}
proc shape*(this: TopOpeBRepDS_DataStructure; s: TopoDS_Shape; findKeep: bool = true): cint {.
    noSideEffect, cdecl, importcpp: "Shape", header: "TopOpeBRepDS_DataStructure.hxx".}
proc sectionEdge*(this: TopOpeBRepDS_DataStructure; i: cint; findKeep: bool = true): TopoDS_Edge {.
    noSideEffect, cdecl, importcpp: "SectionEdge", header: "TopOpeBRepDS_DataStructure.hxx".}
proc sectionEdge*(this: TopOpeBRepDS_DataStructure; e: TopoDS_Edge;
                 findKeep: bool = true): cint {.noSideEffect, cdecl,
    importcpp: "SectionEdge", header: "TopOpeBRepDS_DataStructure.hxx".}
proc isSectionEdge*(this: TopOpeBRepDS_DataStructure; e: TopoDS_Edge;
                   findKeep: bool = true): bool {.noSideEffect, cdecl,
    importcpp: "IsSectionEdge", header: "TopOpeBRepDS_DataStructure.hxx".}
proc hasGeometry*(this: TopOpeBRepDS_DataStructure; s: TopoDS_Shape): bool {.
    noSideEffect, cdecl, importcpp: "HasGeometry", header: "TopOpeBRepDS_DataStructure.hxx".}
proc hasShape*(this: TopOpeBRepDS_DataStructure; s: TopoDS_Shape;
              findKeep: bool = true): bool {.noSideEffect, cdecl,
                                        importcpp: "HasShape", header: "TopOpeBRepDS_DataStructure.hxx".}
proc setNewSurface*(this: var TopOpeBRepDS_DataStructure; f: TopoDS_Shape;
                   s: Handle[GeomSurface]) {.cdecl, importcpp: "SetNewSurface",
    header: "TopOpeBRepDS_DataStructure.hxx".}
proc hasNewSurface*(this: TopOpeBRepDS_DataStructure; f: TopoDS_Shape): bool {.
    noSideEffect, cdecl, importcpp: "HasNewSurface", header: "TopOpeBRepDS_DataStructure.hxx".}
proc newSurface*(this: TopOpeBRepDS_DataStructure; f: TopoDS_Shape): Handle[
    GeomSurface] {.noSideEffect, cdecl, importcpp: "NewSurface", header: "TopOpeBRepDS_DataStructure.hxx".}
proc isfafa*(this: var TopOpeBRepDS_DataStructure; isfafa: bool) {.cdecl,
    importcpp: "Isfafa", header: "TopOpeBRepDS_DataStructure.hxx".}
proc isfafa*(this: TopOpeBRepDS_DataStructure): bool {.noSideEffect, cdecl,
    importcpp: "Isfafa", header: "TopOpeBRepDS_DataStructure.hxx".}
proc changeMapOfShapeWithStateObj*(this: var TopOpeBRepDS_DataStructure): var TopOpeBRepDS_IndexedDataMapOfShapeWithState {.
    cdecl, importcpp: "ChangeMapOfShapeWithStateObj", header: "TopOpeBRepDS_DataStructure.hxx".}
proc changeMapOfShapeWithStateTool*(this: var TopOpeBRepDS_DataStructure): var TopOpeBRepDS_IndexedDataMapOfShapeWithState {.
    cdecl, importcpp: "ChangeMapOfShapeWithStateTool", header: "TopOpeBRepDS_DataStructure.hxx".}
proc changeMapOfShapeWithState*(this: var TopOpeBRepDS_DataStructure;
                               aShape: TopoDS_Shape; aFlag: var bool): var TopOpeBRepDS_IndexedDataMapOfShapeWithState {.
    cdecl, importcpp: "ChangeMapOfShapeWithState", header: "TopOpeBRepDS_DataStructure.hxx".}
proc getShapeWithState*(this: TopOpeBRepDS_DataStructure; aShape: TopoDS_Shape): TopOpeBRepDS_ShapeWithState {.
    noSideEffect, cdecl, importcpp: "GetShapeWithState", header: "TopOpeBRepDS_DataStructure.hxx".}
proc changeMapOfRejectedShapesObj*(this: var TopOpeBRepDS_DataStructure): var TopToolsIndexedMapOfShape {.
    cdecl, importcpp: "ChangeMapOfRejectedShapesObj", header: "TopOpeBRepDS_DataStructure.hxx".}
proc changeMapOfRejectedShapesTool*(this: var TopOpeBRepDS_DataStructure): var TopToolsIndexedMapOfShape {.
    cdecl, importcpp: "ChangeMapOfRejectedShapesTool", header: "TopOpeBRepDS_DataStructure.hxx".}


