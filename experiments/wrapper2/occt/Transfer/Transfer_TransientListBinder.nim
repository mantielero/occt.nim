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

import
  ../Standard/Standard, ../Standard/Standard_Type,
  ../TColStd/TColStd_HSequenceOfTransient, Transfer_Binder,
  ../Standard/Standard_Boolean, ../Standard/Standard_Type,
  ../Standard/Standard_CString, ../Standard/Standard_Integer

discard "forward decl of Standard_TypeMismatch"
discard "forward decl of Standard_OutOfRange"
discard "forward decl of Standard_Transient"
discard "forward decl of Transfer_TransientListBinder"
discard "forward decl of Transfer_TransientListBinder"
type
  Handle_Transfer_TransientListBinder* = handle[Transfer_TransientListBinder]

## ! This binder binds several (a list of) Transients with a starting
## ! entity, when this entity itself corresponds to a simple list
## ! of Transients. Each part is not seen as a sub-result of an
## ! independant componant, but as an item of a built-in list

type
  Transfer_TransientListBinder* {.importcpp: "Transfer_TransientListBinder",
                                 header: "Transfer_TransientListBinder.hxx",
                                 bycopy.} = object of Transfer_Binder


proc constructTransfer_TransientListBinder*(): Transfer_TransientListBinder {.
    constructor, importcpp: "Transfer_TransientListBinder(@)",
    header: "Transfer_TransientListBinder.hxx".}
proc constructTransfer_TransientListBinder*(
    list: handle[TColStd_HSequenceOfTransient]): Transfer_TransientListBinder {.
    constructor, importcpp: "Transfer_TransientListBinder(@)",
    header: "Transfer_TransientListBinder.hxx".}
proc IsMultiple*(this: Transfer_TransientListBinder): Standard_Boolean {.
    noSideEffect, importcpp: "IsMultiple",
    header: "Transfer_TransientListBinder.hxx".}
proc ResultType*(this: Transfer_TransientListBinder): handle[Standard_Type] {.
    noSideEffect, importcpp: "ResultType",
    header: "Transfer_TransientListBinder.hxx".}
proc ResultTypeName*(this: Transfer_TransientListBinder): Standard_CString {.
    noSideEffect, importcpp: "ResultTypeName",
    header: "Transfer_TransientListBinder.hxx".}
proc AddResult*(this: var Transfer_TransientListBinder;
               res: handle[Standard_Transient]) {.importcpp: "AddResult",
    header: "Transfer_TransientListBinder.hxx".}
proc Result*(this: Transfer_TransientListBinder): handle[
    TColStd_HSequenceOfTransient] {.noSideEffect, importcpp: "Result",
                                   header: "Transfer_TransientListBinder.hxx".}
proc SetResult*(this: var Transfer_TransientListBinder; num: Standard_Integer;
               res: handle[Standard_Transient]) {.importcpp: "SetResult",
    header: "Transfer_TransientListBinder.hxx".}
proc NbTransients*(this: Transfer_TransientListBinder): Standard_Integer {.
    noSideEffect, importcpp: "NbTransients",
    header: "Transfer_TransientListBinder.hxx".}
proc Transient*(this: Transfer_TransientListBinder; num: Standard_Integer): handle[
    Standard_Transient] {.noSideEffect, importcpp: "Transient",
                         header: "Transfer_TransientListBinder.hxx".}
type
  Transfer_TransientListBinderbase_type* = Transfer_Binder

proc get_type_name*(): cstring {.importcpp: "Transfer_TransientListBinder::get_type_name(@)",
                              header: "Transfer_TransientListBinder.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Transfer_TransientListBinder::get_type_descriptor(@)",
    header: "Transfer_TransientListBinder.hxx".}
proc DynamicType*(this: Transfer_TransientListBinder): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "Transfer_TransientListBinder.hxx".}