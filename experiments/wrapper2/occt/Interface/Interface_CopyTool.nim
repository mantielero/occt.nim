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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, Interface_BitMap, Interface_GeneralLib,
  ../Standard/Standard_Integer, ../TColStd/TColStd_SequenceOfInteger,
  ../Standard/Standard_Boolean

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
  Interface_CopyTool* {.importcpp: "Interface_CopyTool",
                       header: "Interface_CopyTool.hxx", bycopy.} = object ## ! Creates a CopyTool adapted to work from a Model. Works
                                                                      ## ! with a General Service Library, given as an argument
                                                                      ## ! Creates a new void instance (just created) of the same class
                                                                      ## ! as <entfrom>. Uses the general service
                                                                      ## GeneralModule:NewVoid
                                                                      ## ! Returns True if OK (Recognize has
                                                                      ## succeeded), False else
                                                                      ## ! (in such a case, the standard method
                                                                      ## ShallowCopy is called
                                                                      ## ! to produce <ento> from <entfrom> : hence it is not void)
                                                                      ## !
                                                                      ## ! No mapping is managed by this method
                                                                      ## ! Renews the Implied References of one already Copied Entity


proc constructInterface_CopyTool*(amodel: handle[Interface_InterfaceModel];
                                 lib: Interface_GeneralLib): Interface_CopyTool {.
    constructor, importcpp: "Interface_CopyTool(@)",
    header: "Interface_CopyTool.hxx".}
proc constructInterface_CopyTool*(amodel: handle[Interface_InterfaceModel];
                                 protocol: handle[Interface_Protocol]): Interface_CopyTool {.
    constructor, importcpp: "Interface_CopyTool(@)",
    header: "Interface_CopyTool.hxx".}
proc constructInterface_CopyTool*(amodel: handle[Interface_InterfaceModel]): Interface_CopyTool {.
    constructor, importcpp: "Interface_CopyTool(@)",
    header: "Interface_CopyTool.hxx".}
proc Model*(this: Interface_CopyTool): handle[Interface_InterfaceModel] {.
    noSideEffect, importcpp: "Model", header: "Interface_CopyTool.hxx".}
proc SetControl*(this: var Interface_CopyTool;
                othermap: handle[Interface_CopyControl]) {.
    importcpp: "SetControl", header: "Interface_CopyTool.hxx".}
proc Control*(this: Interface_CopyTool): handle[Interface_CopyControl] {.
    noSideEffect, importcpp: "Control", header: "Interface_CopyTool.hxx".}
proc Clear*(this: var Interface_CopyTool) {.importcpp: "Clear",
                                        header: "Interface_CopyTool.hxx".}
proc Copy*(this: var Interface_CopyTool; entfrom: handle[Standard_Transient];
          entto: var handle[Standard_Transient]; mapped: Standard_Boolean;
          errstat: Standard_Boolean): Standard_Boolean {.importcpp: "Copy",
    header: "Interface_CopyTool.hxx".}
proc Transferred*(this: var Interface_CopyTool; ent: handle[Standard_Transient]): handle[
    Standard_Transient] {.importcpp: "Transferred",
                         header: "Interface_CopyTool.hxx".}
proc Bind*(this: var Interface_CopyTool; ent: handle[Standard_Transient];
          res: handle[Standard_Transient]) {.importcpp: "Bind",
    header: "Interface_CopyTool.hxx".}
proc Search*(this: Interface_CopyTool; ent: handle[Standard_Transient];
            res: var handle[Standard_Transient]): Standard_Boolean {.noSideEffect,
    importcpp: "Search", header: "Interface_CopyTool.hxx".}
proc ClearLastFlags*(this: var Interface_CopyTool) {.importcpp: "ClearLastFlags",
    header: "Interface_CopyTool.hxx".}
proc LastCopiedAfter*(this: Interface_CopyTool; numfrom: Standard_Integer;
                     ent: var handle[Standard_Transient];
                     res: var handle[Standard_Transient]): Standard_Integer {.
    noSideEffect, importcpp: "LastCopiedAfter", header: "Interface_CopyTool.hxx".}
proc TransferEntity*(this: var Interface_CopyTool; ent: handle[Standard_Transient]) {.
    importcpp: "TransferEntity", header: "Interface_CopyTool.hxx".}
proc RenewImpliedRefs*(this: var Interface_CopyTool) {.
    importcpp: "RenewImpliedRefs", header: "Interface_CopyTool.hxx".}
proc FillModel*(this: var Interface_CopyTool;
               bmodel: handle[Interface_InterfaceModel]) {.importcpp: "FillModel",
    header: "Interface_CopyTool.hxx".}
proc CompleteResult*(this: Interface_CopyTool;
                    withreports: Standard_Boolean = Standard_False): Interface_EntityIterator {.
    noSideEffect, importcpp: "CompleteResult", header: "Interface_CopyTool.hxx".}
proc RootResult*(this: Interface_CopyTool;
                withreports: Standard_Boolean = Standard_False): Interface_EntityIterator {.
    noSideEffect, importcpp: "RootResult", header: "Interface_CopyTool.hxx".}
proc destroyInterface_CopyTool*(this: var Interface_CopyTool) {.
    importcpp: "#.~Interface_CopyTool()", header: "Interface_CopyTool.hxx".}