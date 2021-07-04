##  Created on: 2002-04-23
##  Created by: Alexander KARTOMIN
##  Copyright (c) 2002-2014 OPEN CASCADE SAS
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
  NCollection_BaseList, NCollection_TListNode

## *
##  Purpose:     This Iterator class iterates on BaseList of TListNode and is
##               instantiated in List/Set/Queue/Stack
##  Remark:      TListIterator is internal class
##

type
  NCollection_TListIterator*[TheItemType] {.
      importcpp: "NCollection_TListIterator<\'0>",
      header: "NCollection_TListIterator.hxx", bycopy.} = object of Iterator ## ! Empty
                                                                      ## constructor - for later Init


proc constructNCollection_TListIterator*[TheItemType](): NCollection_TListIterator[
    TheItemType] {.constructor, importcpp: "NCollection_TListIterator<\'*0>(@)",
                  header: "NCollection_TListIterator.hxx".}
proc constructNCollection_TListIterator*[TheItemType](
    theList: NCollection_BaseList): NCollection_TListIterator[TheItemType] {.
    constructor, importcpp: "NCollection_TListIterator<\'*0>(@)",
    header: "NCollection_TListIterator.hxx".}
proc More*[TheItemType](this: NCollection_TListIterator[TheItemType]): Standard_Boolean {.
    noSideEffect, importcpp: "More", header: "NCollection_TListIterator.hxx".}
proc Next*[TheItemType](this: var NCollection_TListIterator[TheItemType]) {.
    importcpp: "Next", header: "NCollection_TListIterator.hxx".}
proc Value*[TheItemType](this: NCollection_TListIterator[TheItemType]): TheItemType {.
    noSideEffect, importcpp: "Value", header: "NCollection_TListIterator.hxx".}
proc Value*[TheItemType](this: var NCollection_TListIterator[TheItemType]): var TheItemType {.
    importcpp: "Value", header: "NCollection_TListIterator.hxx".}
proc ChangeValue*[TheItemType](this: NCollection_TListIterator[TheItemType]): var TheItemType {.
    noSideEffect, importcpp: "ChangeValue", header: "NCollection_TListIterator.hxx".}