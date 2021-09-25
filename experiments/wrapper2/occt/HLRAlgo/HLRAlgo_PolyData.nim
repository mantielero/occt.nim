##  Created on: 1993-10-29
##  Created by: Christophe MARION
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

discard "forward decl of HLRAlgo_EdgeStatus"
discard "forward decl of HLRAlgo_PolyData"
discard "forward decl of HLRAlgo_PolyData"
type
  HandleHLRAlgoPolyData* = Handle[HLRAlgoPolyData]

## ! Data structure of a set of Triangles.

type
  HLRAlgoPolyData* {.importcpp: "HLRAlgo_PolyData", header: "HLRAlgo_PolyData.hxx",
                    bycopy.} = object of StandardTransient ## ! evident.

  HLRAlgoPolyDataFaceIndices* {.importcpp: "HLRAlgo_PolyData::FaceIndices",
                               header: "HLRAlgo_PolyData.hxx", bycopy.} = object ## ! The
                                                                            ## default
                                                                            ## constructor.
    index* {.importc: "Index".}: int
    min* {.importc: "Min".}: int
    max* {.importc: "Max".}: int


proc constructHLRAlgoPolyDataFaceIndices*(): HLRAlgoPolyDataFaceIndices {.
    constructor, importcpp: "HLRAlgo_PolyData::FaceIndices(@)",
    header: "HLRAlgo_PolyData.hxx".}
type
  HLRAlgoPolyDataTriangle* {.importcpp: "HLRAlgo_PolyData::Triangle",
                            header: "HLRAlgo_PolyData.hxx", bycopy.} = object
    v1* {.importc: "V1".}: Xy
    v2* {.importc: "V2".}: Xy
    v3* {.importc: "V3".}: Xy
    param* {.importc: "Param".}: float
    tolParam* {.importc: "TolParam".}: float
    tolAng* {.importc: "TolAng".}: float
    tolerance* {.importc: "Tolerance".}: float

  HLRAlgoPolyDataBox* {.importcpp: "HLRAlgo_PolyData::Box",
                       header: "HLRAlgo_PolyData.hxx", bycopy.} = object
    xMin* {.importc: "XMin".}: float
    yMin* {.importc: "YMin".}: float
    zMin* {.importc: "ZMin".}: float
    xMax* {.importc: "XMax".}: float
    yMax* {.importc: "YMax".}: float
    zMax* {.importc: "ZMax".}: float ## ! The default constructor.


proc constructHLRAlgoPolyDataBox*(): HLRAlgoPolyDataBox {.constructor,
    importcpp: "HLRAlgo_PolyData::Box(@)", header: "HLRAlgo_PolyData.hxx".}
proc constructHLRAlgoPolyDataBox*(theXMin: float; theYMin: float; theZMin: float;
                                 theXMax: float; theYMax: float; theZMax: float): HLRAlgoPolyDataBox {.
    constructor, importcpp: "HLRAlgo_PolyData::Box(@)",
    header: "HLRAlgo_PolyData.hxx".}
proc constructHLRAlgoPolyData*(): HLRAlgoPolyData {.constructor,
    importcpp: "HLRAlgo_PolyData(@)", header: "HLRAlgo_PolyData.hxx".}
proc hNodes*(this: var HLRAlgoPolyData; hNodes: Handle[TColgpHArray1OfXYZ]) {.
    importcpp: "HNodes", header: "HLRAlgo_PolyData.hxx".}
proc hTData*(this: var HLRAlgoPolyData; hTData: Handle[HLRAlgoHArray1OfTData]) {.
    importcpp: "HTData", header: "HLRAlgo_PolyData.hxx".}
proc hPHDat*(this: var HLRAlgoPolyData; hPHDat: Handle[HLRAlgoHArray1OfPHDat]) {.
    importcpp: "HPHDat", header: "HLRAlgo_PolyData.hxx".}
proc faceIndex*(this: var HLRAlgoPolyData; i: int) {.importcpp: "FaceIndex",
    header: "HLRAlgo_PolyData.hxx".}
proc faceIndex*(this: HLRAlgoPolyData): int {.noSideEffect, importcpp: "FaceIndex",
    header: "HLRAlgo_PolyData.hxx".}
proc nodes*(this: HLRAlgoPolyData): var TColgpArray1OfXYZ {.noSideEffect,
    importcpp: "Nodes", header: "HLRAlgo_PolyData.hxx".}
proc tData*(this: HLRAlgoPolyData): var HLRAlgoArray1OfTData {.noSideEffect,
    importcpp: "TData", header: "HLRAlgo_PolyData.hxx".}
proc pHDat*(this: HLRAlgoPolyData): var HLRAlgoArray1OfPHDat {.noSideEffect,
    importcpp: "PHDat", header: "HLRAlgo_PolyData.hxx".}
proc updateGlobalMinMax*(this: var HLRAlgoPolyData; theBox: var HLRAlgoPolyDataBox) {.
    importcpp: "UpdateGlobalMinMax", header: "HLRAlgo_PolyData.hxx".}
proc hiding*(this: HLRAlgoPolyData): bool {.noSideEffect, importcpp: "Hiding",
                                        header: "HLRAlgo_PolyData.hxx".}
proc hideByPolyData*(this: var HLRAlgoPolyData; thePoints: PointsT;
                    theTriangle: var HLRAlgoPolyDataTriangle;
                    theIndices: var IndicesT; hidingShell: bool;
                    status: var HLRAlgoEdgeStatus) {.importcpp: "HideByPolyData",
    header: "HLRAlgo_PolyData.hxx".}
proc indices*(this: var HLRAlgoPolyData): var HLRAlgoPolyDataFaceIndices {.
    importcpp: "Indices", header: "HLRAlgo_PolyData.hxx".}
type
  HLRAlgoPolyDatabaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "HLRAlgo_PolyData::get_type_name(@)",
                            header: "HLRAlgo_PolyData.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "HLRAlgo_PolyData::get_type_descriptor(@)",
    header: "HLRAlgo_PolyData.hxx".}
proc dynamicType*(this: HLRAlgoPolyData): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "HLRAlgo_PolyData.hxx".}
