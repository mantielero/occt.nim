import topopebrepds_types

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


proc newTopOpeBRepDS_HDataStructure*(): TopOpeBRepDS_HDataStructure {.cdecl,
    constructor, importcpp: "TopOpeBRepDS_HDataStructure(@)", header: "TopOpeBRepDS_HDataStructure.hxx".}
proc addAncestors*(this: var TopOpeBRepDS_HDataStructure; s: TopoDS_Shape) {.cdecl,
    importcpp: "AddAncestors", header: "TopOpeBRepDS_HDataStructure.hxx".}
proc addAncestors*(this: var TopOpeBRepDS_HDataStructure; s: TopoDS_Shape;
                  t1: TopAbsShapeEnum; t2: TopAbsShapeEnum) {.cdecl,
    importcpp: "AddAncestors", header: "TopOpeBRepDS_HDataStructure.hxx".}
proc chkIntg*(this: var TopOpeBRepDS_HDataStructure) {.cdecl, importcpp: "ChkIntg",
    header: "TopOpeBRepDS_HDataStructure.hxx".}
proc ds*(this: TopOpeBRepDS_HDataStructure): TopOpeBRepDS_DataStructure {.
    noSideEffect, cdecl, importcpp: "DS", header: "TopOpeBRepDS_HDataStructure.hxx".}
proc changeDS*(this: var TopOpeBRepDS_HDataStructure): var TopOpeBRepDS_DataStructure {.
    cdecl, importcpp: "ChangeDS", header: "TopOpeBRepDS_HDataStructure.hxx".}
proc nbSurfaces*(this: TopOpeBRepDS_HDataStructure): cint {.noSideEffect, cdecl,
    importcpp: "NbSurfaces", header: "TopOpeBRepDS_HDataStructure.hxx".}
proc nbCurves*(this: TopOpeBRepDS_HDataStructure): cint {.noSideEffect, cdecl,
    importcpp: "NbCurves", header: "TopOpeBRepDS_HDataStructure.hxx".}
proc nbPoints*(this: TopOpeBRepDS_HDataStructure): cint {.noSideEffect, cdecl,
    importcpp: "NbPoints", header: "TopOpeBRepDS_HDataStructure.hxx".}
proc surface*(this: TopOpeBRepDS_HDataStructure; i: cint): TopOpeBRepDS_Surface {.
    noSideEffect, cdecl, importcpp: "Surface", header: "TopOpeBRepDS_HDataStructure.hxx".}
proc surfaceCurves*(this: TopOpeBRepDS_HDataStructure; i: cint): TopOpeBRepDS_CurveIterator {.
    noSideEffect, cdecl, importcpp: "SurfaceCurves", header: "TopOpeBRepDS_HDataStructure.hxx".}
proc curve*(this: TopOpeBRepDS_HDataStructure; i: cint): TopOpeBRepDS_Curve {.
    noSideEffect, cdecl, importcpp: "Curve", header: "TopOpeBRepDS_HDataStructure.hxx".}
proc changeCurve*(this: var TopOpeBRepDS_HDataStructure; i: cint): var TopOpeBRepDS_Curve {.
    cdecl, importcpp: "ChangeCurve", header: "TopOpeBRepDS_HDataStructure.hxx".}
proc curvePoints*(this: TopOpeBRepDS_HDataStructure; i: cint): TopOpeBRepDS_PointIterator {.
    noSideEffect, cdecl, importcpp: "CurvePoints", header: "TopOpeBRepDS_HDataStructure.hxx".}
proc point*(this: TopOpeBRepDS_HDataStructure; i: cint): TopOpeBRepDS_Point {.
    noSideEffect, cdecl, importcpp: "Point", header: "TopOpeBRepDS_HDataStructure.hxx".}
proc nbShapes*(this: TopOpeBRepDS_HDataStructure): cint {.noSideEffect, cdecl,
    importcpp: "NbShapes", header: "TopOpeBRepDS_HDataStructure.hxx".}
proc shape*(this: TopOpeBRepDS_HDataStructure; i: cint; findKeep: bool = true): TopoDS_Shape {.
    noSideEffect, cdecl, importcpp: "Shape", header: "TopOpeBRepDS_HDataStructure.hxx".}
proc shape*(this: TopOpeBRepDS_HDataStructure; s: TopoDS_Shape; findKeep: bool = true): cint {.
    noSideEffect, cdecl, importcpp: "Shape", header: "TopOpeBRepDS_HDataStructure.hxx".}
