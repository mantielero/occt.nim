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
proc constructBOPDS_FaceInfo*(theAllocator: Handle[NCollectionBaseAllocator]): BOPDS_FaceInfo {.
    constructor, importcpp: "BOPDS_FaceInfo(@)", header: "BOPDS_FaceInfo.hxx".}
proc clear*(this: var BOPDS_FaceInfo) {.importcpp: "Clear",
                                    header: "BOPDS_FaceInfo.hxx".}
proc setIndex*(this: var BOPDS_FaceInfo; theI: StandardInteger) {.
    importcpp: "SetIndex", header: "BOPDS_FaceInfo.hxx".}
proc index*(this: BOPDS_FaceInfo): StandardInteger {.noSideEffect,
    importcpp: "Index", header: "BOPDS_FaceInfo.hxx".}
proc paveBlocksIn*(this: BOPDS_FaceInfo): BOPDS_IndexedMapOfPaveBlock {.
    noSideEffect, importcpp: "PaveBlocksIn", header: "BOPDS_FaceInfo.hxx".}
proc changePaveBlocksIn*(this: var BOPDS_FaceInfo): var BOPDS_IndexedMapOfPaveBlock {.
    importcpp: "ChangePaveBlocksIn", header: "BOPDS_FaceInfo.hxx".}
proc verticesIn*(this: BOPDS_FaceInfo): TColStdMapOfInteger {.noSideEffect,
    importcpp: "VerticesIn", header: "BOPDS_FaceInfo.hxx".}
proc changeVerticesIn*(this: var BOPDS_FaceInfo): var TColStdMapOfInteger {.
    importcpp: "ChangeVerticesIn", header: "BOPDS_FaceInfo.hxx".}
proc paveBlocksOn*(this: BOPDS_FaceInfo): BOPDS_IndexedMapOfPaveBlock {.
    noSideEffect, importcpp: "PaveBlocksOn", header: "BOPDS_FaceInfo.hxx".}
proc changePaveBlocksOn*(this: var BOPDS_FaceInfo): var BOPDS_IndexedMapOfPaveBlock {.
    importcpp: "ChangePaveBlocksOn", header: "BOPDS_FaceInfo.hxx".}
proc verticesOn*(this: BOPDS_FaceInfo): TColStdMapOfInteger {.noSideEffect,
    importcpp: "VerticesOn", header: "BOPDS_FaceInfo.hxx".}
proc changeVerticesOn*(this: var BOPDS_FaceInfo): var TColStdMapOfInteger {.
    importcpp: "ChangeVerticesOn", header: "BOPDS_FaceInfo.hxx".}
proc paveBlocksSc*(this: BOPDS_FaceInfo): BOPDS_IndexedMapOfPaveBlock {.
    noSideEffect, importcpp: "PaveBlocksSc", header: "BOPDS_FaceInfo.hxx".}
proc changePaveBlocksSc*(this: var BOPDS_FaceInfo): var BOPDS_IndexedMapOfPaveBlock {.
    importcpp: "ChangePaveBlocksSc", header: "BOPDS_FaceInfo.hxx".}
proc verticesSc*(this: BOPDS_FaceInfo): TColStdMapOfInteger {.noSideEffect,
    importcpp: "VerticesSc", header: "BOPDS_FaceInfo.hxx".}
proc changeVerticesSc*(this: var BOPDS_FaceInfo): var TColStdMapOfInteger {.
    importcpp: "ChangeVerticesSc", header: "BOPDS_FaceInfo.hxx".}

