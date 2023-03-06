import ../topods/topods_types
import ../topabs/topabs_types
import ../tcollection/tcollection_types
import ../standard/standard_types
import toptools_types
import ../message/[message_types, message_progressrange]




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



proc newTopToolsShapeSet*(): TopToolsShapeSet {.cdecl, constructor,
    importcpp: "TopTools_ShapeSet(@)", header: "TopTools_ShapeSet.hxx".}
proc destroyTopToolsShapeSet*(this: var TopToolsShapeSet) {.cdecl,
    importcpp: "#.~TopTools_ShapeSet()", header: "TopTools_ShapeSet.hxx".}
proc setFormatNb*(this: var TopToolsShapeSet; theFormatNb: cint) {.cdecl,
    importcpp: "SetFormatNb", header: "TopTools_ShapeSet.hxx".}
proc formatNb*(this: TopToolsShapeSet): cint {.noSideEffect, cdecl,
    importcpp: "FormatNb", header: "TopTools_ShapeSet.hxx".}
proc clear*(this: var TopToolsShapeSet) {.cdecl, importcpp: "Clear", header: "TopTools_ShapeSet.hxx".}
proc add*(this: var TopToolsShapeSet; s: TopoDS_Shape): cint {.cdecl, importcpp: "Add",
    header: "TopTools_ShapeSet.hxx".}
proc shape*(this: TopToolsShapeSet; i: cint): TopoDS_Shape {.noSideEffect, cdecl,
    importcpp: "Shape", header: "TopTools_ShapeSet.hxx".}
proc index*(this: TopToolsShapeSet; s: TopoDS_Shape): cint {.noSideEffect, cdecl,
    importcpp: "Index", header: "TopTools_ShapeSet.hxx".}
proc locations*(this: TopToolsShapeSet): TopToolsLocationSet {.noSideEffect, cdecl,
    importcpp: "Locations", header: "TopTools_ShapeSet.hxx".}
proc changeLocations*(this: var TopToolsShapeSet): var TopToolsLocationSet {.cdecl,
    importcpp: "ChangeLocations", header: "TopTools_ShapeSet.hxx".}
proc dumpExtent*(this: TopToolsShapeSet; os: var StandardOStream): var StandardOStream {.
    noSideEffect, cdecl, importcpp: "DumpExtent", header: "TopTools_ShapeSet.hxx".}
proc dumpExtent*(this: TopToolsShapeSet; s: var TCollectionAsciiString) {.
    noSideEffect, cdecl, importcpp: "DumpExtent", header: "TopTools_ShapeSet.hxx".}
proc dump*(this: TopToolsShapeSet; os: var StandardOStream) {.noSideEffect, cdecl,
    importcpp: "Dump", header: "TopTools_ShapeSet.hxx".}
proc write*(this: var TopToolsShapeSet; os: var StandardOStream;
           theProgress: MessageProgressRange = newMessageProgressRange()) {.cdecl,
    importcpp: "Write", header: "TopTools_ShapeSet.hxx".}
proc read*(this: var TopToolsShapeSet; `is`: var StandardIStream;
          theProgress: MessageProgressRange = newMessageProgressRange()) {.cdecl,
    importcpp: "Read", header: "TopTools_ShapeSet.hxx".}
proc dump*(this: TopToolsShapeSet; s: TopoDS_Shape; os: var StandardOStream) {.
    noSideEffect, cdecl, importcpp: "Dump", header: "TopTools_ShapeSet.hxx".}
proc write*(this: TopToolsShapeSet; s: TopoDS_Shape; os: var StandardOStream) {.
    noSideEffect, cdecl, importcpp: "Write", header: "TopTools_ShapeSet.hxx".}
proc read*(this: TopToolsShapeSet; s: var TopoDS_Shape; `is`: var StandardIStream) {.
    noSideEffect, cdecl, importcpp: "Read", header: "TopTools_ShapeSet.hxx".}
proc addGeometry*(this: var TopToolsShapeSet; s: TopoDS_Shape) {.cdecl,
    importcpp: "AddGeometry", header: "TopTools_ShapeSet.hxx".}
proc dumpGeometry*(this: TopToolsShapeSet; os: var StandardOStream) {.noSideEffect,
    cdecl, importcpp: "DumpGeometry", header: "TopTools_ShapeSet.hxx".}
proc writeGeometry*(this: var TopToolsShapeSet; os: var StandardOStream;
                   theProgress: MessageProgressRange = newMessageProgressRange()) {.
    cdecl, importcpp: "WriteGeometry", header: "TopTools_ShapeSet.hxx".}
proc readGeometry*(this: var TopToolsShapeSet; `is`: var StandardIStream;
                  theProgress: MessageProgressRange = newMessageProgressRange()) {.
    cdecl, importcpp: "ReadGeometry", header: "TopTools_ShapeSet.hxx".}
proc dumpGeometry*(this: TopToolsShapeSet; s: TopoDS_Shape; os: var StandardOStream) {.
    noSideEffect, cdecl, importcpp: "DumpGeometry", header: "TopTools_ShapeSet.hxx".}
proc writeGeometry*(this: TopToolsShapeSet; s: TopoDS_Shape; os: var StandardOStream) {.
    noSideEffect, cdecl, importcpp: "WriteGeometry", header: "TopTools_ShapeSet.hxx".}
proc readGeometry*(this: var TopToolsShapeSet; t: TopAbsShapeEnum;
                  `is`: var StandardIStream; s: var TopoDS_Shape) {.cdecl,
    importcpp: "ReadGeometry", header: "TopTools_ShapeSet.hxx".}
proc addShapes*(this: var TopToolsShapeSet; s1: var TopoDS_Shape; s2: TopoDS_Shape) {.
    cdecl, importcpp: "AddShapes", header: "TopTools_ShapeSet.hxx".}
proc check*(this: var TopToolsShapeSet; t: TopAbsShapeEnum; s: var TopoDS_Shape) {.cdecl,
    importcpp: "Check", header: "TopTools_ShapeSet.hxx".}
proc nbShapes*(this: TopToolsShapeSet): cint {.noSideEffect, cdecl,
    importcpp: "NbShapes", header: "TopTools_ShapeSet.hxx".}


