import ../standard/standard_types
import aspect_types





##  Created on: 1992-05-13
##  Created by: NW,JPB,CAL
##  Copyright (c) 1992-1999 Matra Datavision
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

## ! This class permits the creation and control of integer identifiers.



proc newAspectGenId*(): AspectGenId {.cdecl, constructor,
                                   importcpp: "Aspect_GenId(@)".}
proc newAspectGenId*(theLow: cint; theUpper: cint): AspectGenId {.cdecl, constructor,
    importcpp: "Aspect_GenId(@)".}
proc free*(this: var AspectGenId) {.cdecl, importcpp: "Free".}
proc free*(this: var AspectGenId; theId: cint) {.cdecl, importcpp: "Free",
    .}
proc hasFree*(this: AspectGenId): bool {.noSideEffect, cdecl, importcpp: "HasFree",
                                     .}
proc available*(this: AspectGenId): cint {.noSideEffect, cdecl,
                                       importcpp: "Available".}
proc lower*(this: AspectGenId): cint {.noSideEffect, cdecl, importcpp: "Lower",
                                   .}
proc next*(this: var AspectGenId): cint {.cdecl, importcpp: "Next".}
proc next*(this: var AspectGenId; theId: var cint): bool {.cdecl, importcpp: "Next",
    .}
proc upper*(this: AspectGenId): cint {.noSideEffect, cdecl, importcpp: "Upper",
                                   .}
proc dumpJson*(this: AspectGenId; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 .}


