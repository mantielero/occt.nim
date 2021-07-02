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

## *
##  The class BOPDS_Interf is is to store the information about
##  the interference between two shapes.
##  The class BOPDS_Interf is root class
##
##
## =======================================================================
## function : BOPDS_Interf
## purpose  :
## =======================================================================

type
  BOPDS_Interf* {.importcpp: "BOPDS_Interf", header: "BOPDS_Interf.hxx", bycopy.} = object ## *
                                                                                   ##  Sets the indices of interferred shapes
                                                                                   ##  @param theIndex1
                                                                                   ##    index of the first shape
                                                                                   ##  @param theIndex2
                                                                                   ##    index of the second shape
                                                                                   ##


proc setIndices*(this: var BOPDS_Interf; theIndex1: StandardInteger;
                theIndex2: StandardInteger) {.importcpp: "SetIndices",
    header: "BOPDS_Interf.hxx".}
proc indices*(this: BOPDS_Interf; theIndex1: var StandardInteger;
             theIndex2: var StandardInteger) {.noSideEffect, importcpp: "Indices",
    header: "BOPDS_Interf.hxx".}
proc setIndex1*(this: var BOPDS_Interf; theIndex: StandardInteger) {.
    importcpp: "SetIndex1", header: "BOPDS_Interf.hxx".}
proc setIndex2*(this: var BOPDS_Interf; theIndex: StandardInteger) {.
    importcpp: "SetIndex2", header: "BOPDS_Interf.hxx".}
proc index1*(this: BOPDS_Interf): StandardInteger {.noSideEffect,
    importcpp: "Index1", header: "BOPDS_Interf.hxx".}
proc index2*(this: BOPDS_Interf): StandardInteger {.noSideEffect,
    importcpp: "Index2", header: "BOPDS_Interf.hxx".}
proc oppositeIndex*(this: BOPDS_Interf; theI: StandardInteger): StandardInteger {.
    noSideEffect, importcpp: "OppositeIndex", header: "BOPDS_Interf.hxx".}
proc contains*(this: BOPDS_Interf; theIndex: StandardInteger): StandardBoolean {.
    noSideEffect, importcpp: "Contains", header: "BOPDS_Interf.hxx".}
proc setIndexNew*(this: var BOPDS_Interf; theIndex: StandardInteger) {.
    importcpp: "SetIndexNew", header: "BOPDS_Interf.hxx".}
proc indexNew*(this: BOPDS_Interf): StandardInteger {.noSideEffect,
    importcpp: "IndexNew", header: "BOPDS_Interf.hxx".}
proc hasIndexNew*(this: BOPDS_Interf; theIndex: var StandardInteger): StandardBoolean {.
    noSideEffect, importcpp: "HasIndexNew", header: "BOPDS_Interf.hxx".}
proc hasIndexNew*(this: BOPDS_Interf): StandardBoolean {.noSideEffect,
    importcpp: "HasIndexNew", header: "BOPDS_Interf.hxx".}
## *
##  The class BOPDS_InterfVV is is to store the information about
##  the interference of the type vertex/vertex.
##
## =======================================================================
## function : BOPDS_InterfVV
## purpose  :
## =======================================================================

type
  BOPDS_InterfVV* {.importcpp: "BOPDS_InterfVV", header: "BOPDS_Interf.hxx", bycopy.} = object of BOPDS_Interf ## *
                                                                                                     ##   Constructor
                                                                                                     ##


proc constructBOPDS_InterfVV*(): BOPDS_InterfVV {.constructor,
    importcpp: "BOPDS_InterfVV(@)", header: "BOPDS_Interf.hxx".}
proc constructBOPDS_InterfVV*(theAllocator: Handle[NCollectionBaseAllocator]): BOPDS_InterfVV {.
    constructor, importcpp: "BOPDS_InterfVV(@)", header: "BOPDS_Interf.hxx".}
proc destroyBOPDS_InterfVV*(this: var BOPDS_InterfVV) {.
    importcpp: "#.~BOPDS_InterfVV()", header: "BOPDS_Interf.hxx".}
## *
##  The class BOPDS_InterfVE is is to store the information about
##  the interference of the type vertex/edge.
##
## =======================================================================
## function : BOPDS_InterfVE
## purpose  :
## =======================================================================

