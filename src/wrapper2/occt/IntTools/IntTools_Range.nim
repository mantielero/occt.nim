##  Created on: 2000-05-18
##  Created by: Peter KURNEV
##  Copyright (c) 2000-2014 OPEN CASCADE SAS
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
  ../Standard/Standard_Handle, ../Standard/Standard_Real

## ! The class describes the  1-d range
## ! [myFirst, myLast].

type
  IntTools_Range* {.importcpp: "IntTools_Range", header: "IntTools_Range.hxx", bycopy.} = object ##
                                                                                         ## !
                                                                                         ## Empty
                                                                                         ## constructor


proc constructIntTools_Range*(): IntTools_Range {.constructor,
    importcpp: "IntTools_Range(@)", header: "IntTools_Range.hxx".}
proc constructIntTools_Range*(aFirst: Standard_Real; aLast: Standard_Real): IntTools_Range {.
    constructor, importcpp: "IntTools_Range(@)", header: "IntTools_Range.hxx".}
proc SetFirst*(this: var IntTools_Range; aFirst: Standard_Real) {.
    importcpp: "SetFirst", header: "IntTools_Range.hxx".}
proc SetLast*(this: var IntTools_Range; aLast: Standard_Real) {.importcpp: "SetLast",
    header: "IntTools_Range.hxx".}
proc First*(this: IntTools_Range): Standard_Real {.noSideEffect, importcpp: "First",
    header: "IntTools_Range.hxx".}
proc Last*(this: IntTools_Range): Standard_Real {.noSideEffect, importcpp: "Last",
    header: "IntTools_Range.hxx".}
proc Range*(this: IntTools_Range; aFirst: var Standard_Real; aLast: var Standard_Real) {.
    noSideEffect, importcpp: "Range", header: "IntTools_Range.hxx".}