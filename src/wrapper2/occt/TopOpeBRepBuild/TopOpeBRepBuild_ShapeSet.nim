##  Created on: 1993-06-16
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
  ../Standard/Standard_Handle, ../TopAbs/TopAbs_ShapeEnum,
  ../TopOpeBRepTool/TopOpeBRepTool_ShapeExplorer,
  ../TopTools/TopTools_ListOfShape,
  ../TopTools/TopTools_ListIteratorOfListOfShape,
  ../TopTools/TopTools_IndexedDataMapOfShapeListOfShape, ../TopoDS/TopoDS_Shape,
  ../Standard/Standard_Integer, ../TCollection/TCollection_AsciiString,
  ../TopTools/TopTools_IndexedMapOfOrientedShape, ../Standard/Standard_Boolean,
  ../Standard/Standard_OStream

discard "forward decl of TopoDS_Shape"
discard "forward decl of TCollection_AsciiString"
type
  TopOpeBRepBuild_ShapeSet* {.importcpp: "TopOpeBRepBuild_ShapeSet",
                             header: "TopOpeBRepBuild_ShapeSet.hxx", bycopy.} = object ##
                                                                                  ## !
                                                                                  ## Creates
                                                                                  ## a
                                                                                  ## ShapeSet
                                                                                  ## in
                                                                                  ## order
                                                                                  ## to
                                                                                  ## build
                                                                                  ## shapes
                                                                                  ## connected
                                                                                  ##
                                                                                  ## !
                                                                                  ## by
                                                                                  ## <SubShapeType>
                                                                                  ## shapes.
                                                                                  ##
                                                                                  ## !
                                                                                  ## <checkshape>:check
                                                                                  ## (or
                                                                                  ## not)
                                                                                  ## the
                                                                                  ## shapes,
                                                                                  ## startelements,
                                                                                  ## elements
                                                                                  ## added.


proc constructTopOpeBRepBuild_ShapeSet*(SubShapeType: TopAbs_ShapeEnum; checkshape: Standard_Boolean = Standard_True): TopOpeBRepBuild_ShapeSet {.
    constructor, importcpp: "TopOpeBRepBuild_ShapeSet(@)",
    header: "TopOpeBRepBuild_ShapeSet.hxx".}
proc destroyTopOpeBRepBuild_ShapeSet*(this: var TopOpeBRepBuild_ShapeSet) {.
    importcpp: "#.~TopOpeBRepBuild_ShapeSet()",
    header: "TopOpeBRepBuild_ShapeSet.hxx".}
proc AddShape*(this: var TopOpeBRepBuild_ShapeSet; S: TopoDS_Shape) {.
    importcpp: "AddShape", header: "TopOpeBRepBuild_ShapeSet.hxx".}
proc AddStartElement*(this: var TopOpeBRepBuild_ShapeSet; S: TopoDS_Shape) {.
    importcpp: "AddStartElement", header: "TopOpeBRepBuild_ShapeSet.hxx".}
proc AddElement*(this: var TopOpeBRepBuild_ShapeSet; S: TopoDS_Shape) {.
    importcpp: "AddElement", header: "TopOpeBRepBuild_ShapeSet.hxx".}
proc StartElements*(this: TopOpeBRepBuild_ShapeSet): TopTools_ListOfShape {.
    noSideEffect, importcpp: "StartElements",
    header: "TopOpeBRepBuild_ShapeSet.hxx".}
proc InitShapes*(this: var TopOpeBRepBuild_ShapeSet) {.importcpp: "InitShapes",
    header: "TopOpeBRepBuild_ShapeSet.hxx".}
proc MoreShapes*(this: TopOpeBRepBuild_ShapeSet): Standard_Boolean {.noSideEffect,
    importcpp: "MoreShapes", header: "TopOpeBRepBuild_ShapeSet.hxx".}
proc NextShape*(this: var TopOpeBRepBuild_ShapeSet) {.importcpp: "NextShape",
    header: "TopOpeBRepBuild_ShapeSet.hxx".}
proc Shape*(this: TopOpeBRepBuild_ShapeSet): TopoDS_Shape {.noSideEffect,
    importcpp: "Shape", header: "TopOpeBRepBuild_ShapeSet.hxx".}
proc InitStartElements*(this: var TopOpeBRepBuild_ShapeSet) {.
    importcpp: "InitStartElements", header: "TopOpeBRepBuild_ShapeSet.hxx".}
proc MoreStartElements*(this: TopOpeBRepBuild_ShapeSet): Standard_Boolean {.
    noSideEffect, importcpp: "MoreStartElements",
    header: "TopOpeBRepBuild_ShapeSet.hxx".}
proc NextStartElement*(this: var TopOpeBRepBuild_ShapeSet) {.
    importcpp: "NextStartElement", header: "TopOpeBRepBuild_ShapeSet.hxx".}
proc StartElement*(this: TopOpeBRepBuild_ShapeSet): TopoDS_Shape {.noSideEffect,
    importcpp: "StartElement", header: "TopOpeBRepBuild_ShapeSet.hxx".}
proc InitNeighbours*(this: var TopOpeBRepBuild_ShapeSet; S: TopoDS_Shape) {.
    importcpp: "InitNeighbours", header: "TopOpeBRepBuild_ShapeSet.hxx".}
proc MoreNeighbours*(this: var TopOpeBRepBuild_ShapeSet): Standard_Boolean {.
    importcpp: "MoreNeighbours", header: "TopOpeBRepBuild_ShapeSet.hxx".}
