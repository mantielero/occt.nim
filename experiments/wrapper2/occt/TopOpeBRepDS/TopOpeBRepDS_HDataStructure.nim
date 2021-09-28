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
discard "forward decl of TopOpeBRepDS_HDataStructure"
type
  HandleC1C1* = Handle[TopOpeBRepDS_HDataStructure]
  TopOpeBRepDS_HDataStructure* {.importcpp: "TopOpeBRepDS_HDataStructure",
                                header: "TopOpeBRepDS_HDataStructure.hxx", bycopy.} = object of StandardTransient


proc constructTopOpeBRepDS_HDataStructure*(): TopOpeBRepDS_HDataStructure {.
    constructor, importcpp: "TopOpeBRepDS_HDataStructure(@)",
    header: "TopOpeBRepDS_HDataStructure.hxx".}
proc addAncestors*(this: var TopOpeBRepDS_HDataStructure; s: TopoDS_Shape) {.
    importcpp: "AddAncestors", header: "TopOpeBRepDS_HDataStructure.hxx".}
proc addAncestors*(this: var TopOpeBRepDS_HDataStructure; s: TopoDS_Shape;
                  t1: TopAbsShapeEnum; t2: TopAbsShapeEnum) {.
    importcpp: "AddAncestors", header: "TopOpeBRepDS_HDataStructure.hxx".}
proc chkIntg*(this: var TopOpeBRepDS_HDataStructure) {.importcpp: "ChkIntg",
    header: "TopOpeBRepDS_HDataStructure.hxx".}
proc ds*(this: TopOpeBRepDS_HDataStructure): TopOpeBRepDS_DataStructure {.
    noSideEffect, importcpp: "DS", header: "TopOpeBRepDS_HDataStructure.hxx".}
proc changeDS*(this: var TopOpeBRepDS_HDataStructure): var TopOpeBRepDS_DataStructure {.
    importcpp: "ChangeDS", header: "TopOpeBRepDS_HDataStructure.hxx".}
proc nbSurfaces*(this: TopOpeBRepDS_HDataStructure): cint {.noSideEffect,
    importcpp: "NbSurfaces", header: "TopOpeBRepDS_HDataStructure.hxx".}
proc nbCurves*(this: TopOpeBRepDS_HDataStructure): cint {.noSideEffect,
    importcpp: "NbCurves", header: "TopOpeBRepDS_HDataStructure.hxx".}
proc nbPoints*(this: TopOpeBRepDS_HDataStructure): cint {.noSideEffect,
    importcpp: "NbPoints", header: "TopOpeBRepDS_HDataStructure.hxx".}
proc surface*(this: TopOpeBRepDS_HDataStructure; i: cint): TopOpeBRepDS_Surface {.
    noSideEffect, importcpp: "Surface", header: "TopOpeBRepDS_HDataStructure.hxx".}
proc surfaceCurves*(this: TopOpeBRepDS_HDataStructure; i: cint): TopOpeBRepDS_CurveIterator {.
    noSideEffect, importcpp: "SurfaceCurves",
    header: "TopOpeBRepDS_HDataStructure.hxx".}
proc curve*(this: TopOpeBRepDS_HDataStructure; i: cint): TopOpeBRepDS_Curve {.
    noSideEffect, importcpp: "Curve", header: "TopOpeBRepDS_HDataStructure.hxx".}
proc changeCurve*(this: var TopOpeBRepDS_HDataStructure; i: cint): var TopOpeBRepDS_Curve {.
    importcpp: "ChangeCurve", header: "TopOpeBRepDS_HDataStructure.hxx".}
proc curvePoints*(this: TopOpeBRepDS_HDataStructure; i: cint): TopOpeBRepDS_PointIterator {.
    noSideEffect, importcpp: "CurvePoints",
    header: "TopOpeBRepDS_HDataStructure.hxx".}
proc point*(this: TopOpeBRepDS_HDataStructure; i: cint): TopOpeBRepDS_Point {.
    noSideEffect, importcpp: "Point", header: "TopOpeBRepDS_HDataStructure.hxx".}
proc nbShapes*(this: TopOpeBRepDS_HDataStructure): cint {.noSideEffect,
    importcpp: "NbShapes", header: "TopOpeBRepDS_HDataStructure.hxx".}
proc shape*(this: TopOpeBRepDS_HDataStructure; i: cint; findKeep: bool = true): TopoDS_Shape {.
    noSideEffect, importcpp: "Shape", header: "TopOpeBRepDS_HDataStructure.hxx".}
