##  Created on: 2004-05-11
##  Created by: Sergey ZARITCHNY <szy@opencascade.com>
##  Copyright (c) 2004-2014 OPEN CASCADE SAS
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
discard "forward decl of BinTools_LocationSet"
type
  BinToolsShapeSet* {.importcpp: "BinTools_ShapeSet",
                     header: "BinTools_ShapeSet.hxx", bycopy.} = object ## ! Builds an empty ShapeSet.
                                                                   ## ! Parameter
                                                                   ## <isWithTriangles> is added for XML Persistence


proc constructBinToolsShapeSet*(isWithTriangles: StandardBoolean = standardFalse): BinToolsShapeSet {.
    constructor, importcpp: "BinTools_ShapeSet(@)", header: "BinTools_ShapeSet.hxx".}
proc destroyBinToolsShapeSet*(this: var BinToolsShapeSet) {.
    importcpp: "#.~BinTools_ShapeSet()", header: "BinTools_ShapeSet.hxx".}
proc isWithTriangles*(this: BinToolsShapeSet): StandardBoolean {.noSideEffect,
    importcpp: "IsWithTriangles", header: "BinTools_ShapeSet.hxx".}
proc setWithTriangles*(this: var BinToolsShapeSet; isWithTriangles: StandardBoolean) {.
    importcpp: "SetWithTriangles", header: "BinTools_ShapeSet.hxx".}
proc setFormatNb*(this: var BinToolsShapeSet; theFormatNb: StandardInteger) {.
    importcpp: "SetFormatNb", header: "BinTools_ShapeSet.hxx".}
proc formatNb*(this: BinToolsShapeSet): StandardInteger {.noSideEffect,
    importcpp: "FormatNb", header: "BinTools_ShapeSet.hxx".}
proc clear*(this: var BinToolsShapeSet) {.importcpp: "Clear",
                                      header: "BinTools_ShapeSet.hxx".}
proc add*(this: var BinToolsShapeSet; s: TopoDS_Shape): StandardInteger {.
    importcpp: "Add", header: "BinTools_ShapeSet.hxx".}
proc shape*(this: BinToolsShapeSet; i: StandardInteger): TopoDS_Shape {.noSideEffect,
    importcpp: "Shape", header: "BinTools_ShapeSet.hxx".}
proc index*(this: BinToolsShapeSet; s: TopoDS_Shape): StandardInteger {.noSideEffect,
    importcpp: "Index", header: "BinTools_ShapeSet.hxx".}
proc locations*(this: BinToolsShapeSet): BinToolsLocationSet {.noSideEffect,
    importcpp: "Locations", header: "BinTools_ShapeSet.hxx".}
proc changeLocations*(this: var BinToolsShapeSet): var BinToolsLocationSet {.
    importcpp: "ChangeLocations", header: "BinTools_ShapeSet.hxx".}
proc nbShapes*(this: BinToolsShapeSet): StandardInteger {.noSideEffect,
    importcpp: "NbShapes", header: "BinTools_ShapeSet.hxx".}
proc write*(this: BinToolsShapeSet; os: var StandardOStream;
           theRange: MessageProgressRange = messageProgressRange()) {.noSideEffect,
    importcpp: "Write", header: "BinTools_ShapeSet.hxx".}
proc read*(this: var BinToolsShapeSet; `is`: var StandardIStream;
          theRange: MessageProgressRange = messageProgressRange()) {.
    importcpp: "Read", header: "BinTools_ShapeSet.hxx".}
proc write*(this: BinToolsShapeSet; s: TopoDS_Shape; os: var StandardOStream) {.
    noSideEffect, importcpp: "Write", header: "BinTools_ShapeSet.hxx".}
proc writeGeometry*(this: BinToolsShapeSet; os: var StandardOStream;
                   theRange: MessageProgressRange = messageProgressRange()) {.
    noSideEffect, importcpp: "WriteGeometry", header: "BinTools_ShapeSet.hxx".}
proc readGeometry*(this: var BinToolsShapeSet; `is`: var StandardIStream;
                  theRange: MessageProgressRange = messageProgressRange()) {.
    importcpp: "ReadGeometry", header: "BinTools_ShapeSet.hxx".}
proc read*(this: BinToolsShapeSet; s: var TopoDS_Shape; `is`: var StandardIStream;
          nbShapes: StandardInteger) {.noSideEffect, importcpp: "Read",
                                     header: "BinTools_ShapeSet.hxx".}
proc writeGeometry*(this: BinToolsShapeSet; s: TopoDS_Shape; os: var StandardOStream) {.
    noSideEffect, importcpp: "WriteGeometry", header: "BinTools_ShapeSet.hxx".}
proc readGeometry*(this: var BinToolsShapeSet; t: TopAbsShapeEnum;
                  `is`: var StandardIStream; s: var TopoDS_Shape) {.
    importcpp: "ReadGeometry", header: "BinTools_ShapeSet.hxx".}
proc addGeometry*(this: var BinToolsShapeSet; s: TopoDS_Shape) {.
    importcpp: "AddGeometry", header: "BinTools_ShapeSet.hxx".}
proc addShapes*(this: var BinToolsShapeSet; s1: var TopoDS_Shape; s2: TopoDS_Shape) {.
    importcpp: "AddShapes", header: "BinTools_ShapeSet.hxx".}
proc readPolygon3D*(this: var BinToolsShapeSet; `is`: var StandardIStream;
                   theRange: MessageProgressRange = messageProgressRange()) {.
    importcpp: "ReadPolygon3D", header: "BinTools_ShapeSet.hxx".}
proc writePolygon3D*(this: BinToolsShapeSet; os: var StandardOStream;
                    theRange: MessageProgressRange = messageProgressRange()) {.
    noSideEffect, importcpp: "WritePolygon3D", header: "BinTools_ShapeSet.hxx".}
proc readTriangulation*(this: var BinToolsShapeSet; `is`: var StandardIStream;
                       theRange: MessageProgressRange = messageProgressRange()) {.
    importcpp: "ReadTriangulation", header: "BinTools_ShapeSet.hxx".}
proc writeTriangulation*(this: BinToolsShapeSet; os: var StandardOStream;
                        theRange: MessageProgressRange = messageProgressRange()) {.
    noSideEffect, importcpp: "WriteTriangulation", header: "BinTools_ShapeSet.hxx".}
proc readPolygonOnTriangulation*(this: var BinToolsShapeSet;
                                `is`: var StandardIStream; theRange: MessageProgressRange = messageProgressRange()) {.
    importcpp: "ReadPolygonOnTriangulation", header: "BinTools_ShapeSet.hxx".}
proc writePolygonOnTriangulation*(this: BinToolsShapeSet; os: var StandardOStream;
    theRange: MessageProgressRange = messageProgressRange()) {.noSideEffect,
    importcpp: "WritePolygonOnTriangulation", header: "BinTools_ShapeSet.hxx".}

