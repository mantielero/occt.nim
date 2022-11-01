import interface_types
import ../../tkernel/standard/standard_types







##  Created on: 1993-02-02
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



proc newInterfaceCopyTool*(amodel: Handle[InterfaceInterfaceModel];
                          lib: InterfaceGeneralLib): InterfaceCopyTool {.cdecl,
    constructor, importcpp: "Interface_CopyTool(@)", header: "Interface_CopyTool.hxx".}
proc newInterfaceCopyTool*(amodel: Handle[InterfaceInterfaceModel];
                          protocol: Handle[InterfaceProtocol]): InterfaceCopyTool {.
    cdecl, constructor, importcpp: "Interface_CopyTool(@)", header: "Interface_CopyTool.hxx".}
proc newInterfaceCopyTool*(amodel: Handle[InterfaceInterfaceModel]): InterfaceCopyTool {.
    cdecl, constructor, importcpp: "Interface_CopyTool(@)", header: "Interface_CopyTool.hxx".}
proc model*(this: InterfaceCopyTool): Handle[InterfaceInterfaceModel] {.
    noSideEffect, cdecl, importcpp: "Model", header: "Interface_CopyTool.hxx".}
proc setControl*(this: var InterfaceCopyTool; othermap: Handle[InterfaceCopyControl]) {.
    cdecl, importcpp: "SetControl", header: "Interface_CopyTool.hxx".}
proc control*(this: InterfaceCopyTool): Handle[InterfaceCopyControl] {.noSideEffect,
    cdecl, importcpp: "Control", header: "Interface_CopyTool.hxx".}
proc clear*(this: var InterfaceCopyTool) {.cdecl, importcpp: "Clear", header: "Interface_CopyTool.hxx".}
proc copy*(this: var InterfaceCopyTool; entfrom: Handle[StandardTransient];
          entto: var Handle[StandardTransient]; mapped: bool; errstat: bool): bool {.
    cdecl, importcpp: "Copy", header: "Interface_CopyTool.hxx".}
proc transferred*(this: var InterfaceCopyTool; ent: Handle[StandardTransient]): Handle[
    StandardTransient] {.cdecl, importcpp: "Transferred", header: "Interface_CopyTool.hxx".}
proc `bind`*(this: var InterfaceCopyTool; ent: Handle[StandardTransient];
            res: Handle[StandardTransient]) {.cdecl, importcpp: "Bind",
    header: "Interface_CopyTool.hxx".}
proc search*(this: InterfaceCopyTool; ent: Handle[StandardTransient];
            res: var Handle[StandardTransient]): bool {.noSideEffect, cdecl,
    importcpp: "Search", header: "Interface_CopyTool.hxx".}
proc clearLastFlags*(this: var InterfaceCopyTool) {.cdecl,
    importcpp: "ClearLastFlags", header: "Interface_CopyTool.hxx".}
proc lastCopiedAfter*(this: InterfaceCopyTool; numfrom: cint;
                     ent: var Handle[StandardTransient];
                     res: var Handle[StandardTransient]): cint {.noSideEffect, cdecl,
    importcpp: "LastCopiedAfter", header: "Interface_CopyTool.hxx".}
proc transferEntity*(this: var InterfaceCopyTool; ent: Handle[StandardTransient]) {.
    cdecl, importcpp: "TransferEntity", header: "Interface_CopyTool.hxx".}
proc renewImpliedRefs*(this: var InterfaceCopyTool) {.cdecl,
    importcpp: "RenewImpliedRefs", header: "Interface_CopyTool.hxx".}
proc fillModel*(this: var InterfaceCopyTool; bmodel: Handle[InterfaceInterfaceModel]) {.
    cdecl, importcpp: "FillModel", header: "Interface_CopyTool.hxx".}
proc completeResult*(this: InterfaceCopyTool; withreports: bool = false): InterfaceEntityIterator {.
    noSideEffect, cdecl, importcpp: "CompleteResult", header: "Interface_CopyTool.hxx".}
proc rootResult*(this: InterfaceCopyTool; withreports: bool = false): InterfaceEntityIterator {.
    noSideEffect, cdecl, importcpp: "RootResult", header: "Interface_CopyTool.hxx".}
proc destroyInterfaceCopyTool*(this: var InterfaceCopyTool) {.cdecl,
    importcpp: "#.~Interface_CopyTool()", header: "Interface_CopyTool.hxx".}



