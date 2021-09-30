##  Created on: 1993-07-19
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

discard "forward decl of BRep_Builder"
discard "forward decl of TopoDS_Shape"
type
  BRepToolsShapeSet* {.importcpp: "BRepTools_ShapeSet",
                      header: "BRepTools_ShapeSet.hxx", bycopy.} = object of TopToolsShapeSet


proc `new`*(this: var BRepToolsShapeSet; theSize: csize_t): pointer {.
    importcpp: "BRepTools_ShapeSet::operator new",
    header: "BRepTools_ShapeSet.hxx".}
proc `delete`*(this: var BRepToolsShapeSet; theAddress: pointer) {.
    importcpp: "BRepTools_ShapeSet::operator delete",
    header: "BRepTools_ShapeSet.hxx".}
proc `new[]`*(this: var BRepToolsShapeSet; theSize: csize_t): pointer {.
    importcpp: "BRepTools_ShapeSet::operator new[]",
    header: "BRepTools_ShapeSet.hxx".}
proc `delete[]`*(this: var BRepToolsShapeSet; theAddress: pointer) {.
    importcpp: "BRepTools_ShapeSet::operator delete[]",
    header: "BRepTools_ShapeSet.hxx".}
proc `new`*(this: var BRepToolsShapeSet; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "BRepTools_ShapeSet::operator new",
    header: "BRepTools_ShapeSet.hxx".}
proc `delete`*(this: var BRepToolsShapeSet; a2: pointer; a3: pointer) {.
    importcpp: "BRepTools_ShapeSet::operator delete",
    header: "BRepTools_ShapeSet.hxx".}
proc constructBRepToolsShapeSet*(isWithTriangles: StandardBoolean = true): BRepToolsShapeSet {.
    constructor, importcpp: "BRepTools_ShapeSet(@)",
    header: "BRepTools_ShapeSet.hxx".}
proc constructBRepToolsShapeSet*(b: BRepBuilder;
                                isWithTriangles: StandardBoolean = true): BRepToolsShapeSet {.
    constructor, importcpp: "BRepTools_ShapeSet(@)",
    header: "BRepTools_ShapeSet.hxx".}
proc clear*(this: var BRepToolsShapeSet) {.importcpp: "Clear",
                                       header: "BRepTools_ShapeSet.hxx".}
proc addGeometry*(this: var BRepToolsShapeSet; s: TopoDS_Shape) {.
    importcpp: "AddGeometry", header: "BRepTools_ShapeSet.hxx".}
proc dumpGeometry*(this: BRepToolsShapeSet; os: var StandardOStream) {.noSideEffect,
    importcpp: "DumpGeometry", header: "BRepTools_ShapeSet.hxx".}
proc writeGeometry*(this: var BRepToolsShapeSet; os: var StandardOStream;
                   theProgress: MessageProgressRange = messageProgressRange()) {.
    importcpp: "WriteGeometry", header: "BRepTools_ShapeSet.hxx".}
proc readGeometry*(this: var BRepToolsShapeSet; `is`: var StandardIStream;
                  theProgress: MessageProgressRange = messageProgressRange()) {.
    importcpp: "ReadGeometry", header: "BRepTools_ShapeSet.hxx".}
proc dumpGeometry*(this: BRepToolsShapeSet; s: TopoDS_Shape; os: var StandardOStream) {.
    noSideEffect, importcpp: "DumpGeometry", header: "BRepTools_ShapeSet.hxx".}
proc writeGeometry*(this: BRepToolsShapeSet; s: TopoDS_Shape; os: var StandardOStream) {.
    noSideEffect, importcpp: "WriteGeometry", header: "BRepTools_ShapeSet.hxx".}
proc readGeometry*(this: var BRepToolsShapeSet; t: TopAbsShapeEnum;
                  `is`: var StandardIStream; s: var TopoDS_Shape) {.
    importcpp: "ReadGeometry", header: "BRepTools_ShapeSet.hxx".}
proc addShapes*(this: var BRepToolsShapeSet; s1: var TopoDS_Shape; s2: TopoDS_Shape) {.
    importcpp: "AddShapes", header: "BRepTools_ShapeSet.hxx".}
proc check*(this: var BRepToolsShapeSet; t: TopAbsShapeEnum; s: var TopoDS_Shape) {.
    importcpp: "Check", header: "BRepTools_ShapeSet.hxx".}
proc readPolygon3D*(this: var BRepToolsShapeSet; `is`: var StandardIStream;
                   theProgress: MessageProgressRange = messageProgressRange()) {.
    importcpp: "ReadPolygon3D", header: "BRepTools_ShapeSet.hxx".}
proc writePolygon3D*(this: BRepToolsShapeSet; os: var StandardOStream;
                    compact: StandardBoolean = true;
                    theProgress: MessageProgressRange = messageProgressRange()) {.
    noSideEffect, importcpp: "WritePolygon3D", header: "BRepTools_ShapeSet.hxx".}
proc dumpPolygon3D*(this: BRepToolsShapeSet; os: var StandardOStream) {.noSideEffect,
    importcpp: "DumpPolygon3D", header: "BRepTools_ShapeSet.hxx".}
proc readTriangulation*(this: var BRepToolsShapeSet; `is`: var StandardIStream;
    theProgress: MessageProgressRange = messageProgressRange()) {.
    importcpp: "ReadTriangulation", header: "BRepTools_ShapeSet.hxx".}
proc writeTriangulation*(this: BRepToolsShapeSet; os: var StandardOStream;
                        compact: StandardBoolean = true; theProgress: MessageProgressRange = messageProgressRange()) {.
    noSideEffect, importcpp: "WriteTriangulation", header: "BRepTools_ShapeSet.hxx".}
proc dumpTriangulation*(this: BRepToolsShapeSet; os: var StandardOStream) {.
    noSideEffect, importcpp: "DumpTriangulation", header: "BRepTools_ShapeSet.hxx".}
proc readPolygonOnTriangulation*(this: var BRepToolsShapeSet;
                                `is`: var StandardIStream; theProgress: MessageProgressRange = messageProgressRange()) {.
    importcpp: "ReadPolygonOnTriangulation", header: "BRepTools_ShapeSet.hxx".}
proc writePolygonOnTriangulation*(this: BRepToolsShapeSet; os: var StandardOStream;
                                 compact: StandardBoolean = true; theProgress: MessageProgressRange = messageProgressRange()) {.
    noSideEffect, importcpp: "WritePolygonOnTriangulation",
    header: "BRepTools_ShapeSet.hxx".}
proc dumpPolygonOnTriangulation*(this: BRepToolsShapeSet; os: var StandardOStream) {.
    noSideEffect, importcpp: "DumpPolygonOnTriangulation",
    header: "BRepTools_ShapeSet.hxx".}