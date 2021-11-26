##  Created on: 1993-06-17
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

discard "forward decl of TopoDS_Shape"
discard "forward decl of TopOpeBRepDS_DataStructure"
discard "forward decl of TopOpeBRepDS_Surface"
discard "forward decl of TopOpeBRepDS_CurveIterator"
discard "forward decl of TopOpeBRepDS_Curve"
discard "forward decl of TopOpeBRepDS_PointIterator"
discard "forward decl of TopOpeBRepDS_Point"
discard "forward decl of TopOpeBRepDS_SurfaceIterator"
discard "forward decl of TopOpeBRepDS_Interference"
discard "forward decl of TopOpeBRepDS_HDataStructure"
type
  HandleTopOpeBRepDS_HDataStructure* = Handle[TopOpeBRepDS_HDataStructure]
  TopOpeBRepDS_HDataStructure* {.importcpp: "TopOpeBRepDS_HDataStructure",
                                header: "TopOpeBRepDS_HDataStructure.hxx", bycopy.} = object of StandardTransient


proc newTopOpeBRepDS_HDataStructure*(): TopOpeBRepDS_HDataStructure {.cdecl,
    constructor, importcpp: "TopOpeBRepDS_HDataStructure(@)", dynlib: tkbool.}
proc addAncestors*(this: var TopOpeBRepDS_HDataStructure; s: TopoDS_Shape) {.cdecl,
    importcpp: "AddAncestors", dynlib: tkbool.}
proc addAncestors*(this: var TopOpeBRepDS_HDataStructure; s: TopoDS_Shape;
                  t1: TopAbsShapeEnum; t2: TopAbsShapeEnum) {.cdecl,
    importcpp: "AddAncestors", dynlib: tkbool.}
proc chkIntg*(this: var TopOpeBRepDS_HDataStructure) {.cdecl, importcpp: "ChkIntg",
    dynlib: tkbool.}
proc ds*(this: TopOpeBRepDS_HDataStructure): TopOpeBRepDS_DataStructure {.
    noSideEffect, cdecl, importcpp: "DS", dynlib: tkbool.}
proc changeDS*(this: var TopOpeBRepDS_HDataStructure): var TopOpeBRepDS_DataStructure {.
    cdecl, importcpp: "ChangeDS", dynlib: tkbool.}
proc nbSurfaces*(this: TopOpeBRepDS_HDataStructure): cint {.noSideEffect, cdecl,
    importcpp: "NbSurfaces", dynlib: tkbool.}
proc nbCurves*(this: TopOpeBRepDS_HDataStructure): cint {.noSideEffect, cdecl,
    importcpp: "NbCurves", dynlib: tkbool.}
proc nbPoints*(this: TopOpeBRepDS_HDataStructure): cint {.noSideEffect, cdecl,
    importcpp: "NbPoints", dynlib: tkbool.}
proc surface*(this: TopOpeBRepDS_HDataStructure; i: cint): TopOpeBRepDS_Surface {.
    noSideEffect, cdecl, importcpp: "Surface", dynlib: tkbool.}
proc surfaceCurves*(this: TopOpeBRepDS_HDataStructure; i: cint): TopOpeBRepDS_CurveIterator {.
    noSideEffect, cdecl, importcpp: "SurfaceCurves", dynlib: tkbool.}
proc curve*(this: TopOpeBRepDS_HDataStructure; i: cint): TopOpeBRepDS_Curve {.
    noSideEffect, cdecl, importcpp: "Curve", dynlib: tkbool.}
proc changeCurve*(this: var TopOpeBRepDS_HDataStructure; i: cint): var TopOpeBRepDS_Curve {.
    cdecl, importcpp: "ChangeCurve", dynlib: tkbool.}
proc curvePoints*(this: TopOpeBRepDS_HDataStructure; i: cint): TopOpeBRepDS_PointIterator {.
    noSideEffect, cdecl, importcpp: "CurvePoints", dynlib: tkbool.}
proc point*(this: TopOpeBRepDS_HDataStructure; i: cint): TopOpeBRepDS_Point {.
    noSideEffect, cdecl, importcpp: "Point", dynlib: tkbool.}
