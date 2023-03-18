import tdf_types
import ../standard/standard_types
import ../tcollection/[tcollection_types, tcollection_asciistring]



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



proc newTDF_Transaction*(aName: TCollectionAsciiString = newTCollectionAsciiString("")): TDF_Transaction {.cdecl,
    constructor, importcpp: "TDF_Transaction(@)", header: "TDF_Transaction.hxx".}
proc newTDF_Transaction*(aDF: Handle[TDF_Data]; aName: TCollectionAsciiString = newTCollectionAsciiString("")): TDF_Transaction {.
    cdecl, constructor, importcpp: "TDF_Transaction(@)",
    header: "TDF_Transaction.hxx".}
proc initialize*(this: var TDF_Transaction; aDF: Handle[TDF_Data]) {.cdecl,
    importcpp: "Initialize", header: "TDF_Transaction.hxx".}
proc open*(this: var TDF_Transaction): cint {.cdecl, importcpp: "Open",
    header: "TDF_Transaction.hxx".}
proc commit*(this: var TDF_Transaction; withDelta: bool = false): Handle[TDF_Delta] {.
    cdecl, importcpp: "Commit", header: "TDF_Transaction.hxx".}
proc abort*(this: var TDF_Transaction) {.cdecl, importcpp: "Abort",
                                     header: "TDF_Transaction.hxx".}
proc destroyTDF_Transaction*(this: var TDF_Transaction) {.cdecl,
    importcpp: "#.~TDF_Transaction()", header: "TDF_Transaction.hxx".}
proc data*(this: TDF_Transaction): Handle[TDF_Data] {.noSideEffect, cdecl,
    importcpp: "Data", header: "TDF_Transaction.hxx".}
proc transaction*(this: TDF_Transaction): cint {.noSideEffect, cdecl,
    importcpp: "Transaction", header: "TDF_Transaction.hxx".}
proc name*(this: TDF_Transaction): TCollectionAsciiString {.noSideEffect, cdecl,
    importcpp: "Name", header: "TDF_Transaction.hxx".}
proc isOpen*(this: TDF_Transaction): bool {.noSideEffect, cdecl, importcpp: "IsOpen",
                                        header: "TDF_Transaction.hxx".}
proc dumpJson*(this: TDF_Transaction; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "TDF_Transaction.hxx".}

