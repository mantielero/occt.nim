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
  ../Standard/Standard, ../Standard/Standard_Type, ../TDF/TDF_Transaction,
  ../Standard/Standard_Transient, ../Standard/Standard_Integer,
  ../Standard/Standard_Boolean

discard "forward decl of Standard_DomainError"
discard "forward decl of Standard_NullObject"
discard "forward decl of TDF_Data"
discard "forward decl of TDF_Delta"
discard "forward decl of DDF_Transaction"
discard "forward decl of DDF_Transaction"
type
  Handle_DDF_Transaction* = handle[DDF_Transaction]

## ! This class encapsulates TDF_Transaction.

type
  DDF_Transaction* {.importcpp: "DDF_Transaction", header: "DDF_Transaction.hxx",
                    bycopy.} = object of Standard_Transient ## ! Creates an empty transaction context, unable to be
                                                       ## ! opened.


proc constructDDF_Transaction*(): DDF_Transaction {.constructor,
    importcpp: "DDF_Transaction(@)", header: "DDF_Transaction.hxx".}
proc constructDDF_Transaction*(aDF: handle[TDF_Data]): DDF_Transaction {.
    constructor, importcpp: "DDF_Transaction(@)", header: "DDF_Transaction.hxx".}
proc Open*(this: var DDF_Transaction): Standard_Integer {.importcpp: "Open",
    header: "DDF_Transaction.hxx".}
proc Commit*(this: var DDF_Transaction; withDelta: Standard_Boolean = Standard_False): handle[
    TDF_Delta] {.importcpp: "Commit", header: "DDF_Transaction.hxx".}
proc Abort*(this: var DDF_Transaction) {.importcpp: "Abort",
                                     header: "DDF_Transaction.hxx".}
proc destroyDDF_Transaction*(this: var DDF_Transaction) {.
    importcpp: "#.~DDF_Transaction()", header: "DDF_Transaction.hxx".}
proc Data*(this: DDF_Transaction): handle[TDF_Data] {.noSideEffect,
    importcpp: "Data", header: "DDF_Transaction.hxx".}
proc Transaction*(this: DDF_Transaction): Standard_Integer {.noSideEffect,
    importcpp: "Transaction", header: "DDF_Transaction.hxx".}
proc IsOpen*(this: DDF_Transaction): Standard_Boolean {.noSideEffect,
    importcpp: "IsOpen", header: "DDF_Transaction.hxx".}
type
  DDF_Transactionbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "DDF_Transaction::get_type_name(@)",
                              header: "DDF_Transaction.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "DDF_Transaction::get_type_descriptor(@)",
    header: "DDF_Transaction.hxx".}
proc DynamicType*(this: DDF_Transaction): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "DDF_Transaction.hxx".}