proc nbShapes*(this: TopOpeBRepDS_HDataStructure): cint {.noSideEffect, cdecl,
    importcpp: "NbShapes", dynlib: tkbool.}
proc shape*(this: TopOpeBRepDS_HDataStructure; i: cint; findKeep: bool = true): TopoDS_Shape {.
    noSideEffect, cdecl, importcpp: "Shape", dynlib: tkbool.}
proc shape*(this: TopOpeBRepDS_HDataStructure; s: TopoDS_Shape; findKeep: bool = true): cint {.
    noSideEffect, cdecl, importcpp: "Shape", dynlib: tkbool.}
proc hasGeometry*(this: TopOpeBRepDS_HDataStructure; s: TopoDS_Shape): bool {.
    noSideEffect, cdecl, importcpp: "HasGeometry", dynlib: tkbool.}
proc hasShape*(this: TopOpeBRepDS_HDataStructure; s: TopoDS_Shape;
              findKeep: bool = true): bool {.noSideEffect, cdecl,
                                        importcpp: "HasShape", dynlib: tkbool.}
proc hasSameDomain*(this: TopOpeBRepDS_HDataStructure; s: TopoDS_Shape;
                   findKeep: bool = true): bool {.noSideEffect, cdecl,
    importcpp: "HasSameDomain", dynlib: tkbool.}
proc sameDomain*(this: TopOpeBRepDS_HDataStructure; s: TopoDS_Shape): TopToolsListIteratorOfListOfShape {.
    noSideEffect, cdecl, importcpp: "SameDomain", dynlib: tkbool.}
proc sameDomainOrientation*(this: TopOpeBRepDS_HDataStructure; s: TopoDS_Shape): TopOpeBRepDS_Config {.
    noSideEffect, cdecl, importcpp: "SameDomainOrientation", dynlib: tkbool.}
proc sameDomainReference*(this: TopOpeBRepDS_HDataStructure; s: TopoDS_Shape): cint {.
    noSideEffect, cdecl, importcpp: "SameDomainReference", dynlib: tkbool.}
proc solidSurfaces*(this: TopOpeBRepDS_HDataStructure; s: TopoDS_Shape): TopOpeBRepDS_SurfaceIterator {.
    noSideEffect, cdecl, importcpp: "SolidSurfaces", dynlib: tkbool.}
proc solidSurfaces*(this: TopOpeBRepDS_HDataStructure; i: cint): TopOpeBRepDS_SurfaceIterator {.
    noSideEffect, cdecl, importcpp: "SolidSurfaces", dynlib: tkbool.}
proc faceCurves*(this: TopOpeBRepDS_HDataStructure; f: TopoDS_Shape): TopOpeBRepDS_CurveIterator {.
    noSideEffect, cdecl, importcpp: "FaceCurves", dynlib: tkbool.}
proc faceCurves*(this: TopOpeBRepDS_HDataStructure; i: cint): TopOpeBRepDS_CurveIterator {.
    noSideEffect, cdecl, importcpp: "FaceCurves", dynlib: tkbool.}
proc edgePoints*(this: TopOpeBRepDS_HDataStructure; e: TopoDS_Shape): TopOpeBRepDS_PointIterator {.
    noSideEffect, cdecl, importcpp: "EdgePoints", dynlib: tkbool.}
proc makeCurve*(this: var TopOpeBRepDS_HDataStructure; c1: TopOpeBRepDS_Curve;
               c2: var TopOpeBRepDS_Curve): cint {.cdecl, importcpp: "MakeCurve",
    dynlib: tkbool.}
proc removeCurve*(this: var TopOpeBRepDS_HDataStructure; iC: cint) {.cdecl,
    importcpp: "RemoveCurve", dynlib: tkbool.}
proc nbGeometry*(this: TopOpeBRepDS_HDataStructure; k: TopOpeBRepDS_Kind): cint {.
    noSideEffect, cdecl, importcpp: "NbGeometry", dynlib: tkbool.}
proc nbTopology*(this: TopOpeBRepDS_HDataStructure; k: TopOpeBRepDS_Kind): cint {.
    noSideEffect, cdecl, importcpp: "NbTopology", dynlib: tkbool.}
