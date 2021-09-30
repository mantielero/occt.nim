##  Created on: 2004-11-23
##  Created by: Pavel TELKOV
##  Copyright (c) 2004-2014 OPEN CASCADE SAS
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

discard "forward decl of TObj_Object"
type
  TObjObjectIterator* {.importcpp: "TObj_ObjectIterator",
                       header: "TObj_ObjectIterator.hxx", bycopy.} = object of StandardTransient ##
                                                                                          ##
                                                                                          ## Methods
                                                                                          ## to
                                                                                          ## iterate
                                                                                          ## on
                                                                                          ## a
                                                                                          ## objects
                                                                                          ##
                                                                                          ##
                                                                                          ## !
                                                                                          ## Returns
                                                                                          ## True
                                                                                          ## if
                                                                                          ## iteration
                                                                                          ## is
                                                                                          ## not
                                                                                          ## finished
                                                                                          ## and
                                                                                          ## method
                                                                                          ## Current()
                                                                                          ##
                                                                                          ## !
                                                                                          ## will
                                                                                          ## give
                                                                                          ## the
                                                                                          ## object.
                                                                                          ##
                                                                                          ## !
                                                                                          ## Default
                                                                                          ## implementation
                                                                                          ## returns
                                                                                          ## False
                                                                                          ##
                                                                                          ## !
                                                                                          ## CASCADE
                                                                                          ## RTTI


proc more*(this: TObjObjectIterator): bool {.noSideEffect, importcpp: "More",
    header: "TObj_ObjectIterator.hxx".}
proc next*(this: var TObjObjectIterator) {.importcpp: "Next",
                                       header: "TObj_ObjectIterator.hxx".}
proc value*(this: TObjObjectIterator): Handle[TObjObject] {.noSideEffect,
    importcpp: "Value", header: "TObj_ObjectIterator.hxx".}
type
  TObjObjectIteratorbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "TObj_ObjectIterator::get_type_name(@)",
                            header: "TObj_ObjectIterator.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "TObj_ObjectIterator::get_type_descriptor(@)",
    header: "TObj_ObjectIterator.hxx".}
proc dynamicType*(this: TObjObjectIterator): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "TObj_ObjectIterator.hxx".}
## ! Define handle class for TObj_ObjectIterator

discard "forward decl of TObj_ObjectIterator"
type
  HandleC1C1* = Handle[TObjObjectIterator]

# when defined(_MSC_VER):
#   discard

























