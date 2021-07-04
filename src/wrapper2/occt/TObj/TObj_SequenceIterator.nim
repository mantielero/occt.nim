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
  TObj_Container, TObj_ObjectIterator

## *
##  This class is an iterator on sequence
##

type
  TObj_SequenceIterator* {.importcpp: "TObj_SequenceIterator",
                          header: "TObj_SequenceIterator.hxx", bycopy.} = object of TObj_ObjectIterator ## *
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


proc constructTObj_SequenceIterator*(theObjects: handle[TObj_HSequenceOfObject];
                                    theType: handle[Standard_Type] = nil): TObj_SequenceIterator {.
    constructor, importcpp: "TObj_SequenceIterator(@)",
    header: "TObj_SequenceIterator.hxx".}
proc More*(this: TObj_SequenceIterator): Standard_Boolean {.noSideEffect,
    importcpp: "More", header: "TObj_SequenceIterator.hxx".}
proc Next*(this: var TObj_SequenceIterator) {.importcpp: "Next",
    header: "TObj_SequenceIterator.hxx".}
proc Value*(this: TObj_SequenceIterator): handle[TObj_Object] {.noSideEffect,
    importcpp: "Value", header: "TObj_SequenceIterator.hxx".}
type
  TObj_SequenceIteratorbase_type* = TObj_ObjectIterator

proc get_type_name*(): cstring {.importcpp: "TObj_SequenceIterator::get_type_name(@)",
                              header: "TObj_SequenceIterator.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "TObj_SequenceIterator::get_type_descriptor(@)",
    header: "TObj_SequenceIterator.hxx".}
proc DynamicType*(this: TObj_SequenceIterator): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "TObj_SequenceIterator.hxx".}
## ! Define handle class for TObj_SequenceIterator

discard "forward decl of TObj_SequenceIterator"
type
  Handle_TObj_SequenceIterator* = handle[TObj_SequenceIterator]

when defined(_MSC_VER):
  discard