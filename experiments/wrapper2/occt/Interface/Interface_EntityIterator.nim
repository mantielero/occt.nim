##  Created on: 1992-02-03
##  Created by: Christian CAILLET
##  Copyright (c) 1992-1999 Matra Datavision
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

discard "forward decl of Interface_IntVal"
discard "forward decl of Standard_NoMoreObject"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Standard_Transient"
type
  InterfaceEntityIterator* {.importcpp: "Interface_EntityIterator",
                            header: "Interface_EntityIterator.hxx", bycopy.} = object ##
                                                                                 ## !
                                                                                 ## Defines
                                                                                 ## an
                                                                                 ## empty
                                                                                 ## iterator
                                                                                 ## (see
                                                                                 ## AddList
                                                                                 ## &
                                                                                 ## AddItem)
                                                                                 ##
                                                                                 ## !
                                                                                 ## Allows
                                                                                 ## subclasses
                                                                                 ## of
                                                                                 ## EntityIterator
                                                                                 ## to
                                                                                 ## reevaluate
                                                                                 ## an
                                                                                 ## iteration


proc constructInterfaceEntityIterator*(): InterfaceEntityIterator {.constructor,
    importcpp: "Interface_EntityIterator(@)",
    header: "Interface_EntityIterator.hxx".}
proc constructInterfaceEntityIterator*(list: Handle[TColStdHSequenceOfTransient]): InterfaceEntityIterator {.
    constructor, importcpp: "Interface_EntityIterator(@)",
    header: "Interface_EntityIterator.hxx".}
proc addList*(this: var InterfaceEntityIterator;
             list: Handle[TColStdHSequenceOfTransient]) {.importcpp: "AddList",
    header: "Interface_EntityIterator.hxx".}
proc addItem*(this: var InterfaceEntityIterator; anentity: Handle[StandardTransient]) {.
    importcpp: "AddItem", header: "Interface_EntityIterator.hxx".}
proc getOneItem*(this: var InterfaceEntityIterator;
                anentity: Handle[StandardTransient]) {.importcpp: "GetOneItem",
    header: "Interface_EntityIterator.hxx".}
proc selectType*(this: var InterfaceEntityIterator; atype: Handle[StandardType];
                keep: bool) {.importcpp: "SelectType",
                            header: "Interface_EntityIterator.hxx".}
proc nbEntities*(this: InterfaceEntityIterator): cint {.noSideEffect,
    importcpp: "NbEntities", header: "Interface_EntityIterator.hxx".}
proc nbTyped*(this: InterfaceEntityIterator; `type`: Handle[StandardType]): cint {.
    noSideEffect, importcpp: "NbTyped", header: "Interface_EntityIterator.hxx".}
proc typed*(this: InterfaceEntityIterator; `type`: Handle[StandardType]): InterfaceEntityIterator {.
    noSideEffect, importcpp: "Typed", header: "Interface_EntityIterator.hxx".}
proc start*(this: InterfaceEntityIterator) {.noSideEffect, importcpp: "Start",
    header: "Interface_EntityIterator.hxx".}
proc more*(this: InterfaceEntityIterator): bool {.noSideEffect, importcpp: "More",
    header: "Interface_EntityIterator.hxx".}
proc next*(this: InterfaceEntityIterator) {.noSideEffect, importcpp: "Next",
    header: "Interface_EntityIterator.hxx".}
proc value*(this: InterfaceEntityIterator): Handle[StandardTransient] {.
    noSideEffect, importcpp: "Value", header: "Interface_EntityIterator.hxx".}
proc content*(this: InterfaceEntityIterator): Handle[TColStdHSequenceOfTransient] {.
    noSideEffect, importcpp: "Content", header: "Interface_EntityIterator.hxx".}
proc destroy*(this: var InterfaceEntityIterator) {.importcpp: "Destroy",
    header: "Interface_EntityIterator.hxx".}
proc destroyInterfaceEntityIterator*(this: var InterfaceEntityIterator) {.
    importcpp: "#.~Interface_EntityIterator()",
    header: "Interface_EntityIterator.hxx".}

























