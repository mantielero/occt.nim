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

  TDataStdRealArraybaseType* = TDF_Attribute

proc getTypeName*(): cstring {.importcpp: "TDataStd_RealArray::get_type_name(@)",
                            header: "TDataStd_RealArray.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "TDataStd_RealArray::get_type_descriptor(@)",
    header: "TDataStd_RealArray.hxx".}
proc dynamicType*(this: TDataStdRealArray): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "TDataStd_RealArray.hxx".}
proc getID*(): StandardGUID {.importcpp: "TDataStd_RealArray::GetID(@)",
                           header: "TDataStd_RealArray.hxx".}
proc set*(label: TDF_Label; lower: int; upper: int; isDelta: bool = false): Handle[
    TDataStdRealArray] {.importcpp: "TDataStd_RealArray::Set(@)",
                        header: "TDataStd_RealArray.hxx".}
proc set*(label: TDF_Label; theGuid: StandardGUID; lower: int; upper: int;
         isDelta: bool = false): Handle[TDataStdRealArray] {.
    importcpp: "TDataStd_RealArray::Set(@)", header: "TDataStd_RealArray.hxx".}
proc init*(this: var TDataStdRealArray; lower: int; upper: int) {.importcpp: "Init",
    header: "TDataStd_RealArray.hxx".}
proc setID*(this: var TDataStdRealArray; theGuid: StandardGUID) {.importcpp: "SetID",
    header: "TDataStd_RealArray.hxx".}
proc setID*(this: var TDataStdRealArray) {.importcpp: "SetID",
                                       header: "TDataStd_RealArray.hxx".}
proc setValue*(this: var TDataStdRealArray; index: int; value: float) {.
    importcpp: "SetValue", header: "TDataStd_RealArray.hxx".}
proc value*(this: TDataStdRealArray; index: int): float {.noSideEffect,
    importcpp: "Value", header: "TDataStd_RealArray.hxx".}
proc `()`*(this: TDataStdRealArray; index: int): float {.noSideEffect,
    importcpp: "#(@)", header: "TDataStd_RealArray.hxx".}
proc lower*(this: TDataStdRealArray): int {.noSideEffect, importcpp: "Lower",
                                        header: "TDataStd_RealArray.hxx".}
proc upper*(this: TDataStdRealArray): int {.noSideEffect, importcpp: "Upper",
                                        header: "TDataStd_RealArray.hxx".}
proc length*(this: TDataStdRealArray): int {.noSideEffect, importcpp: "Length",
    header: "TDataStd_RealArray.hxx".}
proc changeArray*(this: var TDataStdRealArray;
                 newArray: Handle[TColStdHArray1OfReal]; isCheckItems: bool = true) {.
    importcpp: "ChangeArray", header: "TDataStd_RealArray.hxx".}
proc array*(this: TDataStdRealArray): Handle[TColStdHArray1OfReal] {.noSideEffect,
    importcpp: "Array", header: "TDataStd_RealArray.hxx".}
proc getDelta*(this: TDataStdRealArray): bool {.noSideEffect, importcpp: "GetDelta",
    header: "TDataStd_RealArray.hxx".}
proc setDelta*(this: var TDataStdRealArray; isDelta: bool) {.importcpp: "SetDelta",
    header: "TDataStd_RealArray.hxx".}
proc constructTDataStdRealArray*(): TDataStdRealArray {.constructor,
    importcpp: "TDataStd_RealArray(@)", header: "TDataStd_RealArray.hxx".}
proc id*(this: TDataStdRealArray): StandardGUID {.noSideEffect, importcpp: "ID",
    header: "TDataStd_RealArray.hxx".}
proc restore*(this: var TDataStdRealArray; with: Handle[TDF_Attribute]) {.
    importcpp: "Restore", header: "TDataStd_RealArray.hxx".}
proc newEmpty*(this: TDataStdRealArray): Handle[TDF_Attribute] {.noSideEffect,
    importcpp: "NewEmpty", header: "TDataStd_RealArray.hxx".}
proc paste*(this: TDataStdRealArray; into: Handle[TDF_Attribute];
           rt: Handle[TDF_RelocationTable]) {.noSideEffect, importcpp: "Paste",
    header: "TDataStd_RealArray.hxx".}
proc dump*(this: TDataStdRealArray; anOS: var StandardOStream): var StandardOStream {.
    noSideEffect, importcpp: "Dump", header: "TDataStd_RealArray.hxx".}
proc deltaOnModification*(this: TDataStdRealArray;
                         anOldAttribute: Handle[TDF_Attribute]): Handle[
    TDF_DeltaOnModification] {.noSideEffect, importcpp: "DeltaOnModification",
                              header: "TDataStd_RealArray.hxx".}
proc dumpJson*(this: TDataStdRealArray; theOStream: var StandardOStream;
              theDepth: int = -1) {.noSideEffect, importcpp: "DumpJson",
                                header: "TDataStd_RealArray.hxx".}
