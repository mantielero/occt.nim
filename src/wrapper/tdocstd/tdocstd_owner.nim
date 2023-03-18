import ../tdf/tdf_types
import tdocstd_types
import ../standard/standard_types



##  Created on: 1999-07-12
##  Created by: Denis PASCAL
##  Copyright (c) 1999 Matra Datavision
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





proc getID*(): StandardGUID {.cdecl, importcpp: "TDocStd_Owner::GetID(@)",
                           header: "TDocStd_Owner.hxx".}
proc setDocument*(indata: Handle[TDF_Data]; doc: Handle[TDocStdDocument]) {.cdecl,
    importcpp: "TDocStd_Owner::SetDocument(@)", header: "TDocStd_Owner.hxx".}
proc setDocument*(indata: Handle[TDF_Data]; doc: ptr TDocStdDocument) {.cdecl,
    importcpp: "TDocStd_Owner::SetDocument(@)", header: "TDocStd_Owner.hxx".}
proc getDocument*(ofdata: Handle[TDF_Data]): Handle[TDocStdDocument] {.cdecl,
    importcpp: "TDocStd_Owner::GetDocument(@)", header: "TDocStd_Owner.hxx".}
proc newTDocStdOwner*(): TDocStdOwner {.cdecl, constructor,
                                     importcpp: "TDocStd_Owner(@)",
                                     header: "TDocStd_Owner.hxx".}
proc setDocument*(this: var TDocStdOwner; document: Handle[TDocStdDocument]) {.cdecl,
    importcpp: "SetDocument", header: "TDocStd_Owner.hxx".}
proc setDocument*(this: var TDocStdOwner; document: ptr TDocStdDocument) {.cdecl,
    importcpp: "SetDocument", header: "TDocStd_Owner.hxx".}
proc getDocument*(this: TDocStdOwner): Handle[TDocStdDocument] {.noSideEffect, cdecl,
    importcpp: "GetDocument", header: "TDocStd_Owner.hxx".}
proc id*(this: TDocStdOwner): StandardGUID {.noSideEffect, cdecl, importcpp: "ID",
    header: "TDocStd_Owner.hxx".}
proc restore*(this: var TDocStdOwner; with: Handle[TDF_Attribute]) {.cdecl,
    importcpp: "Restore", header: "TDocStd_Owner.hxx".}
proc newEmpty*(this: TDocStdOwner): Handle[TDF_Attribute] {.noSideEffect, cdecl,
    importcpp: "NewEmpty", header: "TDocStd_Owner.hxx".}
proc paste*(this: TDocStdOwner; into: Handle[TDF_Attribute];
           rt: Handle[TDF_RelocationTable]) {.noSideEffect, cdecl,
    importcpp: "Paste", header: "TDocStd_Owner.hxx".}
proc dump*(this: TDocStdOwner; anOS: var StandardOStream): var StandardOStream {.
    noSideEffect, cdecl, importcpp: "Dump", header: "TDocStd_Owner.hxx".}
proc dumpJson*(this: TDocStdOwner; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "TDocStd_Owner.hxx".}