proc hasGeometry*(this: TopOpeBRepDS_HDataStructure; s: TopoDS_Shape): bool {.
    noSideEffect, cdecl, importcpp: "HasGeometry", header: "TopOpeBRepDS_HDataStructure.hxx".}
proc hasShape*(this: TopOpeBRepDS_HDataStructure; s: TopoDS_Shape;
              findKeep: bool = true): bool {.noSideEffect, cdecl,
                                        importcpp: "HasShape", header: "TopOpeBRepDS_HDataStructure.hxx".}
proc hasSameDomain*(this: TopOpeBRepDS_HDataStructure; s: TopoDS_Shape;
                   findKeep: bool = true): bool {.noSideEffect, cdecl,
    importcpp: "HasSameDomain", header: "TopOpeBRepDS_HDataStructure.hxx".}
proc sameDomain*(this: TopOpeBRepDS_HDataStructure; s: TopoDS_Shape): TopToolsListIteratorOfListOfShape {.
    noSideEffect, cdecl, importcpp: "SameDomain", header: "TopOpeBRepDS_HDataStructure.hxx".}
proc sameDomainOrientation*(this: TopOpeBRepDS_HDataStructure; s: TopoDS_Shape): TopOpeBRepDS_Config {.
    noSideEffect, cdecl, importcpp: "SameDomainOrientation", header: "TopOpeBRepDS_HDataStructure.hxx".}
proc sameDomainReference*(this: TopOpeBRepDS_HDataStructure; s: TopoDS_Shape): cint {.
    noSideEffect, cdecl, importcpp: "SameDomainReference", header: "TopOpeBRepDS_HDataStructure.hxx".}
proc solidSurfaces*(this: TopOpeBRepDS_HDataStructure; s: TopoDS_Shape): TopOpeBRepDS_SurfaceIterator {.
    noSideEffect, cdecl, importcpp: "SolidSurfaces", header: "TopOpeBRepDS_HDataStructure.hxx".}
proc solidSurfaces*(this: TopOpeBRepDS_HDataStructure; i: cint): TopOpeBRepDS_SurfaceIterator {.
    noSideEffect, cdecl, importcpp: "SolidSurfaces", header: "TopOpeBRepDS_HDataStructure.hxx".}
proc faceCurves*(this: TopOpeBRepDS_HDataStructure; f: TopoDS_Shape): TopOpeBRepDS_CurveIterator {.
    noSideEffect, cdecl, importcpp: "FaceCurves", header: "TopOpeBRepDS_HDataStructure.hxx".}
proc faceCurves*(this: TopOpeBRepDS_HDataStructure; i: cint): TopOpeBRepDS_CurveIterator {.
    noSideEffect, cdecl, importcpp: "FaceCurves", header: "TopOpeBRepDS_HDataStructure.hxx".}
proc edgePoints*(this: TopOpeBRepDS_HDataStructure; e: TopoDS_Shape): TopOpeBRepDS_PointIterator {.
    noSideEffect, cdecl, importcpp: "EdgePoints", header: "TopOpeBRepDS_HDataStructure.hxx".}
proc makeCurve*(this: var TopOpeBRepDS_HDataStructure; c1: TopOpeBRepDS_Curve;
               c2: var TopOpeBRepDS_Curve): cint {.cdecl, importcpp: "MakeCurve",
    header: "TopOpeBRepDS_HDataStructure.hxx".}
proc removeCurve*(this: var TopOpeBRepDS_HDataStructure; iC: cint) {.cdecl,
    importcpp: "RemoveCurve", header: "TopOpeBRepDS_HDataStructure.hxx".}
proc nbGeometry*(this: TopOpeBRepDS_HDataStructure; k: TopOpeBRepDS_Kind): cint {.
    noSideEffect, cdecl, importcpp: "NbGeometry", header: "TopOpeBRepDS_HDataStructure.hxx".}
proc nbTopology*(this: TopOpeBRepDS_HDataStructure; k: TopOpeBRepDS_Kind): cint {.
    noSideEffect, cdecl, importcpp: "NbTopology", header: "TopOpeBRepDS_HDataStructure.hxx".}
proc nbTopology*(this: TopOpeBRepDS_HDataStructure): cint {.noSideEffect, cdecl,
    importcpp: "NbTopology", header: "TopOpeBRepDS_HDataStructure.hxx".}
proc edgesSameParameter*(this: TopOpeBRepDS_HDataStructure): bool {.noSideEffect,
    cdecl, importcpp: "EdgesSameParameter", header: "TopOpeBRepDS_HDataStructure.hxx".}
