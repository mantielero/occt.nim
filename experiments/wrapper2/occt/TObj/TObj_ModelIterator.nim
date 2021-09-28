##  Created on: 2001-01-31
##  Created by: Pavel TELKOV
##  Copyright (c) 2001-2014 OPEN CASCADE SAS
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
##  The original implementation Copyright: (C) RINA S.p.A

## *
##  This class provides an iterator by all objects in the model.
##

type
  TObjModelIterator* {.importcpp: "TObj_ModelIterator",
                      header: "TObj_ModelIterator.hxx", bycopy.} = object of TObjObjectIterator ## *
                                                                                         ##  Constructor
                                                                                         ##
                                                                                         ## ! Creates Iterator and initialize it by Model`s label
                                                                                         ## *
                                                                                         ##  Methods to iterate on objects.
                                                                                         ##
                                                                                         ## ! Returns True if iteration is not finished and method Value()
                                                                                         ## ! will give the object
                                                                                         ## *
                                                                                         ##  private methods
                                                                                         ##
                                                                                         ## ! Add iterator on children of indicated object recursively.
                                                                                         ## *
                                                                                         ##  Fields
                                                                                         ##
                                                                                         ## ! CASCADE RTTI
    ## !< Current object
    ## !< Sequence of iterators in model


proc constructTObjModelIterator*(theModel: Handle[TObjModel]): TObjModelIterator {.
    constructor, importcpp: "TObj_ModelIterator(@)",
    header: "TObj_ModelIterator.hxx".}
proc more*(this: TObjModelIterator): bool {.noSideEffect, importcpp: "More",
                                        header: "TObj_ModelIterator.hxx".}
proc next*(this: var TObjModelIterator) {.importcpp: "Next",
                                      header: "TObj_ModelIterator.hxx".}
proc value*(this: TObjModelIterator): Handle[TObjObject] {.noSideEffect,
    importcpp: "Value", header: "TObj_ModelIterator.hxx".}
type
  TObjModelIteratorbaseType* = TObjObjectIterator

proc getTypeName*(): cstring {.importcpp: "TObj_ModelIterator::get_type_name(@)",
                            header: "TObj_ModelIterator.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "TObj_ModelIterator::get_type_descriptor(@)",
    header: "TObj_ModelIterator.hxx".}
proc dynamicType*(this: TObjModelIterator): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "TObj_ModelIterator.hxx".}
## ! Define handle class for TObj_ObjectIterator

discard "forward decl of TObj_ModelIterator"
type
  HandleC1C1* = Handle[TObjModelIterator]

# when defined(_MSC_VER):
#   discard

