type
  BOPDS_InterfVE* {.importcpp: "BOPDS_InterfVE", header: "BOPDS_Interf.hxx", bycopy.} = object of BOPDS_Interf ## *
                                                                                                     ##   Constructor
                                                                                                     ##


proc constructBOPDS_InterfVE*(): BOPDS_InterfVE {.constructor,
    importcpp: "BOPDS_InterfVE(@)", header: "BOPDS_Interf.hxx".}
proc constructBOPDS_InterfVE*(theAllocator: Handle[NCollectionBaseAllocator]): BOPDS_InterfVE {.
    constructor, importcpp: "BOPDS_InterfVE(@)", header: "BOPDS_Interf.hxx".}
proc destroyBOPDS_InterfVE*(this: var BOPDS_InterfVE) {.
    importcpp: "#.~BOPDS_InterfVE()", header: "BOPDS_Interf.hxx".}
proc setParameter*(this: var BOPDS_InterfVE; theT: StandardReal) {.
    importcpp: "SetParameter", header: "BOPDS_Interf.hxx".}
proc parameter*(this: BOPDS_InterfVE): StandardReal {.noSideEffect,
    importcpp: "Parameter", header: "BOPDS_Interf.hxx".}
## *
##  The class BOPDS_InterfVF is is to store the information about
##  the interference of the type vertex/face
##
## =======================================================================
## function : BOPDS_InterfVF
## purpose  :
## =======================================================================

type
  BOPDS_InterfVF* {.importcpp: "BOPDS_InterfVF", header: "BOPDS_Interf.hxx", bycopy.} = object of BOPDS_Interf ## *
                                                                                                     ##   Constructor
                                                                                                     ##


proc constructBOPDS_InterfVF*(): BOPDS_InterfVF {.constructor,
    importcpp: "BOPDS_InterfVF(@)", header: "BOPDS_Interf.hxx".}
proc constructBOPDS_InterfVF*(theAllocator: Handle[NCollectionBaseAllocator]): BOPDS_InterfVF {.
    constructor, importcpp: "BOPDS_InterfVF(@)", header: "BOPDS_Interf.hxx".}
proc destroyBOPDS_InterfVF*(this: var BOPDS_InterfVF) {.
    importcpp: "#.~BOPDS_InterfVF()", header: "BOPDS_Interf.hxx".}
proc setUV*(this: var BOPDS_InterfVF; theU: StandardReal; theV: StandardReal) {.
    importcpp: "SetUV", header: "BOPDS_Interf.hxx".}
proc uv*(this: BOPDS_InterfVF; theU: var StandardReal; theV: var StandardReal) {.
    noSideEffect, importcpp: "UV", header: "BOPDS_Interf.hxx".}
## *
##  The class BOPDS_InterfEE is is to store the information about
##  the interference of the type edge/edge.
##
## =======================================================================
## function : BOPDS_InterfEE
## purpose  :
## =======================================================================

type
  BOPDS_InterfEE* {.importcpp: "BOPDS_InterfEE", header: "BOPDS_Interf.hxx", bycopy.} = object of BOPDS_Interf ## *
                                                                                                     ##   Constructor
                                                                                                     ##


proc constructBOPDS_InterfEE*(): BOPDS_InterfEE {.constructor,
    importcpp: "BOPDS_InterfEE(@)", header: "BOPDS_Interf.hxx".}
proc constructBOPDS_InterfEE*(theAllocator: Handle[NCollectionBaseAllocator]): BOPDS_InterfEE {.
    constructor, importcpp: "BOPDS_InterfEE(@)", header: "BOPDS_Interf.hxx".}
proc destroyBOPDS_InterfEE*(this: var BOPDS_InterfEE) {.
    importcpp: "#.~BOPDS_InterfEE()", header: "BOPDS_Interf.hxx".}
proc setCommonPart*(this: var BOPDS_InterfEE; theCP: IntToolsCommonPrt) {.
    importcpp: "SetCommonPart", header: "BOPDS_Interf.hxx".}
