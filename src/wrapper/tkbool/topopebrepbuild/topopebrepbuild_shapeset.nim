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

discard "forward decl of TopoDS_Shape"
discard "forward decl of TCollection_AsciiString"
type
  TopOpeBRepBuildShapeSet* {.importcpp: "TopOpeBRepBuild_ShapeSet",
                            header: "TopOpeBRepBuild_ShapeSet.hxx", bycopy.} = object of RootObj ##
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


proc newTopOpeBRepBuildShapeSet*(subShapeType: TopAbsShapeEnum;
                                checkshape: bool = true): TopOpeBRepBuildShapeSet {.
    cdecl, constructor, importcpp: "TopOpeBRepBuild_ShapeSet(@)", header: "TopOpeBRepBuild_ShapeSet.hxx".}
proc destroyTopOpeBRepBuildShapeSet*(this: var TopOpeBRepBuildShapeSet) {.cdecl,
    importcpp: "#.~TopOpeBRepBuild_ShapeSet()", header: "TopOpeBRepBuild_ShapeSet.hxx".}
proc addShape*(this: var TopOpeBRepBuildShapeSet; s: TopoDS_Shape) {.cdecl,
    importcpp: "AddShape", header: "TopOpeBRepBuild_ShapeSet.hxx".}
proc addStartElement*(this: var TopOpeBRepBuildShapeSet; s: TopoDS_Shape) {.cdecl,
    importcpp: "AddStartElement", header: "TopOpeBRepBuild_ShapeSet.hxx".}
proc addElement*(this: var TopOpeBRepBuildShapeSet; s: TopoDS_Shape) {.cdecl,
    importcpp: "AddElement", header: "TopOpeBRepBuild_ShapeSet.hxx".}
proc startElements*(this: TopOpeBRepBuildShapeSet): TopToolsListOfShape {.
    noSideEffect, cdecl, importcpp: "StartElements", header: "TopOpeBRepBuild_ShapeSet.hxx".}
proc initShapes*(this: var TopOpeBRepBuildShapeSet) {.cdecl, importcpp: "InitShapes",
    header: "TopOpeBRepBuild_ShapeSet.hxx".}
proc moreShapes*(this: TopOpeBRepBuildShapeSet): bool {.noSideEffect, cdecl,
    importcpp: "MoreShapes", header: "TopOpeBRepBuild_ShapeSet.hxx".}
proc nextShape*(this: var TopOpeBRepBuildShapeSet) {.cdecl, importcpp: "NextShape",
    header: "TopOpeBRepBuild_ShapeSet.hxx".}
proc shape*(this: TopOpeBRepBuildShapeSet): TopoDS_Shape {.noSideEffect, cdecl,
    importcpp: "Shape", header: "TopOpeBRepBuild_ShapeSet.hxx".}
proc initStartElements*(this: var TopOpeBRepBuildShapeSet) {.cdecl,
    importcpp: "InitStartElements", header: "TopOpeBRepBuild_ShapeSet.hxx".}
proc moreStartElements*(this: TopOpeBRepBuildShapeSet): bool {.noSideEffect, cdecl,
    importcpp: "MoreStartElements", header: "TopOpeBRepBuild_ShapeSet.hxx".}
proc nextStartElement*(this: var TopOpeBRepBuildShapeSet) {.cdecl,
    importcpp: "NextStartElement", header: "TopOpeBRepBuild_ShapeSet.hxx".}
proc startElement*(this: TopOpeBRepBuildShapeSet): TopoDS_Shape {.noSideEffect,
    cdecl, importcpp: "StartElement", header: "TopOpeBRepBuild_ShapeSet.hxx".}
proc initNeighbours*(this: var TopOpeBRepBuildShapeSet; s: TopoDS_Shape) {.cdecl,
    importcpp: "InitNeighbours", header: "TopOpeBRepBuild_ShapeSet.hxx".}
proc moreNeighbours*(this: var TopOpeBRepBuildShapeSet): bool {.cdecl,
    importcpp: "MoreNeighbours", header: "TopOpeBRepBuild_ShapeSet.hxx".}
proc nextNeighbour*(this: var TopOpeBRepBuildShapeSet) {.cdecl,
    importcpp: "NextNeighbour", header: "TopOpeBRepBuild_ShapeSet.hxx".}
proc neighbour*(this: TopOpeBRepBuildShapeSet): TopoDS_Shape {.noSideEffect, cdecl,
    importcpp: "Neighbour", header: "TopOpeBRepBuild_ShapeSet.hxx".}
proc changeStartShapes*(this: var TopOpeBRepBuildShapeSet): var TopToolsListOfShape {.
    cdecl, importcpp: "ChangeStartShapes", header: "TopOpeBRepBuild_ShapeSet.hxx".}
