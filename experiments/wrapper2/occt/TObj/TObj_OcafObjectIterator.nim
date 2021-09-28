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
##  This class provides an iterator by objects in a partition.
##  (implements TObj_ObjectIterator interface)
##

type
  TObjOcafObjectIterator* {.importcpp: "TObj_OcafObjectIterator",
                           header: "TObj_OcafObjectIterator.hxx", bycopy.} = object of TObjLabelIterator ##
                                                                                                  ## !
                                                                                                  ## Creates
                                                                                                  ## the
                                                                                                  ## iterator
                                                                                                  ## on
                                                                                                  ## TObj
                                                                                                  ## objects
                                                                                                  ## on
                                                                                                  ## the
                                                                                                  ## sub-labels
                                                                                                  ## of
                                                                                                  ## theLabel.
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## @param
                                                                                                  ## theLabel
                                                                                                  ## start
                                                                                                  ## label
                                                                                                  ## for
                                                                                                  ## searching
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## @param
                                                                                                  ## theType
                                                                                                  ## type
                                                                                                  ## of
                                                                                                  ## the
                                                                                                  ## found
                                                                                                  ## objects,
                                                                                                  ## or
                                                                                                  ## all
                                                                                                  ## types
                                                                                                  ## if
                                                                                                  ## Null
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## @param
                                                                                                  ## theRecursive
                                                                                                  ## search
                                                                                                  ## children
                                                                                                  ## recursively,
                                                                                                  ## not
                                                                                                  ## only
                                                                                                  ## on
                                                                                                  ## sub-labels
                                                                                                  ## of
                                                                                                  ## theLabel
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## @param
                                                                                                  ## theAllSubChildren
                                                                                                  ## do
                                                                                                  ## not
                                                                                                  ## stop
                                                                                                  ## at
                                                                                                  ## the
                                                                                                  ## first
                                                                                                  ## level
                                                                                                  ## of
                                                                                                  ## children,
                                                                                                  ## but
                                                                                                  ## search
                                                                                                  ## for
                                                                                                  ## sub-children
                                                                                                  ## too
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
    ## !< type of objects to iterate on
    ## !< to iterate all sub-children, do not stop on the first level


proc constructTObjOcafObjectIterator*(theLabel: TDF_Label;
                                     theType: Handle[StandardType] = nil;
                                     theRecursive: bool = false;
                                     theAllSubChildren: bool = false): TObjOcafObjectIterator {.
    constructor, importcpp: "TObj_OcafObjectIterator(@)",
    header: "TObj_OcafObjectIterator.hxx".}
type
  TObjOcafObjectIteratorbaseType* = TObjLabelIterator

proc getTypeName*(): cstring {.importcpp: "TObj_OcafObjectIterator::get_type_name(@)",
                            header: "TObj_OcafObjectIterator.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "TObj_OcafObjectIterator::get_type_descriptor(@)",
    header: "TObj_OcafObjectIterator.hxx".}
proc dynamicType*(this: TObjOcafObjectIterator): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "TObj_OcafObjectIterator.hxx".}
## ! Define handle class for TObj_OcafObjectIterator

discard "forward decl of TObj_OcafObjectIterator"
type
  HandleC1C1* = Handle[TObjOcafObjectIterator]

# when defined(_MSC_VER):
#   discard

