proc commonPart*(this: BOPDS_InterfEE): IntToolsCommonPrt {.noSideEffect,
    importcpp: "CommonPart", header: "BOPDS_Interf.hxx".}
## *
##  The class BOPDS_InterfEF is is to store the information about
##  the interference of the type edge/face.
##
## =======================================================================
## function : BOPDS_InterfEF
## purpose  :
## =======================================================================

type
  BOPDS_InterfEF* {.importcpp: "BOPDS_InterfEF", header: "BOPDS_Interf.hxx", bycopy.} = object of BOPDS_Interf ## *
                                                                                                     ##   Constructor
                                                                                                     ##
                                                                                                     ## *
                                                                                                     ##  The class BOPDS_InterfFF is is to store the information about
                                                                                                     ##  the interference of the type face/face.
                                                                                                     ##


proc constructBOPDS_InterfEF*(): BOPDS_InterfEF {.constructor,
    importcpp: "BOPDS_InterfEF(@)", header: "BOPDS_Interf.hxx".}
proc constructBOPDS_InterfEF*(theAllocator: Handle[NCollectionBaseAllocator]): BOPDS_InterfEF {.
    constructor, importcpp: "BOPDS_InterfEF(@)", header: "BOPDS_Interf.hxx".}
proc destroyBOPDS_InterfEF*(this: var BOPDS_InterfEF) {.
    importcpp: "#.~BOPDS_InterfEF()", header: "BOPDS_Interf.hxx".}
proc setCommonPart*(this: var BOPDS_InterfEF; theCP: IntToolsCommonPrt) {.
    importcpp: "SetCommonPart", header: "BOPDS_Interf.hxx".}
proc commonPart*(this: BOPDS_InterfEF): IntToolsCommonPrt {.noSideEffect,
    importcpp: "CommonPart", header: "BOPDS_Interf.hxx".}
## =======================================================================
## function : BOPDS_InterfFF
## purpose  :
## =======================================================================

type
  BOPDS_InterfFF* {.importcpp: "BOPDS_InterfFF", header: "BOPDS_Interf.hxx", bycopy.} = object of BOPDS_Interf ## *
                                                                                                     ##   Constructor
                                                                                                     ##


proc constructBOPDS_InterfFF*(): BOPDS_InterfFF {.constructor,
    importcpp: "BOPDS_InterfFF(@)", header: "BOPDS_Interf.hxx".}
proc destroyBOPDS_InterfFF*(this: var BOPDS_InterfFF) {.
    importcpp: "#.~BOPDS_InterfFF()", header: "BOPDS_Interf.hxx".}
proc init*(this: var BOPDS_InterfFF; theNbCurves: StandardInteger;
          theNbPoints: StandardInteger) {.importcpp: "Init",
                                        header: "BOPDS_Interf.hxx".}
proc setTangentFaces*(this: var BOPDS_InterfFF; theFlag: StandardBoolean) {.
    importcpp: "SetTangentFaces", header: "BOPDS_Interf.hxx".}
proc tangentFaces*(this: BOPDS_InterfFF): StandardBoolean {.noSideEffect,
    importcpp: "TangentFaces", header: "BOPDS_Interf.hxx".}
proc curves*(this: BOPDS_InterfFF): BOPDS_VectorOfCurve {.noSideEffect,
    importcpp: "Curves", header: "BOPDS_Interf.hxx".}
proc changeCurves*(this: var BOPDS_InterfFF): var BOPDS_VectorOfCurve {.
    importcpp: "ChangeCurves", header: "BOPDS_Interf.hxx".}
proc points*(this: BOPDS_InterfFF): BOPDS_VectorOfPoint {.noSideEffect,
    importcpp: "Points", header: "BOPDS_Interf.hxx".}
proc changePoints*(this: var BOPDS_InterfFF): var BOPDS_VectorOfPoint {.
    importcpp: "ChangePoints", header: "BOPDS_Interf.hxx".}
## *
##  The class BOPDS_InterfVZ is is to store the information about
##  the interference of the type vertex/solid.
##
## =======================================================================
## function : BOPDS_InterfVZ
## purpose  :
## =======================================================================

