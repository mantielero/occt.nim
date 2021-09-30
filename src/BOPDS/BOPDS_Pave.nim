##  Created by: Peter KURNEV
##  Copyright (c) 1999-2014 OPEN CASCADE SAS
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

## ! The class BOPDS_Pave is to store
## ! information about vertex on an edge

type
  BOPDS_Pave* {.importcpp: "BOPDS_Pave", header: "BOPDS_Pave.hxx", bycopy.} = object ## !
                                                                             ## Empty
                                                                             ## contructor


proc constructBOPDS_Pave*(): BOPDS_Pave {.constructor, importcpp: "BOPDS_Pave(@)",
                                       header: "BOPDS_Pave.hxx".}
proc setIndex*(this: var BOPDS_Pave; theIndex: cint) {.importcpp: "SetIndex",
    header: "BOPDS_Pave.hxx".}
proc index*(this: BOPDS_Pave): cint {.noSideEffect, importcpp: "Index",
                                  header: "BOPDS_Pave.hxx".}
proc setParameter*(this: var BOPDS_Pave; theParameter: cfloat) {.
    importcpp: "SetParameter", header: "BOPDS_Pave.hxx".}
proc parameter*(this: BOPDS_Pave): cfloat {.noSideEffect, importcpp: "Parameter",
                                        header: "BOPDS_Pave.hxx".}
proc contents*(this: BOPDS_Pave; theIndex: var cint; theParameter: var cfloat) {.
    noSideEffect, importcpp: "Contents", header: "BOPDS_Pave.hxx".}
proc isLess*(this: BOPDS_Pave; theOther: BOPDS_Pave): bool {.noSideEffect,
    importcpp: "IsLess", header: "BOPDS_Pave.hxx".}
proc `<`*(this: BOPDS_Pave; theOther: BOPDS_Pave): bool {.noSideEffect,
    importcpp: "(# < #)", header: "BOPDS_Pave.hxx".}
proc isEqual*(this: BOPDS_Pave; theOther: BOPDS_Pave): bool {.noSideEffect,
    importcpp: "IsEqual", header: "BOPDS_Pave.hxx".}
proc `==`*(this: BOPDS_Pave; theOther: BOPDS_Pave): bool {.noSideEffect,
    importcpp: "(# == #)", header: "BOPDS_Pave.hxx".}
proc dump*(this: BOPDS_Pave) {.noSideEffect, importcpp: "Dump",
                            header: "BOPDS_Pave.hxx".}

























