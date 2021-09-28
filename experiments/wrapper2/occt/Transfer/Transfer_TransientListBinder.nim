##  Created on: 1994-10-03
##  Created by: Christian CAILLET
##  Copyright (c) 1994-1999 Matra Datavision
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

discard "forward decl of Standard_TypeMismatch"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_Transient"
discard "forward decl of Transfer_TransientListBinder"
discard "forward decl of Transfer_TransientListBinder"
type
  HandleC1C1* = Handle[TransferTransientListBinder]

## ! This binder binds several (a list of) Transients with a starting
## ! entity, when this entity itself corresponds to a simple list
## ! of Transients. Each part is not seen as a sub-result of an
## ! independant componant, but as an item of a built-in list

type
  TransferTransientListBinder* {.importcpp: "Transfer_TransientListBinder",
                                header: "Transfer_TransientListBinder.hxx", bycopy.} = object of TransferBinder


proc constructTransferTransientListBinder*(): TransferTransientListBinder {.
    constructor, importcpp: "Transfer_TransientListBinder(@)",
    header: "Transfer_TransientListBinder.hxx".}
proc constructTransferTransientListBinder*(
    list: Handle[TColStdHSequenceOfTransient]): TransferTransientListBinder {.
    constructor, importcpp: "Transfer_TransientListBinder(@)",
    header: "Transfer_TransientListBinder.hxx".}
proc isMultiple*(this: TransferTransientListBinder): bool {.noSideEffect,
    importcpp: "IsMultiple", header: "Transfer_TransientListBinder.hxx".}
proc resultType*(this: TransferTransientListBinder): Handle[StandardType] {.
    noSideEffect, importcpp: "ResultType",
    header: "Transfer_TransientListBinder.hxx".}
proc resultTypeName*(this: TransferTransientListBinder): StandardCString {.
    noSideEffect, importcpp: "ResultTypeName",
    header: "Transfer_TransientListBinder.hxx".}
proc addResult*(this: var TransferTransientListBinder;
               res: Handle[StandardTransient]) {.importcpp: "AddResult",
    header: "Transfer_TransientListBinder.hxx".}
proc result*(this: TransferTransientListBinder): Handle[TColStdHSequenceOfTransient] {.
    noSideEffect, importcpp: "Result", header: "Transfer_TransientListBinder.hxx".}
proc setResult*(this: var TransferTransientListBinder; num: cint;
               res: Handle[StandardTransient]) {.importcpp: "SetResult",
    header: "Transfer_TransientListBinder.hxx".}
proc nbTransients*(this: TransferTransientListBinder): cint {.noSideEffect,
    importcpp: "NbTransients", header: "Transfer_TransientListBinder.hxx".}
proc transient*(this: TransferTransientListBinder; num: cint): Handle[
    StandardTransient] {.noSideEffect, importcpp: "Transient",
                        header: "Transfer_TransientListBinder.hxx".}
type
  TransferTransientListBinderbaseType* = TransferBinder

proc getTypeName*(): cstring {.importcpp: "Transfer_TransientListBinder::get_type_name(@)",
                            header: "Transfer_TransientListBinder.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Transfer_TransientListBinder::get_type_descriptor(@)",
    header: "Transfer_TransientListBinder.hxx".}
proc dynamicType*(this: TransferTransientListBinder): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "Transfer_TransientListBinder.hxx".}

