type
  BOPDS_InterfVZ* {.importcpp: "BOPDS_InterfVZ", header: "BOPDS_Interf.hxx", bycopy.} = object of BOPDS_Interf ## *
                                                                                                     ##   Constructor
                                                                                                     ##


proc constructBOPDS_InterfVZ*(): BOPDS_InterfVZ {.constructor,
    importcpp: "BOPDS_InterfVZ(@)", header: "BOPDS_Interf.hxx".}
proc constructBOPDS_InterfVZ*(theAllocator: Handle[NCollectionBaseAllocator]): BOPDS_InterfVZ {.
    constructor, importcpp: "BOPDS_InterfVZ(@)", header: "BOPDS_Interf.hxx".}
proc destroyBOPDS_InterfVZ*(this: var BOPDS_InterfVZ) {.
    importcpp: "#.~BOPDS_InterfVZ()", header: "BOPDS_Interf.hxx".}
## *
##  The class BOPDS_InterfEZ is is to store the information about
##  the interference of the type edge/solid.
##
## =======================================================================
## function : BOPDS_InterfEZ
## purpose  :
## =======================================================================

type
  BOPDS_InterfEZ* {.importcpp: "BOPDS_InterfEZ", header: "BOPDS_Interf.hxx", bycopy.} = object of BOPDS_Interf ## *
                                                                                                     ##   Constructor
                                                                                                     ##


proc constructBOPDS_InterfEZ*(): BOPDS_InterfEZ {.constructor,
    importcpp: "BOPDS_InterfEZ(@)", header: "BOPDS_Interf.hxx".}
proc constructBOPDS_InterfEZ*(theAllocator: Handle[NCollectionBaseAllocator]): BOPDS_InterfEZ {.
    constructor, importcpp: "BOPDS_InterfEZ(@)", header: "BOPDS_Interf.hxx".}
proc destroyBOPDS_InterfEZ*(this: var BOPDS_InterfEZ) {.
    importcpp: "#.~BOPDS_InterfEZ()", header: "BOPDS_Interf.hxx".}
## *
##  The class BOPDS_InterfFZ is is to store the information about
##  the interference of the type face/solid.
##
## =======================================================================
## function : BOPDS_InterfFZ
## purpose  :
## =======================================================================

type
  BOPDS_InterfFZ* {.importcpp: "BOPDS_InterfFZ", header: "BOPDS_Interf.hxx", bycopy.} = object of BOPDS_Interf ## *
                                                                                                     ##   Constructor
                                                                                                     ##


proc constructBOPDS_InterfFZ*(): BOPDS_InterfFZ {.constructor,
    importcpp: "BOPDS_InterfFZ(@)", header: "BOPDS_Interf.hxx".}
proc constructBOPDS_InterfFZ*(theAllocator: Handle[NCollectionBaseAllocator]): BOPDS_InterfFZ {.
    constructor, importcpp: "BOPDS_InterfFZ(@)", header: "BOPDS_Interf.hxx".}
proc destroyBOPDS_InterfFZ*(this: var BOPDS_InterfFZ) {.
    importcpp: "#.~BOPDS_InterfFZ()", header: "BOPDS_Interf.hxx".}
## *
##  The class BOPDS_InterfZZ is is to store the information about
##  the interference of the type solid/solid.
##
## =======================================================================
## function : BOPDS_InterfZZ
## purpose  :
## =======================================================================

type
  BOPDS_InterfZZ* {.importcpp: "BOPDS_InterfZZ", header: "BOPDS_Interf.hxx", bycopy.} = object of BOPDS_Interf ## *
                                                                                                     ##   Constructor
                                                                                                     ##


proc constructBOPDS_InterfZZ*(): BOPDS_InterfZZ {.constructor,
    importcpp: "BOPDS_InterfZZ(@)", header: "BOPDS_Interf.hxx".}
proc constructBOPDS_InterfZZ*(theAllocator: Handle[NCollectionBaseAllocator]): BOPDS_InterfZZ {.
    constructor, importcpp: "BOPDS_InterfZZ(@)", header: "BOPDS_Interf.hxx".}
proc destroyBOPDS_InterfZZ*(this: var BOPDS_InterfZZ) {.
    importcpp: "#.~BOPDS_InterfZZ()", header: "BOPDS_Interf.hxx".}