proc sortOnParameter*(this: TopOpeBRepDS_HDataStructure;
                     l1: TopOpeBRepDS_ListOfInterference;
                     l2: var TopOpeBRepDS_ListOfInterference) {.noSideEffect, cdecl,
    importcpp: "SortOnParameter", header: "TopOpeBRepDS_HDataStructure.hxx".}
proc sortOnParameter*(this: TopOpeBRepDS_HDataStructure;
                     L: var TopOpeBRepDS_ListOfInterference) {.noSideEffect, cdecl,
    importcpp: "SortOnParameter", header: "TopOpeBRepDS_HDataStructure.hxx".}
proc minMaxOnParameter*(this: TopOpeBRepDS_HDataStructure;
                       L: TopOpeBRepDS_ListOfInterference; min: var cfloat;
                       max: var cfloat) {.noSideEffect, cdecl,
                                       importcpp: "MinMaxOnParameter",
                                       header: "TopOpeBRepDS_HDataStructure.hxx".}
proc scanInterfList*(this: TopOpeBRepDS_HDataStructure;
                    it: var TopOpeBRepDS_ListIteratorOfListOfInterference;
                    pds: TopOpeBRepDS_Point): bool {.noSideEffect, cdecl,
    importcpp: "ScanInterfList", header: "TopOpeBRepDS_HDataStructure.hxx".}
proc getGeometry*(this: TopOpeBRepDS_HDataStructure;
                 it: var TopOpeBRepDS_ListIteratorOfListOfInterference;
                 pds: TopOpeBRepDS_Point; g: var cint; k: var TopOpeBRepDS_Kind): bool {.
    noSideEffect, cdecl, importcpp: "GetGeometry", header: "TopOpeBRepDS_HDataStructure.hxx".}
proc storeInterference*(this: var TopOpeBRepDS_HDataStructure;
                       i: Handle[TopOpeBRepDS_Interference];
                       li: var TopOpeBRepDS_ListOfInterference;
                       str: TCollectionAsciiString = newTCollectionAsciiString("")) {.cdecl,
    importcpp: "StoreInterference", header: "TopOpeBRepDS_HDataStructure.hxx".}
proc storeInterference*(this: var TopOpeBRepDS_HDataStructure;
                       i: Handle[TopOpeBRepDS_Interference]; s: TopoDS_Shape;
                       str: TCollectionAsciiString = newTCollectionAsciiString("")) {.cdecl,
    importcpp: "StoreInterference", header: "TopOpeBRepDS_HDataStructure.hxx".}
proc storeInterference*(this: var TopOpeBRepDS_HDataStructure;
                       i: Handle[TopOpeBRepDS_Interference]; `is`: cint;
                       str: TCollectionAsciiString = newTCollectionAsciiString("")) {.cdecl,
    importcpp: "StoreInterference", header: "TopOpeBRepDS_HDataStructure.hxx".}
proc storeInterferences*(this: var TopOpeBRepDS_HDataStructure;
                        li: TopOpeBRepDS_ListOfInterference; s: TopoDS_Shape;
                        str: TCollectionAsciiString = newTCollectionAsciiString("")) {.cdecl,
    importcpp: "StoreInterferences", header: "TopOpeBRepDS_HDataStructure.hxx".}
proc storeInterferences*(this: var TopOpeBRepDS_HDataStructure;
                        li: TopOpeBRepDS_ListOfInterference; `is`: cint;
                        str: TCollectionAsciiString = newTCollectionAsciiString("")) {.cdecl,
    importcpp: "StoreInterferences", header: "TopOpeBRepDS_HDataStructure.hxx".}
proc clearStoreInterferences*(this: var TopOpeBRepDS_HDataStructure;
                             li: TopOpeBRepDS_ListOfInterference; s: TopoDS_Shape;
                             str: TCollectionAsciiString = newTCollectionAsciiString("")) {.cdecl,
    importcpp: "ClearStoreInterferences", header: "TopOpeBRepDS_HDataStructure.hxx".}
proc clearStoreInterferences*(this: var TopOpeBRepDS_HDataStructure;
                             li: TopOpeBRepDS_ListOfInterference; `is`: cint;
                             str: TCollectionAsciiString = newTCollectionAsciiString("")) {.cdecl,
    importcpp: "ClearStoreInterferences", header: "TopOpeBRepDS_HDataStructure.hxx".}
