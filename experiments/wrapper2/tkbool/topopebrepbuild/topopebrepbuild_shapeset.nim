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


proc newTopOpeBRepBuildShapeSet*(subShapeType: TopAbsShapeEnum;
                                checkshape: bool = true): TopOpeBRepBuildShapeSet {.
    cdecl, constructor, importcpp: "TopOpeBRepBuild_ShapeSet(@)", dynlib: tkfillet.}
proc destroyTopOpeBRepBuildShapeSet*(this: var TopOpeBRepBuildShapeSet) {.cdecl,
    importcpp: "#.~TopOpeBRepBuild_ShapeSet()", dynlib: tkfillet.}
proc addShape*(this: var TopOpeBRepBuildShapeSet; s: TopoDS_Shape) {.cdecl,
    importcpp: "AddShape", dynlib: tkfillet.}
proc addStartElement*(this: var TopOpeBRepBuildShapeSet; s: TopoDS_Shape) {.cdecl,
    importcpp: "AddStartElement", dynlib: tkfillet.}
proc addElement*(this: var TopOpeBRepBuildShapeSet; s: TopoDS_Shape) {.cdecl,
    importcpp: "AddElement", dynlib: tkfillet.}
proc startElements*(this: TopOpeBRepBuildShapeSet): TopToolsListOfShape {.
    noSideEffect, cdecl, importcpp: "StartElements", dynlib: tkfillet.}
proc initShapes*(this: var TopOpeBRepBuildShapeSet) {.cdecl, importcpp: "InitShapes",
    dynlib: tkfillet.}
proc moreShapes*(this: TopOpeBRepBuildShapeSet): bool {.noSideEffect, cdecl,
    importcpp: "MoreShapes", dynlib: tkfillet.}
proc nextShape*(this: var TopOpeBRepBuildShapeSet) {.cdecl, importcpp: "NextShape",
    dynlib: tkfillet.}
proc shape*(this: TopOpeBRepBuildShapeSet): TopoDS_Shape {.noSideEffect, cdecl,
    importcpp: "Shape", dynlib: tkfillet.}
proc initStartElements*(this: var TopOpeBRepBuildShapeSet) {.cdecl,
    importcpp: "InitStartElements", dynlib: tkfillet.}
proc moreStartElements*(this: TopOpeBRepBuildShapeSet): bool {.noSideEffect, cdecl,
    importcpp: "MoreStartElements", dynlib: tkfillet.}
proc nextStartElement*(this: var TopOpeBRepBuildShapeSet) {.cdecl,
    importcpp: "NextStartElement", dynlib: tkfillet.}
proc startElement*(this: TopOpeBRepBuildShapeSet): TopoDS_Shape {.noSideEffect,
    cdecl, importcpp: "StartElement", dynlib: tkfillet.}
proc initNeighbours*(this: var TopOpeBRepBuildShapeSet; s: TopoDS_Shape) {.cdecl,
    importcpp: "InitNeighbours", dynlib: tkfillet.}
proc moreNeighbours*(this: var TopOpeBRepBuildShapeSet): bool {.cdecl,
    importcpp: "MoreNeighbours", dynlib: tkfillet.}
proc nextNeighbour*(this: var TopOpeBRepBuildShapeSet) {.cdecl,
    importcpp: "NextNeighbour", dynlib: tkfillet.}
proc neighbour*(this: TopOpeBRepBuildShapeSet): TopoDS_Shape {.noSideEffect, cdecl,
    importcpp: "Neighbour", dynlib: tkfillet.}
proc changeStartShapes*(this: var TopOpeBRepBuildShapeSet): var TopToolsListOfShape {.
    cdecl, importcpp: "ChangeStartShapes", dynlib: tkfillet.}
proc findNeighbours*(this: var TopOpeBRepBuildShapeSet) {.cdecl,
    importcpp: "FindNeighbours", dynlib: tkfillet.}
