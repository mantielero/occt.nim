##  Created by: DAUTRY Philippe
##  Copyright (c) 1997-1999 Matra Datavision
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

discard "forward decl of Standard_NoMoreObject"
discard "forward decl of TDF_Transaction"
discard "forward decl of TDF_LabelNode"
discard "forward decl of TDF_Delta"
discard "forward decl of TDF_Label"
discard "forward decl of TDF_Data"
discard "forward decl of TDF_Data"
type
  HandleC1C1* = Handle[TDF_Data]

## ! This class is used to manipulate a complete
## ! independant, self sufficient data structure and
## ! its services:
## !
## ! Access to the root label;
## !
## ! Opens, aborts, commits a transaction;
## !
## ! Generation and use of Delta, depending on the time.
## ! This class uses a special allocator
## ! (see LabelNodeAllocator() method)
## ! for more efficient allocation of
## ! objects in memory.

type
  TDF_Data* {.importcpp: "TDF_Data", header: "TDF_Data.hxx", bycopy.} = object of StandardTransient ##
                                                                                          ## !
                                                                                          ## A
                                                                                          ## new
                                                                                          ## and
                                                                                          ## empty
                                                                                          ## Data
                                                                                          ## structure.
                                                                                          ##
                                                                                          ## !
                                                                                          ## Fixes
                                                                                          ## order
                                                                                          ## of
                                                                                          ## Attributes'
                                                                                          ## Deltas
                                                                                          ## to
                                                                                          ## perform
                                                                                          ## undo/redo
                                                                                          ## without
                                                                                          ## exceptions:
                                                                                          ##
                                                                                          ## !
                                                                                          ## puts
                                                                                          ## OnRemoval
                                                                                          ## deltas
                                                                                          ## to
                                                                                          ## the
                                                                                          ## end
                                                                                          ## of
                                                                                          ## the
                                                                                          ## list.


proc constructTDF_Data*(): TDF_Data {.constructor, importcpp: "TDF_Data(@)",
                                   header: "TDF_Data.hxx".}
proc root*(this: TDF_Data): TDF_Label {.noSideEffect, importcpp: "Root",
                                    header: "TDF_Data.hxx".}
proc transaction*(this: TDF_Data): cint {.noSideEffect, importcpp: "Transaction",
                                      header: "TDF_Data.hxx".}
proc time*(this: TDF_Data): cint {.noSideEffect, importcpp: "Time",
                               header: "TDF_Data.hxx".}
proc isApplicable*(this: TDF_Data; aDelta: Handle[TDF_Delta]): bool {.noSideEffect,
    importcpp: "IsApplicable", header: "TDF_Data.hxx".}
proc undo*(this: var TDF_Data; aDelta: Handle[TDF_Delta]; withDelta: bool = false): Handle[
    TDF_Delta] {.importcpp: "Undo", header: "TDF_Data.hxx".}
proc destroy*(this: var TDF_Data) {.importcpp: "Destroy", header: "TDF_Data.hxx".}
proc destroyTDF_Data*(this: var TDF_Data) {.importcpp: "#.~TDF_Data()",
                                        header: "TDF_Data.hxx".}
proc notUndoMode*(this: TDF_Data): bool {.noSideEffect, importcpp: "NotUndoMode",
                                      header: "TDF_Data.hxx".}
proc dump*(this: TDF_Data; anOS: var StandardOStream): var StandardOStream {.
    noSideEffect, importcpp: "Dump", header: "TDF_Data.hxx".}
proc `<<`*(this: TDF_Data; anOS: var StandardOStream): var StandardOStream {.
    noSideEffect, importcpp: "(# << #)", header: "TDF_Data.hxx".}
proc allowModification*(this: var TDF_Data; isAllowed: bool) {.
    importcpp: "AllowModification", header: "TDF_Data.hxx".}
proc isModificationAllowed*(this: TDF_Data): bool {.noSideEffect,
    importcpp: "IsModificationAllowed", header: "TDF_Data.hxx".}
proc labelNodeAllocator*(this: TDF_Data): TDF_HAllocator {.noSideEffect,
    importcpp: "LabelNodeAllocator", header: "TDF_Data.hxx".}
proc dumpJson*(this: TDF_Data; theOStream: var StandardOStream; theDepth: cint = -1) {.
    noSideEffect, importcpp: "DumpJson", header: "TDF_Data.hxx".}
type
  TDF_DatabaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "TDF_Data::get_type_name(@)",
                            header: "TDF_Data.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "TDF_Data::get_type_descriptor(@)", header: "TDF_Data.hxx".}
proc dynamicType*(this: TDF_Data): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "TDF_Data.hxx".}

























