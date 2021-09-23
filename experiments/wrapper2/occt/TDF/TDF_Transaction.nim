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
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Integer,
  ../TCollection/TCollection_AsciiString, ../Standard/Standard_Boolean

discard "forward decl of TDF_Data"
discard "forward decl of Standard_DomainError"
discard "forward decl of Standard_NullObject"
discard "forward decl of TDF_Delta"
discard "forward decl of TCollection_AsciiString"
type
  TDF_Transaction* {.importcpp: "TDF_Transaction", header: "TDF_Transaction.hxx",
                    bycopy.} = object ## ! Creates an empty transaction context, unable to be
                                   ## ! opened.
                                   ## ! Private to avoid copy.


proc constructTDF_Transaction*(aName: TCollection_AsciiString = ""): TDF_Transaction {.
    constructor, importcpp: "TDF_Transaction(@)", header: "TDF_Transaction.hxx".}
proc constructTDF_Transaction*(aDF: handle[TDF_Data];
                              aName: TCollection_AsciiString = ""): TDF_Transaction {.
    constructor, importcpp: "TDF_Transaction(@)", header: "TDF_Transaction.hxx".}
proc Initialize*(this: var TDF_Transaction; aDF: handle[TDF_Data]) {.
    importcpp: "Initialize", header: "TDF_Transaction.hxx".}
proc Open*(this: var TDF_Transaction): Standard_Integer {.importcpp: "Open",
    header: "TDF_Transaction.hxx".}
proc Commit*(this: var TDF_Transaction; withDelta: Standard_Boolean = Standard_False): handle[
    TDF_Delta] {.importcpp: "Commit", header: "TDF_Transaction.hxx".}
proc Abort*(this: var TDF_Transaction) {.importcpp: "Abort",
                                     header: "TDF_Transaction.hxx".}
proc destroyTDF_Transaction*(this: var TDF_Transaction) {.
    importcpp: "#.~TDF_Transaction()", header: "TDF_Transaction.hxx".}
proc Data*(this: TDF_Transaction): handle[TDF_Data] {.noSideEffect,
    importcpp: "Data", header: "TDF_Transaction.hxx".}
proc Transaction*(this: TDF_Transaction): Standard_Integer {.noSideEffect,
    importcpp: "Transaction", header: "TDF_Transaction.hxx".}
proc Name*(this: TDF_Transaction): TCollection_AsciiString {.noSideEffect,
    importcpp: "Name", header: "TDF_Transaction.hxx".}
proc IsOpen*(this: TDF_Transaction): Standard_Boolean {.noSideEffect,
    importcpp: "IsOpen", header: "TDF_Transaction.hxx".}
proc DumpJson*(this: TDF_Transaction; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "TDF_Transaction.hxx".}