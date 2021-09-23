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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Integer,
  ../Standard/Standard_Real, ../Standard/Standard_Boolean

## ! The class BOPDS_Pave is to store
## ! information about vertex on an edge

type
  BOPDS_Pave* {.importcpp: "BOPDS_Pave", header: "BOPDS_Pave.hxx", bycopy.} = object ## !
                                                                             ## Empty
                                                                             ## contructor


proc constructBOPDS_Pave*(): BOPDS_Pave {.constructor, importcpp: "BOPDS_Pave(@)",
                                       header: "BOPDS_Pave.hxx".}
proc SetIndex*(this: var BOPDS_Pave; theIndex: Standard_Integer) {.
    importcpp: "SetIndex", header: "BOPDS_Pave.hxx".}
proc Index*(this: BOPDS_Pave): Standard_Integer {.noSideEffect, importcpp: "Index",
    header: "BOPDS_Pave.hxx".}
proc SetParameter*(this: var BOPDS_Pave; theParameter: Standard_Real) {.
    importcpp: "SetParameter", header: "BOPDS_Pave.hxx".}
proc Parameter*(this: BOPDS_Pave): Standard_Real {.noSideEffect,
    importcpp: "Parameter", header: "BOPDS_Pave.hxx".}
proc Contents*(this: BOPDS_Pave; theIndex: var Standard_Integer;
              theParameter: var Standard_Real) {.noSideEffect,
    importcpp: "Contents", header: "BOPDS_Pave.hxx".}
proc IsLess*(this: BOPDS_Pave; theOther: BOPDS_Pave): Standard_Boolean {.noSideEffect,
    importcpp: "IsLess", header: "BOPDS_Pave.hxx".}
proc `<`*(this: BOPDS_Pave; theOther: BOPDS_Pave): Standard_Boolean {.noSideEffect,
    importcpp: "(# < #)", header: "BOPDS_Pave.hxx".}
proc IsEqual*(this: BOPDS_Pave; theOther: BOPDS_Pave): Standard_Boolean {.
    noSideEffect, importcpp: "IsEqual", header: "BOPDS_Pave.hxx".}
proc `==`*(this: BOPDS_Pave; theOther: BOPDS_Pave): Standard_Boolean {.noSideEffect,
    importcpp: "(# == #)", header: "BOPDS_Pave.hxx".}
proc Dump*(this: BOPDS_Pave) {.noSideEffect, importcpp: "Dump",
                            header: "BOPDS_Pave.hxx".}