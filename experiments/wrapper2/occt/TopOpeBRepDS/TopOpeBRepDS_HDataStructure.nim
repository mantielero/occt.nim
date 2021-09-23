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

import
  ../Standard/Standard, ../Standard/Standard_Type, TopOpeBRepDS_DataStructure,
  ../Standard/Standard_Boolean, ../TCollection/TCollection_AsciiString,
  ../Standard/Standard_Transient, ../TopAbs/TopAbs_ShapeEnum,
  ../Standard/Standard_Integer, ../TopTools/TopTools_ListIteratorOfListOfShape,
  TopOpeBRepDS_Config, TopOpeBRepDS_Kind, TopOpeBRepDS_ListOfInterference,
  ../Standard/Standard_Real, TopOpeBRepDS_ListIteratorOfListOfInterference

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
  Handle_TopOpeBRepDS_HDataStructure* = handle[TopOpeBRepDS_HDataStructure]
  TopOpeBRepDS_HDataStructure* {.importcpp: "TopOpeBRepDS_HDataStructure",
                                header: "TopOpeBRepDS_HDataStructure.hxx", bycopy.} = object of Standard_Transient


proc constructTopOpeBRepDS_HDataStructure*(): TopOpeBRepDS_HDataStructure {.
    constructor, importcpp: "TopOpeBRepDS_HDataStructure(@)",
    header: "TopOpeBRepDS_HDataStructure.hxx".}
proc AddAncestors*(this: var TopOpeBRepDS_HDataStructure; S: TopoDS_Shape) {.
    importcpp: "AddAncestors", header: "TopOpeBRepDS_HDataStructure.hxx".}
proc AddAncestors*(this: var TopOpeBRepDS_HDataStructure; S: TopoDS_Shape;
                  T1: TopAbs_ShapeEnum; T2: TopAbs_ShapeEnum) {.
    importcpp: "AddAncestors", header: "TopOpeBRepDS_HDataStructure.hxx".}
proc ChkIntg*(this: var TopOpeBRepDS_HDataStructure) {.importcpp: "ChkIntg",
    header: "TopOpeBRepDS_HDataStructure.hxx".}
proc DS*(this: TopOpeBRepDS_HDataStructure): TopOpeBRepDS_DataStructure {.
    noSideEffect, importcpp: "DS", header: "TopOpeBRepDS_HDataStructure.hxx".}
proc ChangeDS*(this: var TopOpeBRepDS_HDataStructure): var TopOpeBRepDS_DataStructure {.
    importcpp: "ChangeDS", header: "TopOpeBRepDS_HDataStructure.hxx".}
proc NbSurfaces*(this: TopOpeBRepDS_HDataStructure): Standard_Integer {.
    noSideEffect, importcpp: "NbSurfaces",
    header: "TopOpeBRepDS_HDataStructure.hxx".}
proc NbCurves*(this: TopOpeBRepDS_HDataStructure): Standard_Integer {.noSideEffect,
    importcpp: "NbCurves", header: "TopOpeBRepDS_HDataStructure.hxx".}
proc NbPoints*(this: TopOpeBRepDS_HDataStructure): Standard_Integer {.noSideEffect,
    importcpp: "NbPoints", header: "TopOpeBRepDS_HDataStructure.hxx".}
proc Surface*(this: TopOpeBRepDS_HDataStructure; I: Standard_Integer): TopOpeBRepDS_Surface {.
    noSideEffect, importcpp: "Surface", header: "TopOpeBRepDS_HDataStructure.hxx".}
proc SurfaceCurves*(this: TopOpeBRepDS_HDataStructure; I: Standard_Integer): TopOpeBRepDS_CurveIterator {.
    noSideEffect, importcpp: "SurfaceCurves",
    header: "TopOpeBRepDS_HDataStructure.hxx".}
proc Curve*(this: TopOpeBRepDS_HDataStructure; I: Standard_Integer): TopOpeBRepDS_Curve {.
    noSideEffect, importcpp: "Curve", header: "TopOpeBRepDS_HDataStructure.hxx".}
proc ChangeCurve*(this: var TopOpeBRepDS_HDataStructure; I: Standard_Integer): var TopOpeBRepDS_Curve {.
    importcpp: "ChangeCurve", header: "TopOpeBRepDS_HDataStructure.hxx".}
proc CurvePoints*(this: TopOpeBRepDS_HDataStructure; I: Standard_Integer): TopOpeBRepDS_PointIterator {.
    noSideEffect, importcpp: "CurvePoints",
    header: "TopOpeBRepDS_HDataStructure.hxx".}
proc Point*(this: TopOpeBRepDS_HDataStructure; I: Standard_Integer): TopOpeBRepDS_Point {.
    noSideEffect, importcpp: "Point", header: "TopOpeBRepDS_HDataStructure.hxx".}
proc NbShapes*(this: TopOpeBRepDS_HDataStructure): Standard_Integer {.noSideEffect,
    importcpp: "NbShapes", header: "TopOpeBRepDS_HDataStructure.hxx".}
