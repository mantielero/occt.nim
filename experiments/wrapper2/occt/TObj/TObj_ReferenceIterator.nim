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

import
  TObj_LabelIterator

## *
##  This class provides an iterator by references of the object
##  (implements TObj_ReferenceIterator interface)
##

type
  TObj_ReferenceIterator* {.importcpp: "TObj_ReferenceIterator",
                           header: "TObj_ReferenceIterator.hxx", bycopy.} = object of TObj_LabelIterator ##
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


proc constructTObj_ReferenceIterator*(theLabel: TDF_Label;
                                     theType: handle[Standard_Type] = nil;
    theRecursive: Standard_Boolean = Standard_True): TObj_ReferenceIterator {.
    constructor, importcpp: "TObj_ReferenceIterator(@)",
    header: "TObj_ReferenceIterator.hxx".}
type
  TObj_ReferenceIteratorbase_type* = TObj_LabelIterator

proc get_type_name*(): cstring {.importcpp: "TObj_ReferenceIterator::get_type_name(@)",
                              header: "TObj_ReferenceIterator.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "TObj_ReferenceIterator::get_type_descriptor(@)",
    header: "TObj_ReferenceIterator.hxx".}
proc DynamicType*(this: TObj_ReferenceIterator): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "TObj_ReferenceIterator.hxx".}
## ! Define handle class for TObj_ReferenceIterator

discard "forward decl of TObj_ReferenceIterator"
type
  Handle_TObj_ReferenceIterator* = handle[TObj_ReferenceIterator]

when defined(_MSC_VER):
  discard