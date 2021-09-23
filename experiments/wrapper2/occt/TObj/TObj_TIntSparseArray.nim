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

import
  TObj_Common, ../NCollection/NCollection_SparseArray, ../TDF/TDF_Attribute,
  ../TDF/TDF_Label

type
  TObj_TIntSparseArray_VecOfData* = NCollection_SparseArray[Standard_Integer]
  TObj_TIntSparseArray_MapOfData* = NCollection_SparseArray[Standard_Integer]

discard "forward decl of Standard_GUID"
type
  TObj_TIntSparseArray* {.importcpp: "TObj_TIntSparseArray",
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


proc constructTObj_TIntSparseArray*(): TObj_TIntSparseArray {.constructor,
    importcpp: "TObj_TIntSparseArray(@)", header: "TObj_TIntSparseArray.hxx".}
proc GetID*(): Standard_GUID {.importcpp: "TObj_TIntSparseArray::GetID(@)",
                            header: "TObj_TIntSparseArray.hxx".}
proc ID*(this: TObj_TIntSparseArray): Standard_GUID {.noSideEffect, importcpp: "ID",
    header: "TObj_TIntSparseArray.hxx".}
proc Set*(theLabel: TDF_Label): handle[TObj_TIntSparseArray] {.
    importcpp: "TObj_TIntSparseArray::Set(@)", header: "TObj_TIntSparseArray.hxx".}
proc Size*(this: TObj_TIntSparseArray): Standard_Size {.noSideEffect,
    importcpp: "Size", header: "TObj_TIntSparseArray.hxx".}
type
  TObj_TIntSparseArrayIterator* = ConstIterator

proc GetIterator*(this: TObj_TIntSparseArray): TObj_TIntSparseArrayIterator {.
    noSideEffect, importcpp: "GetIterator", header: "TObj_TIntSparseArray.hxx".}
proc HasValue*(this: TObj_TIntSparseArray; theId: Standard_Size): Standard_Boolean {.
    noSideEffect, importcpp: "HasValue", header: "TObj_TIntSparseArray.hxx".}
proc Value*(this: TObj_TIntSparseArray; theId: Standard_Size): Standard_Integer {.
    noSideEffect, importcpp: "Value", header: "TObj_TIntSparseArray.hxx".}
proc SetValue*(this: var TObj_TIntSparseArray; theId: Standard_Size;
              theValue: Standard_Integer) {.importcpp: "SetValue",
    header: "TObj_TIntSparseArray.hxx".}
proc UnsetValue*(this: var TObj_TIntSparseArray; theId: Standard_Size) {.
    importcpp: "UnsetValue", header: "TObj_TIntSparseArray.hxx".}
proc Clear*(this: var TObj_TIntSparseArray) {.importcpp: "Clear",
    header: "TObj_TIntSparseArray.hxx".}
proc NewEmpty*(this: TObj_TIntSparseArray): handle[TDF_Attribute] {.noSideEffect,
    importcpp: "NewEmpty", header: "TObj_TIntSparseArray.hxx".}
proc BackupCopy*(this: TObj_TIntSparseArray): handle[TDF_Attribute] {.noSideEffect,
    importcpp: "BackupCopy", header: "TObj_TIntSparseArray.hxx".}
proc Restore*(this: var TObj_TIntSparseArray; theDelta: handle[TDF_Attribute]) {.
    importcpp: "Restore", header: "TObj_TIntSparseArray.hxx".}
proc Paste*(this: TObj_TIntSparseArray; theInto: handle[TDF_Attribute];
           theRT: handle[TDF_RelocationTable]) {.noSideEffect, importcpp: "Paste",
    header: "TObj_TIntSparseArray.hxx".}
proc BeforeCommitTransaction*(this: var TObj_TIntSparseArray) {.
    importcpp: "BeforeCommitTransaction", header: "TObj_TIntSparseArray.hxx".}
proc DeltaOnModification*(this: var TObj_TIntSparseArray;
                         theDelta: handle[TDF_DeltaOnModification]) {.
    importcpp: "DeltaOnModification", header: "TObj_TIntSparseArray.hxx".}
proc AfterUndo*(this: var TObj_TIntSparseArray;
               theDelta: handle[TDF_AttributeDelta]; toForce: Standard_Boolean): Standard_Boolean {.
    importcpp: "AfterUndo", header: "TObj_TIntSparseArray.hxx".}
proc SetDoBackup*(this: var TObj_TIntSparseArray; toDo: Standard_Boolean) {.
    importcpp: "SetDoBackup", header: "TObj_TIntSparseArray.hxx".}
proc ClearDelta*(this: var TObj_TIntSparseArray) {.importcpp: "ClearDelta",
    header: "TObj_TIntSparseArray.hxx".}
type
  TObj_TIntSparseArraybase_type* = TDF_Attribute

proc get_type_name*(): cstring {.importcpp: "TObj_TIntSparseArray::get_type_name(@)",
                              header: "TObj_TIntSparseArray.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "TObj_TIntSparseArray::get_type_descriptor(@)",
    header: "TObj_TIntSparseArray.hxx".}
proc DynamicType*(this: TObj_TIntSparseArray): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "TObj_TIntSparseArray.hxx".}
## ! Define handle class for TObj_TIntSparseArray

discard "forward decl of TObj_TIntSparseArray"
type
  Handle_TObj_TIntSparseArray* = handle[TObj_TIntSparseArray]

when defined(_MSC_VER):
  discard