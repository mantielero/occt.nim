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

discard "forward decl of Interface_InterfaceModel"
discard "forward decl of Interface_CopyControl"
discard "forward decl of Interface_CopyMap"
discard "forward decl of Standard_Transient"
discard "forward decl of Interface_GeneralModule"
discard "forward decl of Interface_InterfaceError"
discard "forward decl of Interface_GeneralLib"
discard "forward decl of Interface_Protocol"
discard "forward decl of Interface_EntityIterator"
type
  InterfaceCopyTool* {.importcpp: "Interface_CopyTool",
                      header: "Interface_CopyTool.hxx", bycopy.} = object ## ! Creates a CopyTool adapted to work from a Model. Works
                                                                     ## ! with a General Service Library, given as an argument
                                                                     ## ! Creates a new void instance (just created) of the same class
                                                                     ## ! as <entfrom>. Uses the general service
                                                                     ## GeneralModule:NewVoid
                                                                     ## ! Returns True if OK (Recognize has succeeded), False else
                                                                     ## ! (in such a case, the standard method ShallowCopy is called
                                                                     ## ! to produce <ento> from <entfrom> : hence it is not void)
                                                                     ## !
                                                                     ## ! No mapping is managed by this method
                                                                     ## ! Renews the Implied References of one already Copied Entity


proc constructInterfaceCopyTool*(amodel: Handle[InterfaceInterfaceModel];
                                lib: InterfaceGeneralLib): InterfaceCopyTool {.
    constructor, importcpp: "Interface_CopyTool(@)",
    header: "Interface_CopyTool.hxx".}
proc constructInterfaceCopyTool*(amodel: Handle[InterfaceInterfaceModel];
                                protocol: Handle[InterfaceProtocol]): InterfaceCopyTool {.
    constructor, importcpp: "Interface_CopyTool(@)",
    header: "Interface_CopyTool.hxx".}
proc constructInterfaceCopyTool*(amodel: Handle[InterfaceInterfaceModel]): InterfaceCopyTool {.
    constructor, importcpp: "Interface_CopyTool(@)",
    header: "Interface_CopyTool.hxx".}
proc model*(this: InterfaceCopyTool): Handle[InterfaceInterfaceModel] {.
    noSideEffect, importcpp: "Model", header: "Interface_CopyTool.hxx".}
proc setControl*(this: var InterfaceCopyTool; othermap: Handle[InterfaceCopyControl]) {.
    importcpp: "SetControl", header: "Interface_CopyTool.hxx".}
proc control*(this: InterfaceCopyTool): Handle[InterfaceCopyControl] {.noSideEffect,
    importcpp: "Control", header: "Interface_CopyTool.hxx".}
proc clear*(this: var InterfaceCopyTool) {.importcpp: "Clear",
                                       header: "Interface_CopyTool.hxx".}
proc copy*(this: var InterfaceCopyTool; entfrom: Handle[StandardTransient];
          entto: var Handle[StandardTransient]; mapped: StandardBoolean;
          errstat: StandardBoolean): StandardBoolean {.importcpp: "Copy",
    header: "Interface_CopyTool.hxx".}
proc transferred*(this: var InterfaceCopyTool; ent: Handle[StandardTransient]): Handle[
    StandardTransient] {.importcpp: "Transferred", header: "Interface_CopyTool.hxx".}
proc `bind`*(this: var InterfaceCopyTool; ent: Handle[StandardTransient];
            res: Handle[StandardTransient]) {.importcpp: "Bind",
    header: "Interface_CopyTool.hxx".}
proc search*(this: InterfaceCopyTool; ent: Handle[StandardTransient];
            res: var Handle[StandardTransient]): StandardBoolean {.noSideEffect,
    importcpp: "Search", header: "Interface_CopyTool.hxx".}
proc clearLastFlags*(this: var InterfaceCopyTool) {.importcpp: "ClearLastFlags",
    header: "Interface_CopyTool.hxx".}
proc lastCopiedAfter*(this: InterfaceCopyTool; numfrom: StandardInteger;
                     ent: var Handle[StandardTransient];
                     res: var Handle[StandardTransient]): StandardInteger {.
    noSideEffect, importcpp: "LastCopiedAfter", header: "Interface_CopyTool.hxx".}
proc transferEntity*(this: var InterfaceCopyTool; ent: Handle[StandardTransient]) {.
    importcpp: "TransferEntity", header: "Interface_CopyTool.hxx".}
proc renewImpliedRefs*(this: var InterfaceCopyTool) {.importcpp: "RenewImpliedRefs",
    header: "Interface_CopyTool.hxx".}
proc fillModel*(this: var InterfaceCopyTool; bmodel: Handle[InterfaceInterfaceModel]) {.
    importcpp: "FillModel", header: "Interface_CopyTool.hxx".}
proc completeResult*(this: InterfaceCopyTool;
                    withreports: StandardBoolean = standardFalse): InterfaceEntityIterator {.
    noSideEffect, importcpp: "CompleteResult", header: "Interface_CopyTool.hxx".}
proc rootResult*(this: InterfaceCopyTool;
                withreports: StandardBoolean = standardFalse): InterfaceEntityIterator {.
    noSideEffect, importcpp: "RootResult", header: "Interface_CopyTool.hxx".}
proc destroyInterfaceCopyTool*(this: var InterfaceCopyTool) {.
    importcpp: "#.~Interface_CopyTool()", header: "Interface_CopyTool.hxx".}

