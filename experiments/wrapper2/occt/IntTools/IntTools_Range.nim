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

## ! The class describes the  1-d range
## ! [myFirst, myLast].

type
  IntToolsRange* {.importcpp: "IntTools_Range", header: "IntTools_Range.hxx", bycopy.} = object ##
                                                                                        ## !
                                                                                        ## Empty
                                                                                        ## constructor


proc constructIntToolsRange*(): IntToolsRange {.constructor,
    importcpp: "IntTools_Range(@)", header: "IntTools_Range.hxx".}
proc constructIntToolsRange*(aFirst: cfloat; aLast: cfloat): IntToolsRange {.
    constructor, importcpp: "IntTools_Range(@)", header: "IntTools_Range.hxx".}
proc setFirst*(this: var IntToolsRange; aFirst: cfloat) {.importcpp: "SetFirst",
    header: "IntTools_Range.hxx".}
proc setLast*(this: var IntToolsRange; aLast: cfloat) {.importcpp: "SetLast",
    header: "IntTools_Range.hxx".}
proc first*(this: IntToolsRange): cfloat {.noSideEffect, importcpp: "First",
                                       header: "IntTools_Range.hxx".}
proc last*(this: IntToolsRange): cfloat {.noSideEffect, importcpp: "Last",
                                      header: "IntTools_Range.hxx".}
proc range*(this: IntToolsRange; aFirst: var cfloat; aLast: var cfloat) {.noSideEffect,
    importcpp: "Range", header: "IntTools_Range.hxx".}

























