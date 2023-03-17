##  Created on: 1999-06-16
##  Created by: Sergey RUIN
##  Copyright (c) 1999 Matra Datavision
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

discard "forward decl of TDataStd_DeltaOnModificationOfRealArray"
discard "forward decl of Standard_GUID"
discard "forward decl of TDF_Label"
discard "forward decl of TDF_Attribute"
discard "forward decl of TDF_RelocationTable"
discard "forward decl of TDF_DeltaOnModification"
discard "forward decl of TDataStd_RealArray"
type
  HandleTDataStdRealArray* = Handle[TDataStdRealArray]

## ! A framework for an attribute composed of a real number array.

type
  TDataStdRealArray* {.importcpp: "TDataStd_RealArray",
                      header: "TDataStd_RealArray.hxx", bycopy.} = object of TDF_Attribute ##
                                                                                    ## !
                                                                                    ## class
                                                                                    ## methods
                                                                                    ##
                                                                                    ## !
                                                                                    ## =============
                                                                                    ##
                                                                                    ## !
                                                                                    ## Returns
                                                                                    ## the
                                                                                    ## GUID
                                                                                    ## for
                                                                                    ## arrays
                                                                                    ## of
                                                                                    ## reals.


proc getID*(): StandardGUID {.cdecl, importcpp: "TDataStd_RealArray::GetID(@)",
                           header: "TDataStd_RealArray.hxx".}
proc set*(label: TDF_Label; lower: cint; upper: cint; isDelta: bool = false): Handle[
    TDataStdRealArray] {.cdecl, importcpp: "TDataStd_RealArray::Set(@)",
                        header: "TDataStd_RealArray.hxx".}
proc set*(label: TDF_Label; theGuid: StandardGUID; lower: cint; upper: cint;
         isDelta: bool = false): Handle[TDataStdRealArray] {.cdecl,
    importcpp: "TDataStd_RealArray::Set(@)", header: "TDataStd_RealArray.hxx".}
proc init*(this: var TDataStdRealArray; lower: cint; upper: cint) {.cdecl,
    importcpp: "Init", header: "TDataStd_RealArray.hxx".}
proc setID*(this: var TDataStdRealArray; theGuid: StandardGUID) {.cdecl,
    importcpp: "SetID", header: "TDataStd_RealArray.hxx".}
proc setID*(this: var TDataStdRealArray) {.cdecl, importcpp: "SetID",
                                       header: "TDataStd_RealArray.hxx".}
proc setValue*(this: var TDataStdRealArray; index: cint; value: cfloat) {.cdecl,
    importcpp: "SetValue", header: "TDataStd_RealArray.hxx".}
proc value*(this: TDataStdRealArray; index: cint): cfloat {.noSideEffect, cdecl,
    importcpp: "Value", header: "TDataStd_RealArray.hxx".}
proc `()`*(this: TDataStdRealArray; index: cint): cfloat {.noSideEffect, cdecl,
    importcpp: "#(@)", header: "TDataStd_RealArray.hxx".}
proc lower*(this: TDataStdRealArray): cint {.noSideEffect, cdecl, importcpp: "Lower",
    header: "TDataStd_RealArray.hxx".}
proc upper*(this: TDataStdRealArray): cint {.noSideEffect, cdecl, importcpp: "Upper",
    header: "TDataStd_RealArray.hxx".}
proc length*(this: TDataStdRealArray): cint {.noSideEffect, cdecl,
    importcpp: "Length", header: "TDataStd_RealArray.hxx".}
proc changeArray*(this: var TDataStdRealArray;
                 newArray: Handle[TColStdHArray1OfReal]; isCheckItems: bool = true) {.
    cdecl, importcpp: "ChangeArray", header: "TDataStd_RealArray.hxx".}
proc array*(this: TDataStdRealArray): Handle[TColStdHArray1OfReal] {.noSideEffect,
    cdecl, importcpp: "Array", header: "TDataStd_RealArray.hxx".}
proc getDelta*(this: TDataStdRealArray): bool {.noSideEffect, cdecl,
    importcpp: "GetDelta", header: "TDataStd_RealArray.hxx".}
proc setDelta*(this: var TDataStdRealArray; isDelta: bool) {.cdecl,
    importcpp: "SetDelta", header: "TDataStd_RealArray.hxx".}
proc newTDataStdRealArray*(): TDataStdRealArray {.cdecl, constructor,
    importcpp: "TDataStd_RealArray(@)", header: "TDataStd_RealArray.hxx".}
proc id*(this: TDataStdRealArray): StandardGUID {.noSideEffect, cdecl,
    importcpp: "ID", header: "TDataStd_RealArray.hxx".}
proc restore*(this: var TDataStdRealArray; with: Handle[TDF_Attribute]) {.cdecl,
    importcpp: "Restore", header: "TDataStd_RealArray.hxx".}
proc newEmpty*(this: TDataStdRealArray): Handle[TDF_Attribute] {.noSideEffect, cdecl,
    importcpp: "NewEmpty", header: "TDataStd_RealArray.hxx".}
proc paste*(this: TDataStdRealArray; into: Handle[TDF_Attribute];
           rt: Handle[TDF_RelocationTable]) {.noSideEffect, cdecl,
    importcpp: "Paste", header: "TDataStd_RealArray.hxx".}
proc dump*(this: TDataStdRealArray; anOS: var StandardOStream): var StandardOStream {.
    noSideEffect, cdecl, importcpp: "Dump", header: "TDataStd_RealArray.hxx".}
proc deltaOnModification*(this: TDataStdRealArray;
                         anOldAttribute: Handle[TDF_Attribute]): Handle[
    TDF_DeltaOnModification] {.noSideEffect, cdecl,
                              importcpp: "DeltaOnModification",
                              header: "TDataStd_RealArray.hxx".}
proc dumpJson*(this: TDataStdRealArray; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "TDataStd_RealArray.hxx".}