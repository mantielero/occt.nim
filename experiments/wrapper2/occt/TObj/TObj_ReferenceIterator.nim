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
##  This class provides an iterator by references of the object
##  (implements TObj_ReferenceIterator interface)
##

type
  TObjReferenceIterator* {.importcpp: "TObj_ReferenceIterator",
                          header: "TObj_ReferenceIterator.hxx", bycopy.} = object of TObjLabelIterator ##
                                                                                                ##
                                                                                                ## Constructor
                                                                                                ##
                                                                                                ##
                                                                                                ## !
                                                                                                ## Creates
                                                                                                ## the
                                                                                                ## iterator
                                                                                                ## on
                                                                                                ## references
                                                                                                ## in
                                                                                                ## partition
                                                                                                ##
                                                                                                ## !
                                                                                                ## theType
                                                                                                ## narrows
                                                                                                ## a
                                                                                                ## variety
                                                                                                ## of
                                                                                                ## iterated
                                                                                                ## objects
                                                                                                ##
                                                                                                ## *
                                                                                                ##
                                                                                                ## Internal
                                                                                                ## methods
                                                                                                ##
                                                                                                ##
                                                                                                ## !
                                                                                                ## Shift
                                                                                                ## iterator
                                                                                                ## to
                                                                                                ## the
                                                                                                ## next
                                                                                                ## object
                                                                                                ##
                                                                                                ## !
                                                                                                ## CASCADE
                                                                                                ## RTTI
    ## !< Type of objects to iterate on


proc constructTObjReferenceIterator*(theLabel: TDF_Label;
                                    theType: Handle[StandardType] = nil;
                                    theRecursive: bool = true): TObjReferenceIterator {.
    constructor, importcpp: "TObj_ReferenceIterator(@)",
    header: "TObj_ReferenceIterator.hxx".}
type
  TObjReferenceIteratorbaseType* = TObjLabelIterator

proc getTypeName*(): cstring {.importcpp: "TObj_ReferenceIterator::get_type_name(@)",
                            header: "TObj_ReferenceIterator.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "TObj_ReferenceIterator::get_type_descriptor(@)",
    header: "TObj_ReferenceIterator.hxx".}
proc dynamicType*(this: TObjReferenceIterator): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "TObj_ReferenceIterator.hxx".}
## ! Define handle class for TObj_ReferenceIterator

discard "forward decl of TObj_ReferenceIterator"
type
  HandleC1C1* = Handle[TObjReferenceIterator]

# when defined(_MSC_VER):
#   discard

























