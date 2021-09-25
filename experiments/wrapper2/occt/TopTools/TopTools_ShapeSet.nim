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


proc constructTopToolsShapeSet*(): TopToolsShapeSet {.constructor,
    importcpp: "TopTools_ShapeSet(@)", header: "TopTools_ShapeSet.hxx".}
proc destroyTopToolsShapeSet*(this: var TopToolsShapeSet) {.
    importcpp: "#.~TopTools_ShapeSet()", header: "TopTools_ShapeSet.hxx".}
proc setFormatNb*(this: var TopToolsShapeSet; theFormatNb: int) {.
    importcpp: "SetFormatNb", header: "TopTools_ShapeSet.hxx".}
proc formatNb*(this: TopToolsShapeSet): int {.noSideEffect, importcpp: "FormatNb",
    header: "TopTools_ShapeSet.hxx".}
proc clear*(this: var TopToolsShapeSet) {.importcpp: "Clear",
                                      header: "TopTools_ShapeSet.hxx".}
proc add*(this: var TopToolsShapeSet; s: TopoDS_Shape): int {.importcpp: "Add",
    header: "TopTools_ShapeSet.hxx".}
proc shape*(this: TopToolsShapeSet; i: int): TopoDS_Shape {.noSideEffect,
    importcpp: "Shape", header: "TopTools_ShapeSet.hxx".}
proc index*(this: TopToolsShapeSet; s: TopoDS_Shape): int {.noSideEffect,
    importcpp: "Index", header: "TopTools_ShapeSet.hxx".}
proc locations*(this: TopToolsShapeSet): TopToolsLocationSet {.noSideEffect,
    importcpp: "Locations", header: "TopTools_ShapeSet.hxx".}
proc changeLocations*(this: var TopToolsShapeSet): var TopToolsLocationSet {.
    importcpp: "ChangeLocations", header: "TopTools_ShapeSet.hxx".}
proc dumpExtent*(this: TopToolsShapeSet; os: var StandardOStream): var StandardOStream {.
    noSideEffect, importcpp: "DumpExtent", header: "TopTools_ShapeSet.hxx".}
proc dumpExtent*(this: TopToolsShapeSet; s: var TCollectionAsciiString) {.
    noSideEffect, importcpp: "DumpExtent", header: "TopTools_ShapeSet.hxx".}
proc dump*(this: TopToolsShapeSet; os: var StandardOStream) {.noSideEffect,
    importcpp: "Dump", header: "TopTools_ShapeSet.hxx".}
proc write*(this: var TopToolsShapeSet; os: var StandardOStream;
           theProgress: MessageProgressRange = messageProgressRange()) {.
    importcpp: "Write", header: "TopTools_ShapeSet.hxx".}
proc read*(this: var TopToolsShapeSet; `is`: var StandardIStream;
          theProgress: MessageProgressRange = messageProgressRange()) {.
    importcpp: "Read", header: "TopTools_ShapeSet.hxx".}
proc dump*(this: TopToolsShapeSet; s: TopoDS_Shape; os: var StandardOStream) {.
    noSideEffect, importcpp: "Dump", header: "TopTools_ShapeSet.hxx".}
proc write*(this: TopToolsShapeSet; s: TopoDS_Shape; os: var StandardOStream) {.
    noSideEffect, importcpp: "Write", header: "TopTools_ShapeSet.hxx".}
proc read*(this: TopToolsShapeSet; s: var TopoDS_Shape; `is`: var StandardIStream) {.
    noSideEffect, importcpp: "Read", header: "TopTools_ShapeSet.hxx".}
proc addGeometry*(this: var TopToolsShapeSet; s: TopoDS_Shape) {.
    importcpp: "AddGeometry", header: "TopTools_ShapeSet.hxx".}
proc dumpGeometry*(this: TopToolsShapeSet; os: var StandardOStream) {.noSideEffect,
    importcpp: "DumpGeometry", header: "TopTools_ShapeSet.hxx".}
proc writeGeometry*(this: var TopToolsShapeSet; os: var StandardOStream;
                   theProgress: MessageProgressRange = messageProgressRange()) {.
    importcpp: "WriteGeometry", header: "TopTools_ShapeSet.hxx".}
proc readGeometry*(this: var TopToolsShapeSet; `is`: var StandardIStream;
                  theProgress: MessageProgressRange = messageProgressRange()) {.
    importcpp: "ReadGeometry", header: "TopTools_ShapeSet.hxx".}
proc dumpGeometry*(this: TopToolsShapeSet; s: TopoDS_Shape; os: var StandardOStream) {.
    noSideEffect, importcpp: "DumpGeometry", header: "TopTools_ShapeSet.hxx".}
proc writeGeometry*(this: TopToolsShapeSet; s: TopoDS_Shape; os: var StandardOStream) {.
    noSideEffect, importcpp: "WriteGeometry", header: "TopTools_ShapeSet.hxx".}
proc readGeometry*(this: var TopToolsShapeSet; t: TopAbsShapeEnum;
                  `is`: var StandardIStream; s: var TopoDS_Shape) {.
    importcpp: "ReadGeometry", header: "TopTools_ShapeSet.hxx".}
proc addShapes*(this: var TopToolsShapeSet; s1: var TopoDS_Shape; s2: TopoDS_Shape) {.
    importcpp: "AddShapes", header: "TopTools_ShapeSet.hxx".}
proc check*(this: var TopToolsShapeSet; t: TopAbsShapeEnum; s: var TopoDS_Shape) {.
    importcpp: "Check", header: "TopTools_ShapeSet.hxx".}
proc nbShapes*(this: TopToolsShapeSet): int {.noSideEffect, importcpp: "NbShapes",
    header: "TopTools_ShapeSet.hxx".}