proc Shape*(this: TopOpeBRepDS_HDataStructure; I: Standard_Integer;
           FindKeep: Standard_Boolean = Standard_True): TopoDS_Shape {.noSideEffect,
    importcpp: "Shape", header: "TopOpeBRepDS_HDataStructure.hxx".}
proc Shape*(this: TopOpeBRepDS_HDataStructure; S: TopoDS_Shape;
           FindKeep: Standard_Boolean = Standard_True): Standard_Integer {.
    noSideEffect, importcpp: "Shape", header: "TopOpeBRepDS_HDataStructure.hxx".}
proc HasGeometry*(this: TopOpeBRepDS_HDataStructure; S: TopoDS_Shape): Standard_Boolean {.
    noSideEffect, importcpp: "HasGeometry",
    header: "TopOpeBRepDS_HDataStructure.hxx".}
proc HasShape*(this: TopOpeBRepDS_HDataStructure; S: TopoDS_Shape;
              FindKeep: Standard_Boolean = Standard_True): Standard_Boolean {.
    noSideEffect, importcpp: "HasShape", header: "TopOpeBRepDS_HDataStructure.hxx".}
proc HasSameDomain*(this: TopOpeBRepDS_HDataStructure; S: TopoDS_Shape;
                   FindKeep: Standard_Boolean = Standard_True): Standard_Boolean {.
    noSideEffect, importcpp: "HasSameDomain",
    header: "TopOpeBRepDS_HDataStructure.hxx".}
proc SameDomain*(this: TopOpeBRepDS_HDataStructure; S: TopoDS_Shape): TopTools_ListIteratorOfListOfShape {.
    noSideEffect, importcpp: "SameDomain",
    header: "TopOpeBRepDS_HDataStructure.hxx".}
proc SameDomainOrientation*(this: TopOpeBRepDS_HDataStructure; S: TopoDS_Shape): TopOpeBRepDS_Config {.
    noSideEffect, importcpp: "SameDomainOrientation",
    header: "TopOpeBRepDS_HDataStructure.hxx".}
proc SameDomainReference*(this: TopOpeBRepDS_HDataStructure; S: TopoDS_Shape): Standard_Integer {.
    noSideEffect, importcpp: "SameDomainReference",
    header: "TopOpeBRepDS_HDataStructure.hxx".}
proc SolidSurfaces*(this: TopOpeBRepDS_HDataStructure; S: TopoDS_Shape): TopOpeBRepDS_SurfaceIterator {.
    noSideEffect, importcpp: "SolidSurfaces",
    header: "TopOpeBRepDS_HDataStructure.hxx".}
proc SolidSurfaces*(this: TopOpeBRepDS_HDataStructure; I: Standard_Integer): TopOpeBRepDS_SurfaceIterator {.
    noSideEffect, importcpp: "SolidSurfaces",
    header: "TopOpeBRepDS_HDataStructure.hxx".}
proc FaceCurves*(this: TopOpeBRepDS_HDataStructure; F: TopoDS_Shape): TopOpeBRepDS_CurveIterator {.
    noSideEffect, importcpp: "FaceCurves",
    header: "TopOpeBRepDS_HDataStructure.hxx".}
proc FaceCurves*(this: TopOpeBRepDS_HDataStructure; I: Standard_Integer): TopOpeBRepDS_CurveIterator {.
    noSideEffect, importcpp: "FaceCurves",
    header: "TopOpeBRepDS_HDataStructure.hxx".}
proc EdgePoints*(this: TopOpeBRepDS_HDataStructure; E: TopoDS_Shape): TopOpeBRepDS_PointIterator {.
    noSideEffect, importcpp: "EdgePoints",
    header: "TopOpeBRepDS_HDataStructure.hxx".}
proc MakeCurve*(this: var TopOpeBRepDS_HDataStructure; C1: TopOpeBRepDS_Curve;
               C2: var TopOpeBRepDS_Curve): Standard_Integer {.
    importcpp: "MakeCurve", header: "TopOpeBRepDS_HDataStructure.hxx".}
proc RemoveCurve*(this: var TopOpeBRepDS_HDataStructure; iC: Standard_Integer) {.
    importcpp: "RemoveCurve", header: "TopOpeBRepDS_HDataStructure.hxx".}
proc NbGeometry*(this: TopOpeBRepDS_HDataStructure; K: TopOpeBRepDS_Kind): Standard_Integer {.
    noSideEffect, importcpp: "NbGeometry",
    header: "TopOpeBRepDS_HDataStructure.hxx".}
proc NbTopology*(this: TopOpeBRepDS_HDataStructure; K: TopOpeBRepDS_Kind): Standard_Integer {.
    noSideEffect, importcpp: "NbTopology",
    header: "TopOpeBRepDS_HDataStructure.hxx".}
proc NbTopology*(this: TopOpeBRepDS_HDataStructure): Standard_Integer {.
    noSideEffect, importcpp: "NbTopology",
    header: "TopOpeBRepDS_HDataStructure.hxx".}