proc makeNeighboursList*(this: var TopOpeBRepBuildShapeSet; e: TopoDS_Shape;
                        v: TopoDS_Shape): TopToolsListOfShape {.cdecl,
    importcpp: "MakeNeighboursList", dynlib: tkfillet.}
proc maxNumberSubShape*(this: var TopOpeBRepBuildShapeSet; shape: TopoDS_Shape): cint {.
    cdecl, importcpp: "MaxNumberSubShape", dynlib: tkfillet.}
proc checkShape*(this: var TopOpeBRepBuildShapeSet; checkshape: bool) {.cdecl,
    importcpp: "CheckShape", dynlib: tkfillet.}
proc checkShape*(this: TopOpeBRepBuildShapeSet): bool {.noSideEffect, cdecl,
    importcpp: "CheckShape", dynlib: tkfillet.}
proc checkShape*(this: var TopOpeBRepBuildShapeSet; s: TopoDS_Shape;
                checkgeom: bool = false): bool {.cdecl, importcpp: "CheckShape",
    dynlib: tkfillet.}
proc dumpName*(this: TopOpeBRepBuildShapeSet; os: var StandardOStream;
              str: TCollectionAsciiString) {.noSideEffect, cdecl,
    importcpp: "DumpName", dynlib: tkfillet.}
proc dumpCheck*(this: TopOpeBRepBuildShapeSet; os: var StandardOStream;
               str: TCollectionAsciiString; s: TopoDS_Shape; chk: bool) {.
    noSideEffect, cdecl, importcpp: "DumpCheck", dynlib: tkfillet.}
proc dumpSS*(this: var TopOpeBRepBuildShapeSet) {.cdecl, importcpp: "DumpSS",
    dynlib: tkfillet.}
proc dumpBB*(this: var TopOpeBRepBuildShapeSet) {.cdecl, importcpp: "DumpBB",
    dynlib: tkfillet.}
proc dEBName*(this: var TopOpeBRepBuildShapeSet; n: TCollectionAsciiString) {.cdecl,
    importcpp: "DEBName", dynlib: tkfillet.}
proc dEBName*(this: TopOpeBRepBuildShapeSet): TCollectionAsciiString {.noSideEffect,
    cdecl, importcpp: "DEBName", dynlib: tkfillet.}
proc dEBNumber*(this: var TopOpeBRepBuildShapeSet; i: cint) {.cdecl,
    importcpp: "DEBNumber", dynlib: tkfillet.}
proc dEBNumber*(this: TopOpeBRepBuildShapeSet): cint {.noSideEffect, cdecl,
    importcpp: "DEBNumber", dynlib: tkfillet.}
proc sName*(this: TopOpeBRepBuildShapeSet; s: TopoDS_Shape;
           sb: TCollectionAsciiString = ""; sa: TCollectionAsciiString = ""): TCollectionAsciiString {.
    noSideEffect, cdecl, importcpp: "SName", dynlib: tkfillet.}
proc sNameori*(this: TopOpeBRepBuildShapeSet; s: TopoDS_Shape;
              sb: TCollectionAsciiString = ""; sa: TCollectionAsciiString = ""): TCollectionAsciiString {.
    noSideEffect, cdecl, importcpp: "SNameori", dynlib: tkfillet.}
proc sName*(this: TopOpeBRepBuildShapeSet; s: TopToolsListOfShape;
           sb: TCollectionAsciiString = ""; sa: TCollectionAsciiString = ""): TCollectionAsciiString {.
    noSideEffect, cdecl, importcpp: "SName", dynlib: tkfillet.}
proc sNameori*(this: TopOpeBRepBuildShapeSet; s: TopToolsListOfShape;
              sb: TCollectionAsciiString = ""; sa: TCollectionAsciiString = ""): TCollectionAsciiString {.
    noSideEffect, cdecl, importcpp: "SNameori", dynlib: tkfillet.}