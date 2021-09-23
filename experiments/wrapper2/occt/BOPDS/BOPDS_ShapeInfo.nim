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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Bnd/Bnd_Box,
  ../NCollection/NCollection_BaseAllocator, ../Standard/Standard_Integer,
  ../Standard/Standard_Boolean, ../TopAbs/TopAbs_ShapeEnum,
  ../TColStd/TColStd_ListOfInteger, ../TopoDS/TopoDS_Shape

## ! The class BOPDS_ShapeInfo is to store
## ! handy information about shape

type
  BOPDS_ShapeInfo* {.importcpp: "BOPDS_ShapeInfo", header: "BOPDS_ShapeInfo.hxx",
                    bycopy.} = object ## ! Empty contructor


proc constructBOPDS_ShapeInfo*(): BOPDS_ShapeInfo {.constructor,
    importcpp: "BOPDS_ShapeInfo(@)", header: "BOPDS_ShapeInfo.hxx".}
proc destroyBOPDS_ShapeInfo*(this: var BOPDS_ShapeInfo) {.
    importcpp: "#.~BOPDS_ShapeInfo()", header: "BOPDS_ShapeInfo.hxx".}
proc constructBOPDS_ShapeInfo*(theAllocator: handle[NCollection_BaseAllocator]): BOPDS_ShapeInfo {.
    constructor, importcpp: "BOPDS_ShapeInfo(@)", header: "BOPDS_ShapeInfo.hxx".}
proc SetShape*(this: var BOPDS_ShapeInfo; theS: TopoDS_Shape) {.importcpp: "SetShape",
    header: "BOPDS_ShapeInfo.hxx".}
proc Shape*(this: BOPDS_ShapeInfo): TopoDS_Shape {.noSideEffect, importcpp: "Shape",
    header: "BOPDS_ShapeInfo.hxx".}
proc SetShapeType*(this: var BOPDS_ShapeInfo; theType: TopAbs_ShapeEnum) {.
    importcpp: "SetShapeType", header: "BOPDS_ShapeInfo.hxx".}
proc ShapeType*(this: BOPDS_ShapeInfo): TopAbs_ShapeEnum {.noSideEffect,
    importcpp: "ShapeType", header: "BOPDS_ShapeInfo.hxx".}
proc SetBox*(this: var BOPDS_ShapeInfo; theBox: Bnd_Box) {.importcpp: "SetBox",
    header: "BOPDS_ShapeInfo.hxx".}
proc Box*(this: BOPDS_ShapeInfo): Bnd_Box {.noSideEffect, importcpp: "Box",
                                        header: "BOPDS_ShapeInfo.hxx".}
proc ChangeBox*(this: var BOPDS_ShapeInfo): var Bnd_Box {.importcpp: "ChangeBox",
    header: "BOPDS_ShapeInfo.hxx".}
proc SubShapes*(this: BOPDS_ShapeInfo): TColStd_ListOfInteger {.noSideEffect,
    importcpp: "SubShapes", header: "BOPDS_ShapeInfo.hxx".}
proc ChangeSubShapes*(this: var BOPDS_ShapeInfo): var TColStd_ListOfInteger {.
    importcpp: "ChangeSubShapes", header: "BOPDS_ShapeInfo.hxx".}
proc HasSubShape*(this: BOPDS_ShapeInfo; theI: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "HasSubShape", header: "BOPDS_ShapeInfo.hxx".}
proc HasReference*(this: BOPDS_ShapeInfo): Standard_Boolean {.noSideEffect,
    importcpp: "HasReference", header: "BOPDS_ShapeInfo.hxx".}
proc SetReference*(this: var BOPDS_ShapeInfo; theI: Standard_Integer) {.
    importcpp: "SetReference", header: "BOPDS_ShapeInfo.hxx".}
proc Reference*(this: BOPDS_ShapeInfo): Standard_Integer {.noSideEffect,
    importcpp: "Reference", header: "BOPDS_ShapeInfo.hxx".}
proc HasBRep*(this: BOPDS_ShapeInfo): Standard_Boolean {.noSideEffect,
    importcpp: "HasBRep", header: "BOPDS_ShapeInfo.hxx".}
proc IsInterfering*(this: BOPDS_ShapeInfo): Standard_Boolean {.noSideEffect,
    importcpp: "IsInterfering", header: "BOPDS_ShapeInfo.hxx".}
proc HasFlag*(this: BOPDS_ShapeInfo): Standard_Boolean {.noSideEffect,
    importcpp: "HasFlag", header: "BOPDS_ShapeInfo.hxx".}
proc HasFlag*(this: BOPDS_ShapeInfo; theFlag: var Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "HasFlag", header: "BOPDS_ShapeInfo.hxx".}
proc SetFlag*(this: var BOPDS_ShapeInfo; theI: Standard_Integer) {.
    importcpp: "SetFlag", header: "BOPDS_ShapeInfo.hxx".}
proc Flag*(this: BOPDS_ShapeInfo): Standard_Integer {.noSideEffect,
    importcpp: "Flag", header: "BOPDS_ShapeInfo.hxx".}
proc Dump*(this: BOPDS_ShapeInfo) {.noSideEffect, importcpp: "Dump",
                                 header: "BOPDS_ShapeInfo.hxx".}