proc NextNeighbour*(this: var TopOpeBRepBuild_ShapeSet) {.
    importcpp: "NextNeighbour", header: "TopOpeBRepBuild_ShapeSet.hxx".}
proc Neighbour*(this: TopOpeBRepBuild_ShapeSet): TopoDS_Shape {.noSideEffect,
    importcpp: "Neighbour", header: "TopOpeBRepBuild_ShapeSet.hxx".}
proc ChangeStartShapes*(this: var TopOpeBRepBuild_ShapeSet): var TopTools_ListOfShape {.
    importcpp: "ChangeStartShapes", header: "TopOpeBRepBuild_ShapeSet.hxx".}
proc FindNeighbours*(this: var TopOpeBRepBuild_ShapeSet) {.
    importcpp: "FindNeighbours", header: "TopOpeBRepBuild_ShapeSet.hxx".}
proc MakeNeighboursList*(this: var TopOpeBRepBuild_ShapeSet; E: TopoDS_Shape;
                        V: TopoDS_Shape): TopTools_ListOfShape {.
    importcpp: "MakeNeighboursList", header: "TopOpeBRepBuild_ShapeSet.hxx".}
proc MaxNumberSubShape*(this: var TopOpeBRepBuild_ShapeSet; Shape: TopoDS_Shape): Standard_Integer {.
    importcpp: "MaxNumberSubShape", header: "TopOpeBRepBuild_ShapeSet.hxx".}
proc CheckShape*(this: var TopOpeBRepBuild_ShapeSet; checkshape: Standard_Boolean) {.
    importcpp: "CheckShape", header: "TopOpeBRepBuild_ShapeSet.hxx".}
proc CheckShape*(this: TopOpeBRepBuild_ShapeSet): Standard_Boolean {.noSideEffect,
    importcpp: "CheckShape", header: "TopOpeBRepBuild_ShapeSet.hxx".}
proc CheckShape*(this: var TopOpeBRepBuild_ShapeSet; S: TopoDS_Shape;
                checkgeom: Standard_Boolean = Standard_False): Standard_Boolean {.
    importcpp: "CheckShape", header: "TopOpeBRepBuild_ShapeSet.hxx".}
proc DumpName*(this: TopOpeBRepBuild_ShapeSet; OS: var Standard_OStream;
              str: TCollection_AsciiString) {.noSideEffect, importcpp: "DumpName",
    header: "TopOpeBRepBuild_ShapeSet.hxx".}
proc DumpCheck*(this: TopOpeBRepBuild_ShapeSet; OS: var Standard_OStream;
               str: TCollection_AsciiString; S: TopoDS_Shape; chk: Standard_Boolean) {.
    noSideEffect, importcpp: "DumpCheck", header: "TopOpeBRepBuild_ShapeSet.hxx".}
proc DumpSS*(this: var TopOpeBRepBuild_ShapeSet) {.importcpp: "DumpSS",
    header: "TopOpeBRepBuild_ShapeSet.hxx".}
proc DumpBB*(this: var TopOpeBRepBuild_ShapeSet) {.importcpp: "DumpBB",
    header: "TopOpeBRepBuild_ShapeSet.hxx".}
proc DEBName*(this: var TopOpeBRepBuild_ShapeSet; N: TCollection_AsciiString) {.
    importcpp: "DEBName", header: "TopOpeBRepBuild_ShapeSet.hxx".}
proc DEBName*(this: TopOpeBRepBuild_ShapeSet): TCollection_AsciiString {.
    noSideEffect, importcpp: "DEBName", header: "TopOpeBRepBuild_ShapeSet.hxx".}
proc DEBNumber*(this: var TopOpeBRepBuild_ShapeSet; I: Standard_Integer) {.
    importcpp: "DEBNumber", header: "TopOpeBRepBuild_ShapeSet.hxx".}
proc DEBNumber*(this: TopOpeBRepBuild_ShapeSet): Standard_Integer {.noSideEffect,
    importcpp: "DEBNumber", header: "TopOpeBRepBuild_ShapeSet.hxx".}
proc SName*(this: TopOpeBRepBuild_ShapeSet; S: TopoDS_Shape;
           sb: TCollection_AsciiString = ""; sa: TCollection_AsciiString = ""): TCollection_AsciiString {.
    noSideEffect, importcpp: "SName", header: "TopOpeBRepBuild_ShapeSet.hxx".}
proc SNameori*(this: TopOpeBRepBuild_ShapeSet; S: TopoDS_Shape;
              sb: TCollection_AsciiString = ""; sa: TCollection_AsciiString = ""): TCollection_AsciiString {.
    noSideEffect, importcpp: "SNameori", header: "TopOpeBRepBuild_ShapeSet.hxx".}
proc SName*(this: TopOpeBRepBuild_ShapeSet; S: TopTools_ListOfShape;
           sb: TCollection_AsciiString = ""; sa: TCollection_AsciiString = ""): TCollection_AsciiString {.
    noSideEffect, importcpp: "SName", header: "TopOpeBRepBuild_ShapeSet.hxx".}
proc SNameori*(this: TopOpeBRepBuild_ShapeSet; S: TopTools_ListOfShape;
              sb: TCollection_AsciiString = ""; sa: TCollection_AsciiString = ""): TCollection_AsciiString {.
    noSideEffect, importcpp: "SNameori", header: "TopOpeBRepBuild_ShapeSet.hxx".}