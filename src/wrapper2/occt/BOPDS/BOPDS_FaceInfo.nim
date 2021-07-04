##  Created by: Peter KURNEV
##  Copyright (c) 2010-2014 OPEN CASCADE SAS
##  Copyright (c) 2007-2010 CEA/DEN, EDF R&D, OPEN CASCADE
##  Copyright (c) 2003-2007 OPEN CASCADE, EADS/CCR, LIP6, CEA/DEN, CEDRAT,
##                          EDF R&D, LEG, PRINCIPIA R&D, BUREAU VERITAS
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
  ../Standard/Standard_Handle, BOPDS_IndexedMapOfPaveBlock,
  ../NCollection/NCollection_BaseAllocator, ../Standard/Standard_Integer,
  ../TColStd/TColStd_MapOfInteger

## ! The class BOPDS_FaceInfo is to store
## ! handy information about state of face

type
  BOPDS_FaceInfo* {.importcpp: "BOPDS_FaceInfo", header: "BOPDS_FaceInfo.hxx", bycopy.} = object ##
                                                                                         ## !
                                                                                         ## Empty
                                                                                         ## contructor


proc constructBOPDS_FaceInfo*(): BOPDS_FaceInfo {.constructor,
    importcpp: "BOPDS_FaceInfo(@)", header: "BOPDS_FaceInfo.hxx".}
proc destroyBOPDS_FaceInfo*(this: var BOPDS_FaceInfo) {.
    importcpp: "#.~BOPDS_FaceInfo()", header: "BOPDS_FaceInfo.hxx".}
proc constructBOPDS_FaceInfo*(theAllocator: handle[NCollection_BaseAllocator]): BOPDS_FaceInfo {.
    constructor, importcpp: "BOPDS_FaceInfo(@)", header: "BOPDS_FaceInfo.hxx".}
proc Clear*(this: var BOPDS_FaceInfo) {.importcpp: "Clear",
                                    header: "BOPDS_FaceInfo.hxx".}
proc SetIndex*(this: var BOPDS_FaceInfo; theI: Standard_Integer) {.
    importcpp: "SetIndex", header: "BOPDS_FaceInfo.hxx".}
proc Index*(this: BOPDS_FaceInfo): Standard_Integer {.noSideEffect,
    importcpp: "Index", header: "BOPDS_FaceInfo.hxx".}
proc PaveBlocksIn*(this: BOPDS_FaceInfo): BOPDS_IndexedMapOfPaveBlock {.
    noSideEffect, importcpp: "PaveBlocksIn", header: "BOPDS_FaceInfo.hxx".}
proc ChangePaveBlocksIn*(this: var BOPDS_FaceInfo): var BOPDS_IndexedMapOfPaveBlock {.
    importcpp: "ChangePaveBlocksIn", header: "BOPDS_FaceInfo.hxx".}
proc VerticesIn*(this: BOPDS_FaceInfo): TColStd_MapOfInteger {.noSideEffect,
    importcpp: "VerticesIn", header: "BOPDS_FaceInfo.hxx".}
proc ChangeVerticesIn*(this: var BOPDS_FaceInfo): var TColStd_MapOfInteger {.
    importcpp: "ChangeVerticesIn", header: "BOPDS_FaceInfo.hxx".}
proc PaveBlocksOn*(this: BOPDS_FaceInfo): BOPDS_IndexedMapOfPaveBlock {.
    noSideEffect, importcpp: "PaveBlocksOn", header: "BOPDS_FaceInfo.hxx".}
proc ChangePaveBlocksOn*(this: var BOPDS_FaceInfo): var BOPDS_IndexedMapOfPaveBlock {.
    importcpp: "ChangePaveBlocksOn", header: "BOPDS_FaceInfo.hxx".}
proc VerticesOn*(this: BOPDS_FaceInfo): TColStd_MapOfInteger {.noSideEffect,
    importcpp: "VerticesOn", header: "BOPDS_FaceInfo.hxx".}
proc ChangeVerticesOn*(this: var BOPDS_FaceInfo): var TColStd_MapOfInteger {.
    importcpp: "ChangeVerticesOn", header: "BOPDS_FaceInfo.hxx".}
proc PaveBlocksSc*(this: BOPDS_FaceInfo): BOPDS_IndexedMapOfPaveBlock {.
    noSideEffect, importcpp: "PaveBlocksSc", header: "BOPDS_FaceInfo.hxx".}
proc ChangePaveBlocksSc*(this: var BOPDS_FaceInfo): var BOPDS_IndexedMapOfPaveBlock {.
    importcpp: "ChangePaveBlocksSc", header: "BOPDS_FaceInfo.hxx".}
proc VerticesSc*(this: BOPDS_FaceInfo): TColStd_MapOfInteger {.noSideEffect,
    importcpp: "VerticesSc", header: "BOPDS_FaceInfo.hxx".}
proc ChangeVerticesSc*(this: var BOPDS_FaceInfo): var TColStd_MapOfInteger {.
    importcpp: "ChangeVerticesSc", header: "BOPDS_FaceInfo.hxx".}