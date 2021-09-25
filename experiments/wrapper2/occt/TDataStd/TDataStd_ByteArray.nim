##  Created on: 2007-05-29
##  Created by: Vlad Romashko
##  Copyright (c) 2007-2014 OPEN CASCADE SAS
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

discard "forward decl of TDataStd_DeltaOnModificationOfByteArray"
discard "forward decl of Standard_GUID"
discard "forward decl of TDF_Label"
discard "forward decl of TDF_Attribute"
discard "forward decl of TDF_RelocationTable"
discard "forward decl of TDF_DeltaOnModification"
discard "forward decl of TDataStd_ByteArray"
discard "forward decl of TDataStd_ByteArray"
type
  HandleTDataStdByteArray* = Handle[TDataStdByteArray]

## ! An array of Byte (unsigned char) values.

type
  TDataStdByteArray* {.importcpp: "TDataStd_ByteArray",
                      header: "TDataStd_ByteArray.hxx", bycopy.} = object of TDF_Attribute ##
                                                                                    ## !
                                                                                    ## Static
                                                                                    ## methods
                                                                                    ##
                                                                                    ## !
                                                                                    ## ==============
                                                                                    ##
                                                                                    ## !
                                                                                    ## Returns
                                                                                    ## an
                                                                                    ## ID
                                                                                    ## for
                                                                                    ## array.

  TDataStdByteArraybaseType* = TDF_Attribute

proc getTypeName*(): cstring {.importcpp: "TDataStd_ByteArray::get_type_name(@)",
                            header: "TDataStd_ByteArray.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "TDataStd_ByteArray::get_type_descriptor(@)",
    header: "TDataStd_ByteArray.hxx".}
proc dynamicType*(this: TDataStdByteArray): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "TDataStd_ByteArray.hxx".}
proc getID*(): StandardGUID {.importcpp: "TDataStd_ByteArray::GetID(@)",
                           header: "TDataStd_ByteArray.hxx".}
proc set*(label: TDF_Label; lower: int; upper: int; isDelta: bool = false): Handle[
    TDataStdByteArray] {.importcpp: "TDataStd_ByteArray::Set(@)",
                        header: "TDataStd_ByteArray.hxx".}
proc set*(label: TDF_Label; theGuid: StandardGUID; lower: int; upper: int;
         isDelta: bool = false): Handle[TDataStdByteArray] {.
    importcpp: "TDataStd_ByteArray::Set(@)", header: "TDataStd_ByteArray.hxx".}
proc init*(this: var TDataStdByteArray; lower: int; upper: int) {.importcpp: "Init",
    header: "TDataStd_ByteArray.hxx".}
proc setValue*(this: var TDataStdByteArray; index: int; value: StandardByte) {.
    importcpp: "SetValue", header: "TDataStd_ByteArray.hxx".}
proc setID*(this: var TDataStdByteArray; theGuid: StandardGUID) {.importcpp: "SetID",
    header: "TDataStd_ByteArray.hxx".}
proc setID*(this: var TDataStdByteArray) {.importcpp: "SetID",
                                       header: "TDataStd_ByteArray.hxx".}
proc value*(this: TDataStdByteArray; index: int): StandardByte {.noSideEffect,
    importcpp: "Value", header: "TDataStd_ByteArray.hxx".}
proc `()`*(this: TDataStdByteArray; index: int): StandardByte {.noSideEffect,
    importcpp: "#(@)", header: "TDataStd_ByteArray.hxx".}
proc lower*(this: TDataStdByteArray): int {.noSideEffect, importcpp: "Lower",
                                        header: "TDataStd_ByteArray.hxx".}
proc upper*(this: TDataStdByteArray): int {.noSideEffect, importcpp: "Upper",
                                        header: "TDataStd_ByteArray.hxx".}
proc length*(this: TDataStdByteArray): int {.noSideEffect, importcpp: "Length",
    header: "TDataStd_ByteArray.hxx".}
proc internalArray*(this: TDataStdByteArray): Handle[TColStdHArray1OfByte] {.
    noSideEffect, importcpp: "InternalArray", header: "TDataStd_ByteArray.hxx".}
proc changeArray*(this: var TDataStdByteArray;
                 newArray: Handle[TColStdHArray1OfByte]; isCheckItems: bool = true) {.
    importcpp: "ChangeArray", header: "TDataStd_ByteArray.hxx".}
proc getDelta*(this: TDataStdByteArray): bool {.noSideEffect, importcpp: "GetDelta",
    header: "TDataStd_ByteArray.hxx".}
proc setDelta*(this: var TDataStdByteArray; isDelta: bool) {.importcpp: "SetDelta",
    header: "TDataStd_ByteArray.hxx".}
proc constructTDataStdByteArray*(): TDataStdByteArray {.constructor,
    importcpp: "TDataStd_ByteArray(@)", header: "TDataStd_ByteArray.hxx".}
proc id*(this: TDataStdByteArray): StandardGUID {.noSideEffect, importcpp: "ID",
    header: "TDataStd_ByteArray.hxx".}
proc restore*(this: var TDataStdByteArray; with: Handle[TDF_Attribute]) {.
    importcpp: "Restore", header: "TDataStd_ByteArray.hxx".}
proc newEmpty*(this: TDataStdByteArray): Handle[TDF_Attribute] {.noSideEffect,
    importcpp: "NewEmpty", header: "TDataStd_ByteArray.hxx".}
proc paste*(this: TDataStdByteArray; into: Handle[TDF_Attribute];
           rt: Handle[TDF_RelocationTable]) {.noSideEffect, importcpp: "Paste",
    header: "TDataStd_ByteArray.hxx".}
proc dump*(this: TDataStdByteArray; os: var StandardOStream): var StandardOStream {.
    noSideEffect, importcpp: "Dump", header: "TDataStd_ByteArray.hxx".}
proc deltaOnModification*(this: TDataStdByteArray;
                         anOldAttribute: Handle[TDF_Attribute]): Handle[
    TDF_DeltaOnModification] {.noSideEffect, importcpp: "DeltaOnModification",
                              header: "TDataStd_ByteArray.hxx".}
proc dumpJson*(this: TDataStdByteArray; theOStream: var StandardOStream;
              theDepth: int = -1) {.noSideEffect, importcpp: "DumpJson",
                                header: "TDataStd_ByteArray.hxx".}
