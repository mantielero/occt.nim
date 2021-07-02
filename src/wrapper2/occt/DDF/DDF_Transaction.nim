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

discard "forward decl of Standard_DomainError"
discard "forward decl of Standard_NullObject"
discard "forward decl of TDF_Data"
discard "forward decl of TDF_Delta"
discard "forward decl of DDF_Transaction"
discard "forward decl of DDF_Transaction"
type
  HandleDDF_Transaction* = Handle[DDF_Transaction]

## ! This class encapsulates TDF_Transaction.

type
  DDF_Transaction* {.importcpp: "DDF_Transaction", header: "DDF_Transaction.hxx",
                    bycopy.} = object of StandardTransient ## ! Creates an empty transaction context, unable to be
                                                      ## ! opened.


proc constructDDF_Transaction*(): DDF_Transaction {.constructor,
    importcpp: "DDF_Transaction(@)", header: "DDF_Transaction.hxx".}
proc constructDDF_Transaction*(aDF: Handle[TDF_Data]): DDF_Transaction {.
    constructor, importcpp: "DDF_Transaction(@)", header: "DDF_Transaction.hxx".}
proc open*(this: var DDF_Transaction): StandardInteger {.importcpp: "Open",
    header: "DDF_Transaction.hxx".}
proc commit*(this: var DDF_Transaction; withDelta: StandardBoolean = standardFalse): Handle[
    TDF_Delta] {.importcpp: "Commit", header: "DDF_Transaction.hxx".}
proc abort*(this: var DDF_Transaction) {.importcpp: "Abort",
                                     header: "DDF_Transaction.hxx".}
proc destroyDDF_Transaction*(this: var DDF_Transaction) {.
    importcpp: "#.~DDF_Transaction()", header: "DDF_Transaction.hxx".}
proc data*(this: DDF_Transaction): Handle[TDF_Data] {.noSideEffect,
    importcpp: "Data", header: "DDF_Transaction.hxx".}
proc transaction*(this: DDF_Transaction): StandardInteger {.noSideEffect,
    importcpp: "Transaction", header: "DDF_Transaction.hxx".}
proc isOpen*(this: DDF_Transaction): StandardBoolean {.noSideEffect,
    importcpp: "IsOpen", header: "DDF_Transaction.hxx".}
type
  DDF_TransactionbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "DDF_Transaction::get_type_name(@)",
                            header: "DDF_Transaction.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "DDF_Transaction::get_type_descriptor(@)",
    header: "DDF_Transaction.hxx".}
proc dynamicType*(this: DDF_Transaction): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "DDF_Transaction.hxx".}

