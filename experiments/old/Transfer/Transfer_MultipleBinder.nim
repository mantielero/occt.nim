##  Created on: 1993-04-07
##  Created by: Christian CAILLET
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

discard "forward decl of Transfer_TransferFailure"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_Transient"
discard "forward decl of Transfer_MultipleBinder"
discard "forward decl of Transfer_MultipleBinder"
type
  HandleTransferMultipleBinder* = Handle[TransferMultipleBinder]

## ! Allows direct binding between a starting Object and the Result
## ! of its transfer, when it can be made of several Transient
## ! Objects. Compared to a Transcriptor, it has no Transfer Action
## !
## ! Result is a list of Transient Results. Unique Result is not
## ! available : SetResult is redefined to start the list on the
## ! first call, and refuse the other times.
## !
## ! rr
## !
## ! Remark : MultipleBinder itself is intended to be created and
## ! filled by TransferProcess itself (method Bind). In particular,
## ! conflicts between Unique (Standard) result and Multiple result
## ! are avoided through management made by TransferProcess.
## !
## ! Also, a Transcriptor (with an effective Transfer Method) which
## ! can produce a Multiple Result, may be defined as a sub-class
## ! of MultipleBinder by redefining method Transfer.

type
  TransferMultipleBinder* {.importcpp: "Transfer_MultipleBinder",
                           header: "Transfer_MultipleBinder.hxx", bycopy.} = object of TransferBinder ##
                                                                                               ## !
                                                                                               ## normal
                                                                                               ## standard
                                                                                               ## constructor,
                                                                                               ## creates
                                                                                               ## an
                                                                                               ## empty
                                                                                               ## MultipleBinder

type
  TransferMultipleBinderbaseType* = TransferBinder


proc constructTransferMultipleBinder*(): TransferMultipleBinder {.constructor,
    importcpp: "Transfer_MultipleBinder(@)", header: "Transfer_MultipleBinder.hxx".}
proc isMultiple*(this: TransferMultipleBinder): StandardBoolean {.noSideEffect,
    importcpp: "IsMultiple", header: "Transfer_MultipleBinder.hxx".}
#[ proc resultType*(this: TransferMultipleBinder): Handle[StandardType] {.noSideEffect,
    importcpp: "ResultType", header: "Transfer_MultipleBinder.hxx".} ]#
proc resultTypeName*(this: TransferMultipleBinder): StandardCString {.noSideEffect,
    importcpp: "ResultTypeName", header: "Transfer_MultipleBinder.hxx".}
proc addResult*(this: var TransferMultipleBinder; res: Handle[StandardTransient]) {.
    importcpp: "AddResult", header: "Transfer_MultipleBinder.hxx".}
proc nbResults*(this: TransferMultipleBinder): int {.noSideEffect,
    importcpp: "NbResults", header: "Transfer_MultipleBinder.hxx".}
proc resultValue*(this: TransferMultipleBinder; num: int): Handle[StandardTransient] {.
    noSideEffect, importcpp: "ResultValue", header: "Transfer_MultipleBinder.hxx".}
#[ proc multipleResult*(this: TransferMultipleBinder): Handle[
    TColStdHSequenceOfTransient] {.noSideEffect, importcpp: "MultipleResult",
                                  header: "Transfer_MultipleBinder.hxx".} ]#
#[ proc setMultipleResult*(this: var TransferMultipleBinder;
                       mulres: Handle[TColStdHSequenceOfTransient]) {.
    importcpp: "SetMultipleResult", header: "Transfer_MultipleBinder.hxx".}

proc getTypeName*(): cstring {.importcpp: "Transfer_MultipleBinder::get_type_name(@)",
                            header: "Transfer_MultipleBinder.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Transfer_MultipleBinder::get_type_descriptor(@)",
    header: "Transfer_MultipleBinder.hxx".}
proc dynamicType*(this: TransferMultipleBinder): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "Transfer_MultipleBinder.hxx".} ]#