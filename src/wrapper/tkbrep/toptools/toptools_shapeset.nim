##  Created on: 1993-07-01
##  Created by: Remi LEQUETTE
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
discard "forward decl of TopTools_LocationSet"
discard "forward decl of TCollection_AsciiString"
type
  TopToolsShapeSet* {.importcpp: "TopTools_ShapeSet",
                     header: "TopTools_ShapeSet.hxx", bycopy.} = object ## ! Builds an empty ShapeSet.
                                                                   ## ! Reads  from <IS>  a shape  and  returns  it in  S.
                                                                   ## ! <NbShapes> is the number of tshapes in the set.


proc newTopToolsShapeSet*(): TopToolsShapeSet {.cdecl, constructor,
    importcpp: "TopTools_ShapeSet(@)", dynlib: tkbrep.}
proc destroyTopToolsShapeSet*(this: var TopToolsShapeSet) {.cdecl,
    importcpp: "#.~TopTools_ShapeSet()", dynlib: tkbrep.}
proc setFormatNb*(this: var TopToolsShapeSet; theFormatNb: cint) {.cdecl,
    importcpp: "SetFormatNb", dynlib: tkbrep.}
proc formatNb*(this: TopToolsShapeSet): cint {.noSideEffect, cdecl,
    importcpp: "FormatNb", dynlib: tkbrep.}
proc clear*(this: var TopToolsShapeSet) {.cdecl, importcpp: "Clear", dynlib: tkbrep.}
proc add*(this: var TopToolsShapeSet; s: TopoDS_Shape): cint {.cdecl, importcpp: "Add",
    dynlib: tkbrep.}
proc shape*(this: TopToolsShapeSet; i: cint): TopoDS_Shape {.noSideEffect, cdecl,
    importcpp: "Shape", dynlib: tkbrep.}
proc index*(this: TopToolsShapeSet; s: TopoDS_Shape): cint {.noSideEffect, cdecl,
    importcpp: "Index", dynlib: tkbrep.}
proc locations*(this: TopToolsShapeSet): TopToolsLocationSet {.noSideEffect, cdecl,
    importcpp: "Locations", dynlib: tkbrep.}
proc changeLocations*(this: var TopToolsShapeSet): var TopToolsLocationSet {.cdecl,
    importcpp: "ChangeLocations", dynlib: tkbrep.}
proc dumpExtent*(this: TopToolsShapeSet; os: var StandardOStream): var StandardOStream {.
    noSideEffect, cdecl, importcpp: "DumpExtent", dynlib: tkbrep.}
proc dumpExtent*(this: TopToolsShapeSet; s: var TCollectionAsciiString) {.
    noSideEffect, cdecl, importcpp: "DumpExtent", dynlib: tkbrep.}
proc dump*(this: TopToolsShapeSet; os: var StandardOStream) {.noSideEffect, cdecl,
    importcpp: "Dump", dynlib: tkbrep.}
proc write*(this: var TopToolsShapeSet; os: var StandardOStream;
           theProgress: MessageProgressRange = newMessageProgressRange()) {.cdecl,
    importcpp: "Write", dynlib: tkbrep.}
proc read*(this: var TopToolsShapeSet; `is`: var StandardIStream;
          theProgress: MessageProgressRange = newMessageProgressRange()) {.cdecl,
    importcpp: "Read", dynlib: tkbrep.}
proc dump*(this: TopToolsShapeSet; s: TopoDS_Shape; os: var StandardOStream) {.
    noSideEffect, cdecl, importcpp: "Dump", dynlib: tkbrep.}
proc write*(this: TopToolsShapeSet; s: TopoDS_Shape; os: var StandardOStream) {.
    noSideEffect, cdecl, importcpp: "Write", dynlib: tkbrep.}
proc read*(this: TopToolsShapeSet; s: var TopoDS_Shape; `is`: var StandardIStream) {.
    noSideEffect, cdecl, importcpp: "Read", dynlib: tkbrep.}
proc addGeometry*(this: var TopToolsShapeSet; s: TopoDS_Shape) {.cdecl,
    importcpp: "AddGeometry", dynlib: tkbrep.}
proc dumpGeometry*(this: TopToolsShapeSet; os: var StandardOStream) {.noSideEffect,
    cdecl, importcpp: "DumpGeometry", dynlib: tkbrep.}
proc writeGeometry*(this: var TopToolsShapeSet; os: var StandardOStream;
                   theProgress: MessageProgressRange = newMessageProgressRange()) {.
    cdecl, importcpp: "WriteGeometry", dynlib: tkbrep.}
proc readGeometry*(this: var TopToolsShapeSet; `is`: var StandardIStream;
                  theProgress: MessageProgressRange = newMessageProgressRange()) {.
    cdecl, importcpp: "ReadGeometry", dynlib: tkbrep.}
proc dumpGeometry*(this: TopToolsShapeSet; s: TopoDS_Shape; os: var StandardOStream) {.
    noSideEffect, cdecl, importcpp: "DumpGeometry", dynlib: tkbrep.}
proc writeGeometry*(this: TopToolsShapeSet; s: TopoDS_Shape; os: var StandardOStream) {.
    noSideEffect, cdecl, importcpp: "WriteGeometry", dynlib: tkbrep.}
proc readGeometry*(this: var TopToolsShapeSet; t: TopAbsShapeEnum;
                  `is`: var StandardIStream; s: var TopoDS_Shape) {.cdecl,
    importcpp: "ReadGeometry", dynlib: tkbrep.}
proc addShapes*(this: var TopToolsShapeSet; s1: var TopoDS_Shape; s2: TopoDS_Shape) {.
    cdecl, importcpp: "AddShapes", dynlib: tkbrep.}
proc check*(this: var TopToolsShapeSet; t: TopAbsShapeEnum; s: var TopoDS_Shape) {.cdecl,
    importcpp: "Check", dynlib: tkbrep.}
proc nbShapes*(this: TopToolsShapeSet): cint {.noSideEffect, cdecl,
    importcpp: "NbShapes", dynlib: tkbrep.}