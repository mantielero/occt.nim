##  Created on: 2007-03-16
##  Created by: Michael SAZONOV
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
##  The original implementation Copyright: (C) RINA S.p.A

type
  TObjTIntSparseArrayVecOfData* = NCollectionSparseArray[int]
  TObjTIntSparseArrayMapOfData* = NCollectionSparseArray[int]

discard "forward decl of Standard_GUID"
type
  TObjTIntSparseArray* {.importcpp: "TObj_TIntSparseArray",
                        header: "TObj_TIntSparseArray.hxx", bycopy.} = object of TDF_Attribute ##
                                                                                        ## !
                                                                                        ## Empty
                                                                                        ## constructor
                                                                                        ##
                                                                                        ## !
                                                                                        ## Methods
                                                                                        ## for
                                                                                        ## access
                                                                                        ## to
                                                                                        ## data
                                                                                        ##
                                                                                        ## !
                                                                                        ## Returns
                                                                                        ## the
                                                                                        ## number
                                                                                        ## of
                                                                                        ## stored
                                                                                        ## values
                                                                                        ## in
                                                                                        ## the
                                                                                        ## set
                                                                                        ##
                                                                                        ## !
                                                                                        ## Redefined
                                                                                        ## OCAF
                                                                                        ## abstract
                                                                                        ## methods
                                                                                        ##
                                                                                        ## !
                                                                                        ## Returns
                                                                                        ## an
                                                                                        ## new
                                                                                        ## empty
                                                                                        ## TObj_TIntSparseArray
                                                                                        ## attribute.
                                                                                        ## It
                                                                                        ## is
                                                                                        ## used
                                                                                        ## by
                                                                                        ## the
                                                                                        ##
                                                                                        ## !
                                                                                        ## copy
                                                                                        ## algorithm.
                                                                                        ##
                                                                                        ## !
                                                                                        ## Methods
                                                                                        ## to
                                                                                        ## handle
                                                                                        ## the
                                                                                        ## modification
                                                                                        ## delta
                                                                                        ##
                                                                                        ## !
                                                                                        ## Sets
                                                                                        ## the
                                                                                        ## flag
                                                                                        ## pointing
                                                                                        ## to
                                                                                        ## the
                                                                                        ## necessity
                                                                                        ## to
                                                                                        ## maintain
                                                                                        ## a
                                                                                        ## modification
                                                                                        ## delta.
                                                                                        ##
                                                                                        ## !
                                                                                        ## It
                                                                                        ## is
                                                                                        ## called
                                                                                        ## by
                                                                                        ## the
                                                                                        ## retrieval
                                                                                        ## driver
                                                                                        ##
                                                                                        ## !
                                                                                        ## Internal
                                                                                        ## constant
                                                                                        ## to
                                                                                        ## recognize
                                                                                        ## items
                                                                                        ## in
                                                                                        ## the
                                                                                        ## backup
                                                                                        ## array
                                                                                        ##
                                                                                        ## !
                                                                                        ## correspondent
                                                                                        ## to
                                                                                        ## absent
                                                                                        ## values
                                                                                        ##
                                                                                        ## !
                                                                                        ## CASCADE
                                                                                        ## RTTI


proc constructTObjTIntSparseArray*(): TObjTIntSparseArray {.constructor,
    importcpp: "TObj_TIntSparseArray(@)", header: "TObj_TIntSparseArray.hxx".}
proc getID*(): StandardGUID {.importcpp: "TObj_TIntSparseArray::GetID(@)",
                           header: "TObj_TIntSparseArray.hxx".}
proc id*(this: TObjTIntSparseArray): StandardGUID {.noSideEffect, importcpp: "ID",
    header: "TObj_TIntSparseArray.hxx".}
proc set*(theLabel: TDF_Label): Handle[TObjTIntSparseArray] {.
    importcpp: "TObj_TIntSparseArray::Set(@)", header: "TObj_TIntSparseArray.hxx".}
