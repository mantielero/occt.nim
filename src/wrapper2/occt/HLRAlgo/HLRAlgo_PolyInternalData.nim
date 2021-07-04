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
  ../Standard/Standard, ../Standard/Standard_Type, ../Standard/Standard_Integer,
  ../Standard/Standard_Boolean, HLRAlgo_HArray1OfTData, HLRAlgo_HArray1OfPISeg,
  HLRAlgo_HArray1OfPINod, ../Standard/Standard_Transient,
  ../Standard/Standard_Real, HLRAlgo_Array1OfTData, HLRAlgo_Array1OfPISeg,
  HLRAlgo_Array1OfPINod

discard "forward decl of HLRAlgo_PolyInternalData"
discard "forward decl of HLRAlgo_PolyInternalData"
type
  Handle_HLRAlgo_PolyInternalData* = handle[HLRAlgo_PolyInternalData]

## ! to Update OutLines.

type
  HLRAlgo_PolyInternalData* {.importcpp: "HLRAlgo_PolyInternalData",
                             header: "HLRAlgo_PolyInternalData.hxx", bycopy.} = object of Standard_Transient


proc constructHLRAlgo_PolyInternalData*(nbNod: Standard_Integer;
                                       nbTri: Standard_Integer): HLRAlgo_PolyInternalData {.
    constructor, importcpp: "HLRAlgo_PolyInternalData(@)",
    header: "HLRAlgo_PolyInternalData.hxx".}
proc UpdateLinks*(this: var HLRAlgo_PolyInternalData;
                 TData: ptr HLRAlgo_Array1OfTData;
                 PISeg: ptr HLRAlgo_Array1OfPISeg; PINod: ptr HLRAlgo_Array1OfPINod) {.
    importcpp: "UpdateLinks", header: "HLRAlgo_PolyInternalData.hxx".}
proc AddNode*(this: var HLRAlgo_PolyInternalData; Nod1RValues: var NodeData;
             Nod2RValues: var NodeData; PINod1: ptr HLRAlgo_Array1OfPINod;
             PINod2: ptr HLRAlgo_Array1OfPINod; coef1: Standard_Real;
             X3: Standard_Real; Y3: Standard_Real; Z3: Standard_Real): Standard_Integer {.
    importcpp: "AddNode", header: "HLRAlgo_PolyInternalData.hxx".}
proc UpdateLinks*(this: var HLRAlgo_PolyInternalData; ip1: Standard_Integer;
                 ip2: Standard_Integer; ip3: Standard_Integer;
                 TData1: ptr HLRAlgo_Array1OfTData;
                 TData2: ptr HLRAlgo_Array1OfTData;
                 PISeg1: ptr HLRAlgo_Array1OfPISeg;
                 PISeg2: ptr HLRAlgo_Array1OfPISeg;
                 PINod1: ptr HLRAlgo_Array1OfPINod;
                 PINod2: ptr HLRAlgo_Array1OfPINod) {.importcpp: "UpdateLinks",
    header: "HLRAlgo_PolyInternalData.hxx".}
proc Dump*(this: HLRAlgo_PolyInternalData) {.noSideEffect, importcpp: "Dump",
    header: "HLRAlgo_PolyInternalData.hxx".}
proc IncTData*(this: var HLRAlgo_PolyInternalData;
              TData1: ptr HLRAlgo_Array1OfTData; TData2: ptr HLRAlgo_Array1OfTData) {.
    importcpp: "IncTData", header: "HLRAlgo_PolyInternalData.hxx".}
proc IncPISeg*(this: var HLRAlgo_PolyInternalData;
              PISeg1: ptr HLRAlgo_Array1OfPISeg; PISeg2: ptr HLRAlgo_Array1OfPISeg) {.
    importcpp: "IncPISeg", header: "HLRAlgo_PolyInternalData.hxx".}
proc IncPINod*(this: var HLRAlgo_PolyInternalData;
              PINod1: ptr HLRAlgo_Array1OfPINod; PINod2: ptr HLRAlgo_Array1OfPINod) {.
    importcpp: "IncPINod", header: "HLRAlgo_PolyInternalData.hxx".}
proc DecTData*(this: var HLRAlgo_PolyInternalData) {.importcpp: "DecTData",
    header: "HLRAlgo_PolyInternalData.hxx".}
proc DecPISeg*(this: var HLRAlgo_PolyInternalData) {.importcpp: "DecPISeg",
    header: "HLRAlgo_PolyInternalData.hxx".}
proc DecPINod*(this: var HLRAlgo_PolyInternalData) {.importcpp: "DecPINod",
    header: "HLRAlgo_PolyInternalData.hxx".}
proc NbTData*(this: HLRAlgo_PolyInternalData): Standard_Integer {.noSideEffect,
    importcpp: "NbTData", header: "HLRAlgo_PolyInternalData.hxx".}
proc NbPISeg*(this: HLRAlgo_PolyInternalData): Standard_Integer {.noSideEffect,
    importcpp: "NbPISeg", header: "HLRAlgo_PolyInternalData.hxx".}
proc NbPINod*(this: HLRAlgo_PolyInternalData): Standard_Integer {.noSideEffect,
    importcpp: "NbPINod", header: "HLRAlgo_PolyInternalData.hxx".}
proc Planar*(this: HLRAlgo_PolyInternalData): Standard_Boolean {.noSideEffect,
    importcpp: "Planar", header: "HLRAlgo_PolyInternalData.hxx".}
proc Planar*(this: var HLRAlgo_PolyInternalData; B: Standard_Boolean) {.
    importcpp: "Planar", header: "HLRAlgo_PolyInternalData.hxx".}
proc IntOutL*(this: HLRAlgo_PolyInternalData): Standard_Boolean {.noSideEffect,
    importcpp: "IntOutL", header: "HLRAlgo_PolyInternalData.hxx".}
proc IntOutL*(this: var HLRAlgo_PolyInternalData; B: Standard_Boolean) {.
    importcpp: "IntOutL", header: "HLRAlgo_PolyInternalData.hxx".}
proc TData*(this: HLRAlgo_PolyInternalData): var HLRAlgo_Array1OfTData {.
    noSideEffect, importcpp: "TData", header: "HLRAlgo_PolyInternalData.hxx".}
proc PISeg*(this: HLRAlgo_PolyInternalData): var HLRAlgo_Array1OfPISeg {.
    noSideEffect, importcpp: "PISeg", header: "HLRAlgo_PolyInternalData.hxx".}
proc PINod*(this: HLRAlgo_PolyInternalData): var HLRAlgo_Array1OfPINod {.
    noSideEffect, importcpp: "PINod", header: "HLRAlgo_PolyInternalData.hxx".}
type
  HLRAlgo_PolyInternalDatabase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "HLRAlgo_PolyInternalData::get_type_name(@)",
                              header: "HLRAlgo_PolyInternalData.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "HLRAlgo_PolyInternalData::get_type_descriptor(@)",
    header: "HLRAlgo_PolyInternalData.hxx".}
proc DynamicType*(this: HLRAlgo_PolyInternalData): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "HLRAlgo_PolyInternalData.hxx".}