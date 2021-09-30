##  Created by: Peter KURNEV
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

## ! The class BOPDS_ShapeInfo is to store
## ! handy information about shape

type
  BOPDS_ShapeInfo* {.importcpp: "BOPDS_ShapeInfo", header: "BOPDS_ShapeInfo.hxx",
                    bycopy.} = object ## ! Empty contructor


proc constructBOPDS_ShapeInfo*(): BOPDS_ShapeInfo {.constructor,
    importcpp: "BOPDS_ShapeInfo(@)", header: "BOPDS_ShapeInfo.hxx".}
proc destroyBOPDS_ShapeInfo*(this: var BOPDS_ShapeInfo) {.
    importcpp: "#.~BOPDS_ShapeInfo()", header: "BOPDS_ShapeInfo.hxx".}
proc constructBOPDS_ShapeInfo*(theAllocator: Handle[NCollectionBaseAllocator]): BOPDS_ShapeInfo {.
    constructor, importcpp: "BOPDS_ShapeInfo(@)", header: "BOPDS_ShapeInfo.hxx".}
proc setShape*(this: var BOPDS_ShapeInfo; theS: TopoDS_Shape) {.importcpp: "SetShape",
    header: "BOPDS_ShapeInfo.hxx".}
proc shape*(this: BOPDS_ShapeInfo): TopoDS_Shape {.noSideEffect, importcpp: "Shape",
    header: "BOPDS_ShapeInfo.hxx".}
proc setShapeType*(this: var BOPDS_ShapeInfo; theType: TopAbsShapeEnum) {.
    importcpp: "SetShapeType", header: "BOPDS_ShapeInfo.hxx".}
proc shapeType*(this: BOPDS_ShapeInfo): TopAbsShapeEnum {.noSideEffect,
    importcpp: "ShapeType", header: "BOPDS_ShapeInfo.hxx".}
proc setBox*(this: var BOPDS_ShapeInfo; theBox: BndBox) {.importcpp: "SetBox",
    header: "BOPDS_ShapeInfo.hxx".}
proc box*(this: BOPDS_ShapeInfo): BndBox {.noSideEffect, importcpp: "Box",
                                       header: "BOPDS_ShapeInfo.hxx".}
proc changeBox*(this: var BOPDS_ShapeInfo): var BndBox {.importcpp: "ChangeBox",
    header: "BOPDS_ShapeInfo.hxx".}
proc subShapes*(this: BOPDS_ShapeInfo): TColStdListOfInteger {.noSideEffect,
    importcpp: "SubShapes", header: "BOPDS_ShapeInfo.hxx".}
proc changeSubShapes*(this: var BOPDS_ShapeInfo): var TColStdListOfInteger {.
    importcpp: "ChangeSubShapes", header: "BOPDS_ShapeInfo.hxx".}
proc hasSubShape*(this: BOPDS_ShapeInfo; theI: cint): bool {.noSideEffect,
    importcpp: "HasSubShape", header: "BOPDS_ShapeInfo.hxx".}
proc hasReference*(this: BOPDS_ShapeInfo): bool {.noSideEffect,
    importcpp: "HasReference", header: "BOPDS_ShapeInfo.hxx".}
proc setReference*(this: var BOPDS_ShapeInfo; theI: cint) {.importcpp: "SetReference",
    header: "BOPDS_ShapeInfo.hxx".}
proc reference*(this: BOPDS_ShapeInfo): cint {.noSideEffect, importcpp: "Reference",
    header: "BOPDS_ShapeInfo.hxx".}
proc hasBRep*(this: BOPDS_ShapeInfo): bool {.noSideEffect, importcpp: "HasBRep",
    header: "BOPDS_ShapeInfo.hxx".}
proc isInterfering*(this: BOPDS_ShapeInfo): bool {.noSideEffect,
    importcpp: "IsInterfering", header: "BOPDS_ShapeInfo.hxx".}
proc hasFlag*(this: BOPDS_ShapeInfo): bool {.noSideEffect, importcpp: "HasFlag",
    header: "BOPDS_ShapeInfo.hxx".}
proc hasFlag*(this: BOPDS_ShapeInfo; theFlag: var cint): bool {.noSideEffect,
    importcpp: "HasFlag", header: "BOPDS_ShapeInfo.hxx".}
proc setFlag*(this: var BOPDS_ShapeInfo; theI: cint) {.importcpp: "SetFlag",
    header: "BOPDS_ShapeInfo.hxx".}
proc flag*(this: BOPDS_ShapeInfo): cint {.noSideEffect, importcpp: "Flag",
                                      header: "BOPDS_ShapeInfo.hxx".}
proc dump*(this: BOPDS_ShapeInfo) {.noSideEffect, importcpp: "Dump",
                                 header: "BOPDS_ShapeInfo.hxx".}

