proc EdgesSameParameter*(this: TopOpeBRepDS_HDataStructure): Standard_Boolean {.
    noSideEffect, importcpp: "EdgesSameParameter",
    header: "TopOpeBRepDS_HDataStructure.hxx".}
proc SortOnParameter*(this: TopOpeBRepDS_HDataStructure;
                     L1: TopOpeBRepDS_ListOfInterference;
                     L2: var TopOpeBRepDS_ListOfInterference) {.noSideEffect,
    importcpp: "SortOnParameter", header: "TopOpeBRepDS_HDataStructure.hxx".}
proc SortOnParameter*(this: TopOpeBRepDS_HDataStructure;
                     L: var TopOpeBRepDS_ListOfInterference) {.noSideEffect,
    importcpp: "SortOnParameter", header: "TopOpeBRepDS_HDataStructure.hxx".}
proc MinMaxOnParameter*(this: TopOpeBRepDS_HDataStructure;
                       L: TopOpeBRepDS_ListOfInterference; Min: var Standard_Real;
                       Max: var Standard_Real) {.noSideEffect,
    importcpp: "MinMaxOnParameter", header: "TopOpeBRepDS_HDataStructure.hxx".}
proc ScanInterfList*(this: TopOpeBRepDS_HDataStructure;
                    IT: var TopOpeBRepDS_ListIteratorOfListOfInterference;
                    PDS: TopOpeBRepDS_Point): Standard_Boolean {.noSideEffect,
    importcpp: "ScanInterfList", header: "TopOpeBRepDS_HDataStructure.hxx".}
proc GetGeometry*(this: TopOpeBRepDS_HDataStructure;
                 IT: var TopOpeBRepDS_ListIteratorOfListOfInterference;
                 PDS: TopOpeBRepDS_Point; G: var Standard_Integer;
                 K: var TopOpeBRepDS_Kind): Standard_Boolean {.noSideEffect,
    importcpp: "GetGeometry", header: "TopOpeBRepDS_HDataStructure.hxx".}
proc StoreInterference*(this: var TopOpeBRepDS_HDataStructure;
                       I: handle[TopOpeBRepDS_Interference];
                       LI: var TopOpeBRepDS_ListOfInterference;
                       str: TCollection_AsciiString = "") {.
    importcpp: "StoreInterference", header: "TopOpeBRepDS_HDataStructure.hxx".}
proc StoreInterference*(this: var TopOpeBRepDS_HDataStructure;
                       I: handle[TopOpeBRepDS_Interference]; S: TopoDS_Shape;
                       str: TCollection_AsciiString = "") {.
    importcpp: "StoreInterference", header: "TopOpeBRepDS_HDataStructure.hxx".}
proc StoreInterference*(this: var TopOpeBRepDS_HDataStructure;
                       I: handle[TopOpeBRepDS_Interference]; IS: Standard_Integer;
                       str: TCollection_AsciiString = "") {.
    importcpp: "StoreInterference", header: "TopOpeBRepDS_HDataStructure.hxx".}
proc StoreInterferences*(this: var TopOpeBRepDS_HDataStructure;
                        LI: TopOpeBRepDS_ListOfInterference; S: TopoDS_Shape;
                        str: TCollection_AsciiString = "") {.
    importcpp: "StoreInterferences", header: "TopOpeBRepDS_HDataStructure.hxx".}
proc StoreInterferences*(this: var TopOpeBRepDS_HDataStructure;
                        LI: TopOpeBRepDS_ListOfInterference; IS: Standard_Integer;
                        str: TCollection_AsciiString = "") {.
    importcpp: "StoreInterferences", header: "TopOpeBRepDS_HDataStructure.hxx".}
proc ClearStoreInterferences*(this: var TopOpeBRepDS_HDataStructure;
                             LI: TopOpeBRepDS_ListOfInterference; S: TopoDS_Shape;
                             str: TCollection_AsciiString = "") {.
    importcpp: "ClearStoreInterferences",
    header: "TopOpeBRepDS_HDataStructure.hxx".}
proc ClearStoreInterferences*(this: var TopOpeBRepDS_HDataStructure;
                             LI: TopOpeBRepDS_ListOfInterference;
                             IS: Standard_Integer;
                             str: TCollection_AsciiString = "") {.
    importcpp: "ClearStoreInterferences",
    header: "TopOpeBRepDS_HDataStructure.hxx".}
type
  TopOpeBRepDS_HDataStructurebase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "TopOpeBRepDS_HDataStructure::get_type_name(@)",
                              header: "TopOpeBRepDS_HDataStructure.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "TopOpeBRepDS_HDataStructure::get_type_descriptor(@)",
    header: "TopOpeBRepDS_HDataStructure.hxx".}
proc DynamicType*(this: TopOpeBRepDS_HDataStructure): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "TopOpeBRepDS_HDataStructure.hxx".}