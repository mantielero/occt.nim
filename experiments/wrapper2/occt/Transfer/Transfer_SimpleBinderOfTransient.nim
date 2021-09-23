##  Created on: 1993-06-10
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

import
  ../Standard/Standard, ../Standard/Standard_Type, Transfer_Binder,
  ../Standard/Standard_Type, ../Standard/Standard_CString,
  ../Standard/Standard_Boolean

discard "forward decl of Standard_Transient"
discard "forward decl of Transfer_TransferFailure"
discard "forward decl of Transfer_Binder"
discard "forward decl of Transfer_SimpleBinderOfTransient"
discard "forward decl of Transfer_SimpleBinderOfTransient"
type
  Handle_Transfer_SimpleBinderOfTransient* = handle[
      Transfer_SimpleBinderOfTransient]

## ! An adapted instantiation of SimpleBinder for Transient Result,
## ! i.e. ResultType can be computed from the Result itself,
## ! instead of being static

type
  Transfer_SimpleBinderOfTransient* {.importcpp: "Transfer_SimpleBinderOfTransient", header: "Transfer_SimpleBinderOfTransient.hxx",
                                     bycopy.} = object of Transfer_Binder ## ! Creates an empty
                                                                     ## SimpleBinderOfTransient
                                                                     ## ! Returns True if a starting object is bound with SEVERAL
                                                                     ## ! results : Here, returns allways False
                                                                     ## ! See Binder itself


proc constructTransfer_SimpleBinderOfTransient*(): Transfer_SimpleBinderOfTransient {.
    constructor, importcpp: "Transfer_SimpleBinderOfTransient(@)",
    header: "Transfer_SimpleBinderOfTransient.hxx".}
proc ResultType*(this: Transfer_SimpleBinderOfTransient): handle[Standard_Type] {.
    noSideEffect, importcpp: "ResultType",
    header: "Transfer_SimpleBinderOfTransient.hxx".}
proc ResultTypeName*(this: Transfer_SimpleBinderOfTransient): Standard_CString {.
    noSideEffect, importcpp: "ResultTypeName",
    header: "Transfer_SimpleBinderOfTransient.hxx".}
proc SetResult*(this: var Transfer_SimpleBinderOfTransient;
               res: handle[Standard_Transient]) {.importcpp: "SetResult",
    header: "Transfer_SimpleBinderOfTransient.hxx".}
proc Result*(this: Transfer_SimpleBinderOfTransient): handle[Standard_Transient] {.
    noSideEffect, importcpp: "Result",
    header: "Transfer_SimpleBinderOfTransient.hxx".}
proc GetTypedResult*(bnd: handle[Transfer_Binder]; atype: handle[Standard_Type];
                    res: var handle[Standard_Transient]): Standard_Boolean {.
    importcpp: "Transfer_SimpleBinderOfTransient::GetTypedResult(@)",
    header: "Transfer_SimpleBinderOfTransient.hxx".}
type
  Transfer_SimpleBinderOfTransientbase_type* = Transfer_Binder

proc get_type_name*(): cstring {.importcpp: "Transfer_SimpleBinderOfTransient::get_type_name(@)",
                              header: "Transfer_SimpleBinderOfTransient.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Transfer_SimpleBinderOfTransient::get_type_descriptor(@)",
    header: "Transfer_SimpleBinderOfTransient.hxx".}
proc DynamicType*(this: Transfer_SimpleBinderOfTransient): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "Transfer_SimpleBinderOfTransient.hxx".}