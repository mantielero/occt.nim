##  Created on: 2005-10-05
##  Created by: Mikhail KLOKOV
##  Copyright (c) 2005-2014 OPEN CASCADE SAS
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
  ../Standard/Standard_Handle, ../Standard/Standard_Integer

## ! base class for range index management

type
  IntTools_BaseRangeSample* {.importcpp: "IntTools_BaseRangeSample",
                             header: "IntTools_BaseRangeSample.hxx", bycopy.} = object


proc constructIntTools_BaseRangeSample*(): IntTools_BaseRangeSample {.constructor,
    importcpp: "IntTools_BaseRangeSample(@)",
    header: "IntTools_BaseRangeSample.hxx".}
proc constructIntTools_BaseRangeSample*(theDepth: Standard_Integer): IntTools_BaseRangeSample {.
    constructor, importcpp: "IntTools_BaseRangeSample(@)",
    header: "IntTools_BaseRangeSample.hxx".}
proc SetDepth*(this: var IntTools_BaseRangeSample; theDepth: Standard_Integer) {.
    importcpp: "SetDepth", header: "IntTools_BaseRangeSample.hxx".}
proc GetDepth*(this: IntTools_BaseRangeSample): Standard_Integer {.noSideEffect,
    importcpp: "GetDepth", header: "IntTools_BaseRangeSample.hxx".}