proc nbTopology*(this: TopOpeBRepDS_HDataStructure): cint {.noSideEffect, cdecl,
    importcpp: "NbTopology", dynlib: tkbool.}
proc edgesSameParameter*(this: TopOpeBRepDS_HDataStructure): bool {.noSideEffect,
    cdecl, importcpp: "EdgesSameParameter", dynlib: tkbool.}
proc sortOnParameter*(this: TopOpeBRepDS_HDataStructure;
                     l1: TopOpeBRepDS_ListOfInterference;
                     l2: var TopOpeBRepDS_ListOfInterference) {.noSideEffect, cdecl,
    importcpp: "SortOnParameter", dynlib: tkbool.}
proc sortOnParameter*(this: TopOpeBRepDS_HDataStructure;
                     L: var TopOpeBRepDS_ListOfInterference) {.noSideEffect, cdecl,
    importcpp: "SortOnParameter", dynlib: tkbool.}
proc minMaxOnParameter*(this: TopOpeBRepDS_HDataStructure;
                       L: TopOpeBRepDS_ListOfInterference; min: var cfloat;
                       max: var cfloat) {.noSideEffect, cdecl,
                                       importcpp: "MinMaxOnParameter",
                                       dynlib: tkbool.}
proc scanInterfList*(this: TopOpeBRepDS_HDataStructure;
                    it: var TopOpeBRepDS_ListIteratorOfListOfInterference;
                    pds: TopOpeBRepDS_Point): bool {.noSideEffect, cdecl,
    importcpp: "ScanInterfList", dynlib: tkbool.}
proc getGeometry*(this: TopOpeBRepDS_HDataStructure;
                 it: var TopOpeBRepDS_ListIteratorOfListOfInterference;
                 pds: TopOpeBRepDS_Point; g: var cint; k: var TopOpeBRepDS_Kind): bool {.
    noSideEffect, cdecl, importcpp: "GetGeometry", dynlib: tkbool.}
proc storeInterference*(this: var TopOpeBRepDS_HDataStructure;
                       i: Handle[TopOpeBRepDS_Interference];
                       li: var TopOpeBRepDS_ListOfInterference;
                       str: TCollectionAsciiString = newTCollectionAsciiString("")) {.cdecl,
    importcpp: "StoreInterference", dynlib: tkbool.}
proc storeInterference*(this: var TopOpeBRepDS_HDataStructure;
                       i: Handle[TopOpeBRepDS_Interference]; s: TopoDS_Shape;
                       str: TCollectionAsciiString = newTCollectionAsciiString("")) {.cdecl,
    importcpp: "StoreInterference", dynlib: tkbool.}
proc storeInterference*(this: var TopOpeBRepDS_HDataStructure;
                       i: Handle[TopOpeBRepDS_Interference]; `is`: cint;
                       str: TCollectionAsciiString = newTCollectionAsciiString("")) {.cdecl,
    importcpp: "StoreInterference", dynlib: tkbool.}
proc storeInterferences*(this: var TopOpeBRepDS_HDataStructure;
                        li: TopOpeBRepDS_ListOfInterference; s: TopoDS_Shape;
                        str: TCollectionAsciiString = newTCollectionAsciiString("")) {.cdecl,
    importcpp: "StoreInterferences", dynlib: tkbool.}
proc storeInterferences*(this: var TopOpeBRepDS_HDataStructure;
                        li: TopOpeBRepDS_ListOfInterference; `is`: cint;
                        str: TCollectionAsciiString = newTCollectionAsciiString("")) {.cdecl,
    importcpp: "StoreInterferences", dynlib: tkbool.}
proc clearStoreInterferences*(this: var TopOpeBRepDS_HDataStructure;
                             li: TopOpeBRepDS_ListOfInterference; s: TopoDS_Shape;
                             str: TCollectionAsciiString = newTCollectionAsciiString("")) {.cdecl,
    importcpp: "ClearStoreInterferences", dynlib: tkbool.}
proc clearStoreInterferences*(this: var TopOpeBRepDS_HDataStructure;
                             li: TopOpeBRepDS_ListOfInterference; `is`: cint;
                             str: TCollectionAsciiString = newTCollectionAsciiString("")) {.cdecl,
    importcpp: "ClearStoreInterferences", dynlib: tkbool.}