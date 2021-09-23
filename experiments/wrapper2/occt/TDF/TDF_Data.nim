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

import
  ../Standard/Standard, ../Standard/Standard_Type, TDF_LabelNodePtr,
  ../Standard/Standard_Integer, ../Standard/Standard_Boolean,
  ../TColStd/TColStd_ListOfInteger, TDF_HAllocator,
  ../Standard/Standard_Transient, TDF_Label, ../Standard/Standard_OStream

discard "forward decl of Standard_NoMoreObject"
discard "forward decl of TDF_Transaction"
discard "forward decl of TDF_LabelNode"
discard "forward decl of TDF_Delta"
discard "forward decl of TDF_Label"
discard "forward decl of TDF_Data"
discard "forward decl of TDF_Data"
type
  Handle_TDF_Data* = handle[TDF_Data]

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
  TDF_Data* {.importcpp: "TDF_Data", header: "TDF_Data.hxx", bycopy.} = object of Standard_Transient ##
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
proc Root*(this: TDF_Data): TDF_Label {.noSideEffect, importcpp: "Root",
                                    header: "TDF_Data.hxx".}
proc Transaction*(this: TDF_Data): Standard_Integer {.noSideEffect,
    importcpp: "Transaction", header: "TDF_Data.hxx".}
proc Time*(this: TDF_Data): Standard_Integer {.noSideEffect, importcpp: "Time",
    header: "TDF_Data.hxx".}
proc IsApplicable*(this: TDF_Data; aDelta: handle[TDF_Delta]): Standard_Boolean {.
    noSideEffect, importcpp: "IsApplicable", header: "TDF_Data.hxx".}
proc Undo*(this: var TDF_Data; aDelta: handle[TDF_Delta];
          withDelta: Standard_Boolean = Standard_False): handle[TDF_Delta] {.
    importcpp: "Undo", header: "TDF_Data.hxx".}
proc Destroy*(this: var TDF_Data) {.importcpp: "Destroy", header: "TDF_Data.hxx".}
proc destroyTDF_Data*(this: var TDF_Data) {.importcpp: "#.~TDF_Data()",
                                        header: "TDF_Data.hxx".}
proc NotUndoMode*(this: TDF_Data): Standard_Boolean {.noSideEffect,
    importcpp: "NotUndoMode", header: "TDF_Data.hxx".}
proc Dump*(this: TDF_Data; anOS: var Standard_OStream): var Standard_OStream {.
    noSideEffect, importcpp: "Dump", header: "TDF_Data.hxx".}
proc `<<`*(this: TDF_Data; anOS: var Standard_OStream): var Standard_OStream {.
    noSideEffect, importcpp: "(# << #)", header: "TDF_Data.hxx".}
proc AllowModification*(this: var TDF_Data; isAllowed: Standard_Boolean) {.
    importcpp: "AllowModification", header: "TDF_Data.hxx".}
proc IsModificationAllowed*(this: TDF_Data): Standard_Boolean {.noSideEffect,
    importcpp: "IsModificationAllowed", header: "TDF_Data.hxx".}
proc LabelNodeAllocator*(this: TDF_Data): TDF_HAllocator {.noSideEffect,
    importcpp: "LabelNodeAllocator", header: "TDF_Data.hxx".}
proc DumpJson*(this: TDF_Data; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "TDF_Data.hxx".}
type
  TDF_Database_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "TDF_Data::get_type_name(@)",
                              header: "TDF_Data.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "TDF_Data::get_type_descriptor(@)", header: "TDF_Data.hxx".}
proc DynamicType*(this: TDF_Data): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "TDF_Data.hxx".}