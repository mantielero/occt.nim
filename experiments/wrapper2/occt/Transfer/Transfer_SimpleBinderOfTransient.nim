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

discard "forward decl of Standard_Transient"
discard "forward decl of Transfer_TransferFailure"
discard "forward decl of Transfer_Binder"
discard "forward decl of Transfer_SimpleBinderOfTransient"
discard "forward decl of Transfer_SimpleBinderOfTransient"
type
  HandleC1C1* = Handle[TransferSimpleBinderOfTransient]

## ! An adapted instantiation of SimpleBinder for Transient Result,
## ! i.e. ResultType can be computed from the Result itself,
## ! instead of being static

type
  TransferSimpleBinderOfTransient* {.importcpp: "Transfer_SimpleBinderOfTransient", header: "Transfer_SimpleBinderOfTransient.hxx",
                                    bycopy.} = object of TransferBinder ## ! Creates an empty
                                                                   ## SimpleBinderOfTransient
                                                                   ## ! Returns True if a starting object is bound with SEVERAL
                                                                   ## ! results : Here, returns allways False
                                                                   ## ! See Binder itself


proc constructTransferSimpleBinderOfTransient*(): TransferSimpleBinderOfTransient {.
    constructor, importcpp: "Transfer_SimpleBinderOfTransient(@)",
    header: "Transfer_SimpleBinderOfTransient.hxx".}
proc resultType*(this: TransferSimpleBinderOfTransient): Handle[StandardType] {.
    noSideEffect, importcpp: "ResultType",
    header: "Transfer_SimpleBinderOfTransient.hxx".}
proc resultTypeName*(this: TransferSimpleBinderOfTransient): StandardCString {.
    noSideEffect, importcpp: "ResultTypeName",
    header: "Transfer_SimpleBinderOfTransient.hxx".}
proc setResult*(this: var TransferSimpleBinderOfTransient;
               res: Handle[StandardTransient]) {.importcpp: "SetResult",
    header: "Transfer_SimpleBinderOfTransient.hxx".}
proc result*(this: TransferSimpleBinderOfTransient): Handle[StandardTransient] {.
    noSideEffect, importcpp: "Result",
    header: "Transfer_SimpleBinderOfTransient.hxx".}
proc getTypedResult*(bnd: Handle[TransferBinder]; atype: Handle[StandardType];
                    res: var Handle[StandardTransient]): bool {.
    importcpp: "Transfer_SimpleBinderOfTransient::GetTypedResult(@)",
    header: "Transfer_SimpleBinderOfTransient.hxx".}
type
  TransferSimpleBinderOfTransientbaseType* = TransferBinder

proc getTypeName*(): cstring {.importcpp: "Transfer_SimpleBinderOfTransient::get_type_name(@)",
                            header: "Transfer_SimpleBinderOfTransient.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Transfer_SimpleBinderOfTransient::get_type_descriptor(@)",
    header: "Transfer_SimpleBinderOfTransient.hxx".}
proc dynamicType*(this: TransferSimpleBinderOfTransient): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "Transfer_SimpleBinderOfTransient.hxx".}

