proc shape*(this: TopOpeBRepDS_HDataStructure; s: TopoDS_Shape; findKeep: bool = true): cint {.
    noSideEffect, importcpp: "Shape", header: "TopOpeBRepDS_HDataStructure.hxx".}
proc hasGeometry*(this: TopOpeBRepDS_HDataStructure; s: TopoDS_Shape): bool {.
    noSideEffect, importcpp: "HasGeometry",
    header: "TopOpeBRepDS_HDataStructure.hxx".}
proc hasShape*(this: TopOpeBRepDS_HDataStructure; s: TopoDS_Shape;
              findKeep: bool = true): bool {.noSideEffect, importcpp: "HasShape", header: "TopOpeBRepDS_HDataStructure.hxx".}
proc hasSameDomain*(this: TopOpeBRepDS_HDataStructure; s: TopoDS_Shape;
                   findKeep: bool = true): bool {.noSideEffect,
    importcpp: "HasSameDomain", header: "TopOpeBRepDS_HDataStructure.hxx".}
proc sameDomain*(this: TopOpeBRepDS_HDataStructure; s: TopoDS_Shape): TopToolsListIteratorOfListOfShape {.
    noSideEffect, importcpp: "SameDomain",
    header: "TopOpeBRepDS_HDataStructure.hxx".}
proc sameDomainOrientation*(this: TopOpeBRepDS_HDataStructure; s: TopoDS_Shape): TopOpeBRepDS_Config {.
    noSideEffect, importcpp: "SameDomainOrientation",
    header: "TopOpeBRepDS_HDataStructure.hxx".}
proc sameDomainReference*(this: TopOpeBRepDS_HDataStructure; s: TopoDS_Shape): cint {.
    noSideEffect, importcpp: "SameDomainReference",
    header: "TopOpeBRepDS_HDataStructure.hxx".}
proc solidSurfaces*(this: TopOpeBRepDS_HDataStructure; s: TopoDS_Shape): TopOpeBRepDS_SurfaceIterator {.
    noSideEffect, importcpp: "SolidSurfaces",
    header: "TopOpeBRepDS_HDataStructure.hxx".}
proc solidSurfaces*(this: TopOpeBRepDS_HDataStructure; i: cint): TopOpeBRepDS_SurfaceIterator {.
    noSideEffect, importcpp: "SolidSurfaces",
    header: "TopOpeBRepDS_HDataStructure.hxx".}
proc faceCurves*(this: TopOpeBRepDS_HDataStructure; f: TopoDS_Shape): TopOpeBRepDS_CurveIterator {.
    noSideEffect, importcpp: "FaceCurves",
    header: "TopOpeBRepDS_HDataStructure.hxx".}
proc faceCurves*(this: TopOpeBRepDS_HDataStructure; i: cint): TopOpeBRepDS_CurveIterator {.
    noSideEffect, importcpp: "FaceCurves",
    header: "TopOpeBRepDS_HDataStructure.hxx".}
proc edgePoints*(this: TopOpeBRepDS_HDataStructure; e: TopoDS_Shape): TopOpeBRepDS_PointIterator {.
    noSideEffect, importcpp: "EdgePoints",
    header: "TopOpeBRepDS_HDataStructure.hxx".}
proc makeCurve*(this: var TopOpeBRepDS_HDataStructure; c1: TopOpeBRepDS_Curve;
               c2: var TopOpeBRepDS_Curve): cint {.importcpp: "MakeCurve",
    header: "TopOpeBRepDS_HDataStructure.hxx".}
proc removeCurve*(this: var TopOpeBRepDS_HDataStructure; iC: cint) {.
    importcpp: "RemoveCurve", header: "TopOpeBRepDS_HDataStructure.hxx".}
proc nbGeometry*(this: TopOpeBRepDS_HDataStructure; k: TopOpeBRepDS_Kind): cint {.
    noSideEffect, importcpp: "NbGeometry",
    header: "TopOpeBRepDS_HDataStructure.hxx".}
proc nbTopology*(this: TopOpeBRepDS_HDataStructure; k: TopOpeBRepDS_Kind): cint {.
    noSideEffect, importcpp: "NbTopology",
    header: "TopOpeBRepDS_HDataStructure.hxx".}
proc nbTopology*(this: TopOpeBRepDS_HDataStructure): cint {.noSideEffect,
    importcpp: "NbTopology", header: "TopOpeBRepDS_HDataStructure.hxx".}
proc edgesSameParameter*(this: TopOpeBRepDS_HDataStructure): bool {.noSideEffect,
    importcpp: "EdgesSameParameter", header: "TopOpeBRepDS_HDataStructure.hxx".}
