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

import
  HLRAlgo_BiPoint, ../Standard/Standard, ../Standard/Standard_Type,
  ../Standard/Standard_Integer, ../TColgp/TColgp_HArray1OfXYZ,
  HLRAlgo_HArray1OfTData, HLRAlgo_HArray1OfPHDat, ../Standard/Standard_Transient,
  ../TColgp/TColgp_Array1OfXYZ, HLRAlgo_Array1OfTData, HLRAlgo_Array1OfPHDat,
  ../Standard/Standard_Boolean

discard "forward decl of HLRAlgo_EdgeStatus"
discard "forward decl of HLRAlgo_PolyData"
discard "forward decl of HLRAlgo_PolyData"
type
  Handle_HLRAlgo_PolyData* = handle[HLRAlgo_PolyData]

## ! Data structure of a set of Triangles.

type
  HLRAlgo_PolyData* {.importcpp: "HLRAlgo_PolyData",
                     header: "HLRAlgo_PolyData.hxx", bycopy.} = object of Standard_Transient ##
                                                                                      ## !
                                                                                      ## evident.

  HLRAlgo_PolyDataFaceIndices* {.importcpp: "HLRAlgo_PolyData::FaceIndices",
                                header: "HLRAlgo_PolyData.hxx", bycopy.} = object ## ! The
                                                                             ## default
                                                                             ## constructor.
    Index* {.importc: "Index".}: Standard_Integer
    Min* {.importc: "Min".}: Standard_Integer
    Max* {.importc: "Max".}: Standard_Integer


proc constructHLRAlgo_PolyDataFaceIndices*(): HLRAlgo_PolyDataFaceIndices {.
    constructor, importcpp: "HLRAlgo_PolyData::FaceIndices(@)",
    header: "HLRAlgo_PolyData.hxx".}
type
  HLRAlgo_PolyDataTriangle* {.importcpp: "HLRAlgo_PolyData::Triangle",
                             header: "HLRAlgo_PolyData.hxx", bycopy.} = object
    V1* {.importc: "V1".}: gp_XY
    V2* {.importc: "V2".}: gp_XY
    V3* {.importc: "V3".}: gp_XY
    Param* {.importc: "Param".}: Standard_Real
    TolParam* {.importc: "TolParam".}: Standard_Real
    TolAng* {.importc: "TolAng".}: Standard_Real
    Tolerance* {.importc: "Tolerance".}: Standard_Real

  HLRAlgo_PolyDataBox* {.importcpp: "HLRAlgo_PolyData::Box",
                        header: "HLRAlgo_PolyData.hxx", bycopy.} = object
    XMin* {.importc: "XMin".}: Standard_Real
    YMin* {.importc: "YMin".}: Standard_Real
    ZMin* {.importc: "ZMin".}: Standard_Real
    XMax* {.importc: "XMax".}: Standard_Real
    YMax* {.importc: "YMax".}: Standard_Real
    ZMax* {.importc: "ZMax".}: Standard_Real ## ! The default constructor.


proc constructHLRAlgo_PolyDataBox*(): HLRAlgo_PolyDataBox {.constructor,
    importcpp: "HLRAlgo_PolyData::Box(@)", header: "HLRAlgo_PolyData.hxx".}
proc constructHLRAlgo_PolyDataBox*(theXMin: Standard_Real; theYMin: Standard_Real;
                                  theZMin: Standard_Real; theXMax: Standard_Real;
                                  theYMax: Standard_Real; theZMax: Standard_Real): HLRAlgo_PolyDataBox {.
    constructor, importcpp: "HLRAlgo_PolyData::Box(@)",
    header: "HLRAlgo_PolyData.hxx".}
proc constructHLRAlgo_PolyData*(): HLRAlgo_PolyData {.constructor,
    importcpp: "HLRAlgo_PolyData(@)", header: "HLRAlgo_PolyData.hxx".}
proc HNodes*(this: var HLRAlgo_PolyData; HNodes: handle[TColgp_HArray1OfXYZ]) {.
    importcpp: "HNodes", header: "HLRAlgo_PolyData.hxx".}
proc HTData*(this: var HLRAlgo_PolyData; HTData: handle[HLRAlgo_HArray1OfTData]) {.
    importcpp: "HTData", header: "HLRAlgo_PolyData.hxx".}
proc HPHDat*(this: var HLRAlgo_PolyData; HPHDat: handle[HLRAlgo_HArray1OfPHDat]) {.
    importcpp: "HPHDat", header: "HLRAlgo_PolyData.hxx".}
proc FaceIndex*(this: var HLRAlgo_PolyData; I: Standard_Integer) {.
    importcpp: "FaceIndex", header: "HLRAlgo_PolyData.hxx".}
proc FaceIndex*(this: HLRAlgo_PolyData): Standard_Integer {.noSideEffect,
    importcpp: "FaceIndex", header: "HLRAlgo_PolyData.hxx".}
proc Nodes*(this: HLRAlgo_PolyData): var TColgp_Array1OfXYZ {.noSideEffect,
    importcpp: "Nodes", header: "HLRAlgo_PolyData.hxx".}
proc TData*(this: HLRAlgo_PolyData): var HLRAlgo_Array1OfTData {.noSideEffect,
    importcpp: "TData", header: "HLRAlgo_PolyData.hxx".}
proc PHDat*(this: HLRAlgo_PolyData): var HLRAlgo_Array1OfPHDat {.noSideEffect,
    importcpp: "PHDat", header: "HLRAlgo_PolyData.hxx".}
proc UpdateGlobalMinMax*(this: var HLRAlgo_PolyData; theBox: var HLRAlgo_PolyDataBox) {.
    importcpp: "UpdateGlobalMinMax", header: "HLRAlgo_PolyData.hxx".}
proc Hiding*(this: HLRAlgo_PolyData): Standard_Boolean {.noSideEffect,
    importcpp: "Hiding", header: "HLRAlgo_PolyData.hxx".}
proc HideByPolyData*(this: var HLRAlgo_PolyData; thePoints: PointsT;
                    theTriangle: var HLRAlgo_PolyDataTriangle;
                    theIndices: var IndicesT; HidingShell: Standard_Boolean;
                    status: var HLRAlgo_EdgeStatus) {.importcpp: "HideByPolyData",
    header: "HLRAlgo_PolyData.hxx".}
proc Indices*(this: var HLRAlgo_PolyData): var HLRAlgo_PolyDataFaceIndices {.
    importcpp: "Indices", header: "HLRAlgo_PolyData.hxx".}
type
  HLRAlgo_PolyDatabase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "HLRAlgo_PolyData::get_type_name(@)",
                              header: "HLRAlgo_PolyData.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "HLRAlgo_PolyData::get_type_descriptor(@)",
    header: "HLRAlgo_PolyData.hxx".}
proc DynamicType*(this: HLRAlgo_PolyData): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "HLRAlgo_PolyData.hxx".}