proc size*(this: TObjTIntSparseArray): StandardSize {.noSideEffect,
    importcpp: "Size", header: "TObj_TIntSparseArray.hxx".}
type
  TObjTIntSparseArrayIterator* = ConstIterator

proc getIterator*(this: TObjTIntSparseArray): TObjTIntSparseArrayIterator {.
    noSideEffect, importcpp: "GetIterator", header: "TObj_TIntSparseArray.hxx".}
proc hasValue*(this: TObjTIntSparseArray; theId: StandardSize): bool {.noSideEffect,
    importcpp: "HasValue", header: "TObj_TIntSparseArray.hxx".}
proc value*(this: TObjTIntSparseArray; theId: StandardSize): int {.noSideEffect,
    importcpp: "Value", header: "TObj_TIntSparseArray.hxx".}
proc setValue*(this: var TObjTIntSparseArray; theId: StandardSize; theValue: int) {.
    importcpp: "SetValue", header: "TObj_TIntSparseArray.hxx".}
proc unsetValue*(this: var TObjTIntSparseArray; theId: StandardSize) {.
    importcpp: "UnsetValue", header: "TObj_TIntSparseArray.hxx".}
proc clear*(this: var TObjTIntSparseArray) {.importcpp: "Clear",
    header: "TObj_TIntSparseArray.hxx".}
proc newEmpty*(this: TObjTIntSparseArray): Handle[TDF_Attribute] {.noSideEffect,
    importcpp: "NewEmpty", header: "TObj_TIntSparseArray.hxx".}
proc backupCopy*(this: TObjTIntSparseArray): Handle[TDF_Attribute] {.noSideEffect,
    importcpp: "BackupCopy", header: "TObj_TIntSparseArray.hxx".}
proc restore*(this: var TObjTIntSparseArray; theDelta: Handle[TDF_Attribute]) {.
    importcpp: "Restore", header: "TObj_TIntSparseArray.hxx".}
proc paste*(this: TObjTIntSparseArray; theInto: Handle[TDF_Attribute];
           theRT: Handle[TDF_RelocationTable]) {.noSideEffect, importcpp: "Paste",
    header: "TObj_TIntSparseArray.hxx".}
proc beforeCommitTransaction*(this: var TObjTIntSparseArray) {.
    importcpp: "BeforeCommitTransaction", header: "TObj_TIntSparseArray.hxx".}
proc deltaOnModification*(this: var TObjTIntSparseArray;
                         theDelta: Handle[TDF_DeltaOnModification]) {.
    importcpp: "DeltaOnModification", header: "TObj_TIntSparseArray.hxx".}
proc afterUndo*(this: var TObjTIntSparseArray; theDelta: Handle[TDF_AttributeDelta];
               toForce: bool): bool {.importcpp: "AfterUndo",
                                   header: "TObj_TIntSparseArray.hxx".}
proc setDoBackup*(this: var TObjTIntSparseArray; toDo: bool) {.
    importcpp: "SetDoBackup", header: "TObj_TIntSparseArray.hxx".}
proc clearDelta*(this: var TObjTIntSparseArray) {.importcpp: "ClearDelta",
    header: "TObj_TIntSparseArray.hxx".}
type
  TObjTIntSparseArraybaseType* = TDF_Attribute

proc getTypeName*(): cstring {.importcpp: "TObj_TIntSparseArray::get_type_name(@)",
                            header: "TObj_TIntSparseArray.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "TObj_TIntSparseArray::get_type_descriptor(@)",
    header: "TObj_TIntSparseArray.hxx".}
proc dynamicType*(this: TObjTIntSparseArray): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "TObj_TIntSparseArray.hxx".}
## ! Define handle class for TObj_TIntSparseArray

discard "forward decl of TObj_TIntSparseArray"
type
  HandleTObjTIntSparseArray* = Handle[TObjTIntSparseArray]

# when defined(_MSC_VER):
#   discard