proc findNeighbours*(this: var TopOpeBRepBuildShapeSet) {.cdecl,
    importcpp: "FindNeighbours", header: "TopOpeBRepBuild_ShapeSet.hxx".}
proc makeNeighboursList*(this: var TopOpeBRepBuildShapeSet; e: TopoDS_Shape;
                        v: TopoDS_Shape): TopToolsListOfShape {.cdecl,
    importcpp: "MakeNeighboursList", header: "TopOpeBRepBuild_ShapeSet.hxx".}
proc maxNumberSubShape*(this: var TopOpeBRepBuildShapeSet; shape: TopoDS_Shape): cint {.
    cdecl, importcpp: "MaxNumberSubShape", header: "TopOpeBRepBuild_ShapeSet.hxx".}
proc checkShape*(this: var TopOpeBRepBuildShapeSet; checkshape: bool) {.cdecl,
    importcpp: "CheckShape", header: "TopOpeBRepBuild_ShapeSet.hxx".}
proc checkShape*(this: TopOpeBRepBuildShapeSet): bool {.noSideEffect, cdecl,
    importcpp: "CheckShape", header: "TopOpeBRepBuild_ShapeSet.hxx".}
proc checkShape*(this: var TopOpeBRepBuildShapeSet; s: TopoDS_Shape;
                checkgeom: bool = false): bool {.cdecl, importcpp: "CheckShape",
    header: "TopOpeBRepBuild_ShapeSet.hxx".}
proc dumpName*(this: TopOpeBRepBuildShapeSet; os: var StandardOStream;
              str: TCollectionAsciiString) {.noSideEffect, cdecl,
    importcpp: "DumpName", header: "TopOpeBRepBuild_ShapeSet.hxx".}
proc dumpCheck*(this: TopOpeBRepBuildShapeSet; os: var StandardOStream;
               str: TCollectionAsciiString; s: TopoDS_Shape; chk: bool) {.
    noSideEffect, cdecl, importcpp: "DumpCheck", header: "TopOpeBRepBuild_ShapeSet.hxx".}
proc dumpSS*(this: var TopOpeBRepBuildShapeSet) {.cdecl, importcpp: "DumpSS",
    header: "TopOpeBRepBuild_ShapeSet.hxx".}
proc dumpBB*(this: var TopOpeBRepBuildShapeSet) {.cdecl, importcpp: "DumpBB",
    header: "TopOpeBRepBuild_ShapeSet.hxx".}
proc dEBName*(this: var TopOpeBRepBuildShapeSet; n: TCollectionAsciiString) {.cdecl,
    importcpp: "DEBName", header: "TopOpeBRepBuild_ShapeSet.hxx".}
proc dEBName*(this: TopOpeBRepBuildShapeSet): TCollectionAsciiString {.noSideEffect,
    cdecl, importcpp: "DEBName", header: "TopOpeBRepBuild_ShapeSet.hxx".}
proc dEBNumber*(this: var TopOpeBRepBuildShapeSet; i: cint) {.cdecl,
    importcpp: "DEBNumber", header: "TopOpeBRepBuild_ShapeSet.hxx".}
proc dEBNumber*(this: TopOpeBRepBuildShapeSet): cint {.noSideEffect, cdecl,
    importcpp: "DEBNumber", header: "TopOpeBRepBuild_ShapeSet.hxx".}
proc sName*(this: TopOpeBRepBuildShapeSet; s: TopoDS_Shape;
           sb: TCollectionAsciiString = newTCollectionAsciiString(""); sa: TCollectionAsciiString = newTCollectionAsciiString("")): TCollectionAsciiString {.
    noSideEffect, cdecl, importcpp: "SName", header: "TopOpeBRepBuild_ShapeSet.hxx".}
proc sNameori*(this: TopOpeBRepBuildShapeSet; s: TopoDS_Shape;
              sb: TCollectionAsciiString = newTCollectionAsciiString(""); sa: TCollectionAsciiString = newTCollectionAsciiString("")): TCollectionAsciiString {.
    noSideEffect, cdecl, importcpp: "SNameori", header: "TopOpeBRepBuild_ShapeSet.hxx".}
proc sName*(this: TopOpeBRepBuildShapeSet; s: TopToolsListOfShape;
           sb: TCollectionAsciiString = newTCollectionAsciiString(""); sa: TCollectionAsciiString = newTCollectionAsciiString("")): TCollectionAsciiString {.
    noSideEffect, cdecl, importcpp: "SName", header: "TopOpeBRepBuild_ShapeSet.hxx".}
proc sNameori*(this: TopOpeBRepBuildShapeSet; s: TopToolsListOfShape;
              sb: TCollectionAsciiString = newTCollectionAsciiString(""); sa: TCollectionAsciiString = newTCollectionAsciiString("")): TCollectionAsciiString {.
    noSideEffect, cdecl, importcpp: "SNameori", header: "TopOpeBRepBuild_ShapeSet.hxx".}