proc sortOnParameter*(this: TopOpeBRepDS_HDataStructure;
                     l1: TopOpeBRepDS_ListOfInterference;
                     l2: var TopOpeBRepDS_ListOfInterference) {.noSideEffect,
    importcpp: "SortOnParameter", header: "TopOpeBRepDS_HDataStructure.hxx".}
proc sortOnParameter*(this: TopOpeBRepDS_HDataStructure;
                     L: var TopOpeBRepDS_ListOfInterference) {.noSideEffect,
    importcpp: "SortOnParameter", header: "TopOpeBRepDS_HDataStructure.hxx".}
proc minMaxOnParameter*(this: TopOpeBRepDS_HDataStructure;
                       L: TopOpeBRepDS_ListOfInterference; min: var cfloat;
                       max: var cfloat) {.noSideEffect,
                                       importcpp: "MinMaxOnParameter", header: "TopOpeBRepDS_HDataStructure.hxx".}
proc scanInterfList*(this: TopOpeBRepDS_HDataStructure;
                    it: var TopOpeBRepDS_ListIteratorOfListOfInterference;
                    pds: TopOpeBRepDS_Point): bool {.noSideEffect,
    importcpp: "ScanInterfList", header: "TopOpeBRepDS_HDataStructure.hxx".}
proc getGeometry*(this: TopOpeBRepDS_HDataStructure;
                 it: var TopOpeBRepDS_ListIteratorOfListOfInterference;
                 pds: TopOpeBRepDS_Point; g: var cint; k: var TopOpeBRepDS_Kind): bool {.
    noSideEffect, importcpp: "GetGeometry",
    header: "TopOpeBRepDS_HDataStructure.hxx".}
proc storeInterference*(this: var TopOpeBRepDS_HDataStructure;
                       i: Handle[TopOpeBRepDS_Interference];
                       li: var TopOpeBRepDS_ListOfInterference;
                       str: TCollectionAsciiString = "") {.
    importcpp: "StoreInterference", header: "TopOpeBRepDS_HDataStructure.hxx".}
proc storeInterference*(this: var TopOpeBRepDS_HDataStructure;
                       i: Handle[TopOpeBRepDS_Interference]; s: TopoDS_Shape;
                       str: TCollectionAsciiString = "") {.
    importcpp: "StoreInterference", header: "TopOpeBRepDS_HDataStructure.hxx".}
proc storeInterference*(this: var TopOpeBRepDS_HDataStructure;
                       i: Handle[TopOpeBRepDS_Interference]; `is`: cint;
                       str: TCollectionAsciiString = "") {.
    importcpp: "StoreInterference", header: "TopOpeBRepDS_HDataStructure.hxx".}
proc storeInterferences*(this: var TopOpeBRepDS_HDataStructure;
                        li: TopOpeBRepDS_ListOfInterference; s: TopoDS_Shape;
                        str: TCollectionAsciiString = "") {.
    importcpp: "StoreInterferences", header: "TopOpeBRepDS_HDataStructure.hxx".}
proc storeInterferences*(this: var TopOpeBRepDS_HDataStructure;
                        li: TopOpeBRepDS_ListOfInterference; `is`: cint;
                        str: TCollectionAsciiString = "") {.
    importcpp: "StoreInterferences", header: "TopOpeBRepDS_HDataStructure.hxx".}
proc clearStoreInterferences*(this: var TopOpeBRepDS_HDataStructure;
                             li: TopOpeBRepDS_ListOfInterference; s: TopoDS_Shape;
                             str: TCollectionAsciiString = "") {.
    importcpp: "ClearStoreInterferences",
    header: "TopOpeBRepDS_HDataStructure.hxx".}
proc clearStoreInterferences*(this: var TopOpeBRepDS_HDataStructure;
                             li: TopOpeBRepDS_ListOfInterference; `is`: cint;
                             str: TCollectionAsciiString = "") {.
    importcpp: "ClearStoreInterferences",
    header: "TopOpeBRepDS_HDataStructure.hxx".}
type
  TopOpeBRepDS_HDataStructurebaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "TopOpeBRepDS_HDataStructure::get_type_name(@)",
                            header: "TopOpeBRepDS_HDataStructure.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "TopOpeBRepDS_HDataStructure::get_type_descriptor(@)",
    header: "TopOpeBRepDS_HDataStructure.hxx".}
proc dynamicType*(this: TopOpeBRepDS_HDataStructure): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "TopOpeBRepDS_HDataStructure.hxx".}

























