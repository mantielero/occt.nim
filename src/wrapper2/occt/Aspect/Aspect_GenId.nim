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

discard "forward decl of Aspect_IdentDefinitionError"
type
  AspectGenId* {.importcpp: "Aspect_GenId", header: "Aspect_GenId.hxx", bycopy.} = object ##
                                                                                  ## !
                                                                                  ## Creates
                                                                                  ## an
                                                                                  ## available
                                                                                  ## set
                                                                                  ## of
                                                                                  ## identifiers
                                                                                  ## with
                                                                                  ## the
                                                                                  ## lower
                                                                                  ## bound
                                                                                  ## 0
                                                                                  ## and
                                                                                  ## the
                                                                                  ## upper
                                                                                  ## bound
                                                                                  ## INT_MAX
                                                                                  ## /
                                                                                  ## 2.


proc constructAspectGenId*(): AspectGenId {.constructor,
    importcpp: "Aspect_GenId(@)", header: "Aspect_GenId.hxx".}
proc constructAspectGenId*(theLow: StandardInteger; theUpper: StandardInteger): AspectGenId {.
    constructor, importcpp: "Aspect_GenId(@)", header: "Aspect_GenId.hxx".}
proc free*(this: var AspectGenId) {.importcpp: "Free", header: "Aspect_GenId.hxx".}
proc free*(this: var AspectGenId; theId: StandardInteger) {.importcpp: "Free",
    header: "Aspect_GenId.hxx".}
proc hasFree*(this: AspectGenId): StandardBoolean {.noSideEffect,
    importcpp: "HasFree", header: "Aspect_GenId.hxx".}
proc available*(this: AspectGenId): StandardInteger {.noSideEffect,
    importcpp: "Available", header: "Aspect_GenId.hxx".}
proc lower*(this: AspectGenId): StandardInteger {.noSideEffect, importcpp: "Lower",
    header: "Aspect_GenId.hxx".}
proc next*(this: var AspectGenId): StandardInteger {.importcpp: "Next",
    header: "Aspect_GenId.hxx".}
proc next*(this: var AspectGenId; theId: var StandardInteger): StandardBoolean {.
    importcpp: "Next", header: "Aspect_GenId.hxx".}
proc upper*(this: AspectGenId): StandardInteger {.noSideEffect, importcpp: "Upper",
    header: "Aspect_GenId.hxx".}
proc dumpJson*(this: AspectGenId; theOStream: var StandardOStream;
              theDepth: StandardInteger = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "Aspect_GenId.hxx".}

