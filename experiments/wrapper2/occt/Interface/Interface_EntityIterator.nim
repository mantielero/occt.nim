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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../TColStd/TColStd_HSequenceOfTransient,
  ../Standard/Standard_Type, ../Standard/Standard_Boolean,
  ../Standard/Standard_Integer

discard "forward decl of Interface_IntVal"
discard "forward decl of Standard_NoMoreObject"
discard "forward decl of Standard_NoSuchObject"
discard "forward decl of Standard_Transient"
type
  Interface_EntityIterator* {.importcpp: "Interface_EntityIterator",
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


proc constructInterface_EntityIterator*(): Interface_EntityIterator {.constructor,
    importcpp: "Interface_EntityIterator(@)",
    header: "Interface_EntityIterator.hxx".}
proc constructInterface_EntityIterator*(list: handle[TColStd_HSequenceOfTransient]): Interface_EntityIterator {.
    constructor, importcpp: "Interface_EntityIterator(@)",
    header: "Interface_EntityIterator.hxx".}
proc AddList*(this: var Interface_EntityIterator;
             list: handle[TColStd_HSequenceOfTransient]) {.importcpp: "AddList",
    header: "Interface_EntityIterator.hxx".}
proc AddItem*(this: var Interface_EntityIterator;
             anentity: handle[Standard_Transient]) {.importcpp: "AddItem",
    header: "Interface_EntityIterator.hxx".}
proc GetOneItem*(this: var Interface_EntityIterator;
                anentity: handle[Standard_Transient]) {.importcpp: "GetOneItem",
    header: "Interface_EntityIterator.hxx".}
proc SelectType*(this: var Interface_EntityIterator; atype: handle[Standard_Type];
                keep: Standard_Boolean) {.importcpp: "SelectType",
                                        header: "Interface_EntityIterator.hxx".}
proc NbEntities*(this: Interface_EntityIterator): Standard_Integer {.noSideEffect,
    importcpp: "NbEntities", header: "Interface_EntityIterator.hxx".}
proc NbTyped*(this: Interface_EntityIterator; `type`: handle[Standard_Type]): Standard_Integer {.
    noSideEffect, importcpp: "NbTyped", header: "Interface_EntityIterator.hxx".}
proc Typed*(this: Interface_EntityIterator; `type`: handle[Standard_Type]): Interface_EntityIterator {.
    noSideEffect, importcpp: "Typed", header: "Interface_EntityIterator.hxx".}
proc Start*(this: Interface_EntityIterator) {.noSideEffect, importcpp: "Start",
    header: "Interface_EntityIterator.hxx".}
proc More*(this: Interface_EntityIterator): Standard_Boolean {.noSideEffect,
    importcpp: "More", header: "Interface_EntityIterator.hxx".}
proc Next*(this: Interface_EntityIterator) {.noSideEffect, importcpp: "Next",
    header: "Interface_EntityIterator.hxx".}
proc Value*(this: Interface_EntityIterator): handle[Standard_Transient] {.
    noSideEffect, importcpp: "Value", header: "Interface_EntityIterator.hxx".}
proc Content*(this: Interface_EntityIterator): handle[TColStd_HSequenceOfTransient] {.
    noSideEffect, importcpp: "Content", header: "Interface_EntityIterator.hxx".}
proc Destroy*(this: var Interface_EntityIterator) {.importcpp: "Destroy",
    header: "Interface_EntityIterator.hxx".}
proc destroyInterface_EntityIterator*(this: var Interface_EntityIterator) {.
    importcpp: "#.~Interface_EntityIterator()",
    header: "Interface_EntityIterator.hxx".}