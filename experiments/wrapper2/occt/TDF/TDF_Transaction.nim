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


proc constructTDF_Transaction*(aName: TCollectionAsciiString = ""): TDF_Transaction {.
    constructor, importcpp: "TDF_Transaction(@)", header: "TDF_Transaction.hxx".}
proc constructTDF_Transaction*(aDF: Handle[TDF_Data];
                              aName: TCollectionAsciiString = ""): TDF_Transaction {.
    constructor, importcpp: "TDF_Transaction(@)", header: "TDF_Transaction.hxx".}
proc initialize*(this: var TDF_Transaction; aDF: Handle[TDF_Data]) {.
    importcpp: "Initialize", header: "TDF_Transaction.hxx".}
proc open*(this: var TDF_Transaction): int {.importcpp: "Open",
                                        header: "TDF_Transaction.hxx".}
proc commit*(this: var TDF_Transaction; withDelta: bool = false): Handle[TDF_Delta] {.
    importcpp: "Commit", header: "TDF_Transaction.hxx".}
proc abort*(this: var TDF_Transaction) {.importcpp: "Abort",
                                     header: "TDF_Transaction.hxx".}
proc destroyTDF_Transaction*(this: var TDF_Transaction) {.
    importcpp: "#.~TDF_Transaction()", header: "TDF_Transaction.hxx".}
proc data*(this: TDF_Transaction): Handle[TDF_Data] {.noSideEffect,
    importcpp: "Data", header: "TDF_Transaction.hxx".}
proc transaction*(this: TDF_Transaction): int {.noSideEffect,
    importcpp: "Transaction", header: "TDF_Transaction.hxx".}
proc name*(this: TDF_Transaction): TCollectionAsciiString {.noSideEffect,
    importcpp: "Name", header: "TDF_Transaction.hxx".}
proc isOpen*(this: TDF_Transaction): bool {.noSideEffect, importcpp: "IsOpen",
                                        header: "TDF_Transaction.hxx".}
proc dumpJson*(this: TDF_Transaction; theOStream: var StandardOStream;
              theDepth: int = -1) {.noSideEffect, importcpp: "DumpJson",
                                header: "TDF_Transaction.hxx".}
