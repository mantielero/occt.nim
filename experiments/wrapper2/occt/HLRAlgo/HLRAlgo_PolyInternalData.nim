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

discard "forward decl of HLRAlgo_PolyInternalData"
discard "forward decl of HLRAlgo_PolyInternalData"
type
  HandleHLRAlgoPolyInternalData* = Handle[HLRAlgoPolyInternalData]

## ! to Update OutLines.

type
  HLRAlgoPolyInternalData* {.importcpp: "HLRAlgo_PolyInternalData",
                            header: "HLRAlgo_PolyInternalData.hxx", bycopy.} = object of StandardTransient


proc constructHLRAlgoPolyInternalData*(nbNod: int; nbTri: int): HLRAlgoPolyInternalData {.
    constructor, importcpp: "HLRAlgo_PolyInternalData(@)",
    header: "HLRAlgo_PolyInternalData.hxx".}
proc updateLinks*(this: var HLRAlgoPolyInternalData;
                 tData: ptr HLRAlgoArray1OfTData; pISeg: ptr HLRAlgoArray1OfPISeg;
                 pINod: ptr HLRAlgoArray1OfPINod) {.importcpp: "UpdateLinks",
    header: "HLRAlgo_PolyInternalData.hxx".}
proc addNode*(this: var HLRAlgoPolyInternalData; nod1RValues: var NodeData;
             nod2RValues: var NodeData; pINod1: ptr HLRAlgoArray1OfPINod;
             pINod2: ptr HLRAlgoArray1OfPINod; coef1: float; x3: float; y3: float;
             z3: float): int {.importcpp: "AddNode",
                            header: "HLRAlgo_PolyInternalData.hxx".}
proc updateLinks*(this: var HLRAlgoPolyInternalData; ip1: int; ip2: int; ip3: int;
                 tData1: ptr HLRAlgoArray1OfTData;
                 tData2: ptr HLRAlgoArray1OfTData;
                 pISeg1: ptr HLRAlgoArray1OfPISeg;
                 pISeg2: ptr HLRAlgoArray1OfPISeg;
                 pINod1: ptr HLRAlgoArray1OfPINod; pINod2: ptr HLRAlgoArray1OfPINod) {.
    importcpp: "UpdateLinks", header: "HLRAlgo_PolyInternalData.hxx".}
proc dump*(this: HLRAlgoPolyInternalData) {.noSideEffect, importcpp: "Dump",
    header: "HLRAlgo_PolyInternalData.hxx".}
proc incTData*(this: var HLRAlgoPolyInternalData; tData1: ptr HLRAlgoArray1OfTData;
              tData2: ptr HLRAlgoArray1OfTData) {.importcpp: "IncTData",
    header: "HLRAlgo_PolyInternalData.hxx".}
proc incPISeg*(this: var HLRAlgoPolyInternalData; pISeg1: ptr HLRAlgoArray1OfPISeg;
              pISeg2: ptr HLRAlgoArray1OfPISeg) {.importcpp: "IncPISeg",
    header: "HLRAlgo_PolyInternalData.hxx".}
proc incPINod*(this: var HLRAlgoPolyInternalData; pINod1: ptr HLRAlgoArray1OfPINod;
              pINod2: ptr HLRAlgoArray1OfPINod) {.importcpp: "IncPINod",
    header: "HLRAlgo_PolyInternalData.hxx".}
proc decTData*(this: var HLRAlgoPolyInternalData) {.importcpp: "DecTData",
    header: "HLRAlgo_PolyInternalData.hxx".}
proc decPISeg*(this: var HLRAlgoPolyInternalData) {.importcpp: "DecPISeg",
    header: "HLRAlgo_PolyInternalData.hxx".}
proc decPINod*(this: var HLRAlgoPolyInternalData) {.importcpp: "DecPINod",
    header: "HLRAlgo_PolyInternalData.hxx".}
proc nbTData*(this: HLRAlgoPolyInternalData): int {.noSideEffect,
    importcpp: "NbTData", header: "HLRAlgo_PolyInternalData.hxx".}
proc nbPISeg*(this: HLRAlgoPolyInternalData): int {.noSideEffect,
    importcpp: "NbPISeg", header: "HLRAlgo_PolyInternalData.hxx".}
proc nbPINod*(this: HLRAlgoPolyInternalData): int {.noSideEffect,
    importcpp: "NbPINod", header: "HLRAlgo_PolyInternalData.hxx".}
proc planar*(this: HLRAlgoPolyInternalData): bool {.noSideEffect,
    importcpp: "Planar", header: "HLRAlgo_PolyInternalData.hxx".}
proc planar*(this: var HLRAlgoPolyInternalData; b: bool) {.importcpp: "Planar",
    header: "HLRAlgo_PolyInternalData.hxx".}
proc intOutL*(this: HLRAlgoPolyInternalData): bool {.noSideEffect,
    importcpp: "IntOutL", header: "HLRAlgo_PolyInternalData.hxx".}
proc intOutL*(this: var HLRAlgoPolyInternalData; b: bool) {.importcpp: "IntOutL",
    header: "HLRAlgo_PolyInternalData.hxx".}
proc tData*(this: HLRAlgoPolyInternalData): var HLRAlgoArray1OfTData {.noSideEffect,
    importcpp: "TData", header: "HLRAlgo_PolyInternalData.hxx".}
proc pISeg*(this: HLRAlgoPolyInternalData): var HLRAlgoArray1OfPISeg {.noSideEffect,
    importcpp: "PISeg", header: "HLRAlgo_PolyInternalData.hxx".}
proc pINod*(this: HLRAlgoPolyInternalData): var HLRAlgoArray1OfPINod {.noSideEffect,
    importcpp: "PINod", header: "HLRAlgo_PolyInternalData.hxx".}
type
  HLRAlgoPolyInternalDatabaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "HLRAlgo_PolyInternalData::get_type_name(@)",
                            header: "HLRAlgo_PolyInternalData.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "HLRAlgo_PolyInternalData::get_type_descriptor(@)",
    header: "HLRAlgo_PolyInternalData.hxx".}
proc dynamicType*(this: HLRAlgoPolyInternalData): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "HLRAlgo_PolyInternalData.hxx".}
