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

## *
##  This class is an iterator on sequence
##

type
  TObjSequenceIterator* {.importcpp: "TObj_SequenceIterator",
                         header: "TObj_SequenceIterator.hxx", bycopy.} = object of TObjObjectIterator ## *
                                                                                               ##  Constructor
                                                                                               ##
                                                                                               ## ! Creates an Empty Iterator
                                                                                               ## *
                                                                                               ##  Constructor
                                                                                               ##
                                                                                               ## ! Creates an iterator an initialize it by sequence of objects.
                                                                                               ## *
                                                                                               ##  Redefined methods
                                                                                               ##
                                                                                               ## ! Returns True if there is a current Item in the iteration.
                                                                                               ## *
                                                                                               ##  Fields
                                                                                               ##
                                                                                               ## ! CASCADE RTTI
    ## !< current index of object in sequence
    ## !< type of object
    ## !< seqence of objects


proc constructTObjSequenceIterator*(theObjects: Handle[TObjHSequenceOfObject];
                                   theType: Handle[StandardType] = nil): TObjSequenceIterator {.
    constructor, importcpp: "TObj_SequenceIterator(@)",
    header: "TObj_SequenceIterator.hxx".}
proc more*(this: TObjSequenceIterator): bool {.noSideEffect, importcpp: "More",
    header: "TObj_SequenceIterator.hxx".}
proc next*(this: var TObjSequenceIterator) {.importcpp: "Next",
    header: "TObj_SequenceIterator.hxx".}
proc value*(this: TObjSequenceIterator): Handle[TObjObject] {.noSideEffect,
    importcpp: "Value", header: "TObj_SequenceIterator.hxx".}
type
  TObjSequenceIteratorbaseType* = TObjObjectIterator

proc getTypeName*(): cstring {.importcpp: "TObj_SequenceIterator::get_type_name(@)",
                            header: "TObj_SequenceIterator.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "TObj_SequenceIterator::get_type_descriptor(@)",
    header: "TObj_SequenceIterator.hxx".}
proc dynamicType*(this: TObjSequenceIterator): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "TObj_SequenceIterator.hxx".}
## ! Define handle class for TObj_SequenceIterator

discard "forward decl of TObj_SequenceIterator"
type
  HandleTObjSequenceIterator* = Handle[TObjSequenceIterator]

# when defined(_MSC_VER):
#   discard
