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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Integer,
  ../TColStd/TColStd_ListOfInteger, ../Standard/Standard_Boolean

discard "forward decl of Aspect_IdentDefinitionError"
type
  Aspect_GenId* {.importcpp: "Aspect_GenId", header: "Aspect_GenId.hxx", bycopy.} = object ##
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


proc constructAspect_GenId*(): Aspect_GenId {.constructor,
    importcpp: "Aspect_GenId(@)", header: "Aspect_GenId.hxx".}
proc constructAspect_GenId*(theLow: Standard_Integer; theUpper: Standard_Integer): Aspect_GenId {.
    constructor, importcpp: "Aspect_GenId(@)", header: "Aspect_GenId.hxx".}
proc Free*(this: var Aspect_GenId) {.importcpp: "Free", header: "Aspect_GenId.hxx".}
proc Free*(this: var Aspect_GenId; theId: Standard_Integer) {.importcpp: "Free",
    header: "Aspect_GenId.hxx".}
proc HasFree*(this: Aspect_GenId): Standard_Boolean {.noSideEffect,
    importcpp: "HasFree", header: "Aspect_GenId.hxx".}
proc Available*(this: Aspect_GenId): Standard_Integer {.noSideEffect,
    importcpp: "Available", header: "Aspect_GenId.hxx".}
proc Lower*(this: Aspect_GenId): Standard_Integer {.noSideEffect, importcpp: "Lower",
    header: "Aspect_GenId.hxx".}
proc Next*(this: var Aspect_GenId): Standard_Integer {.importcpp: "Next",
    header: "Aspect_GenId.hxx".}
proc Next*(this: var Aspect_GenId; theId: var Standard_Integer): Standard_Boolean {.
    importcpp: "Next", header: "Aspect_GenId.hxx".}
proc Upper*(this: Aspect_GenId): Standard_Integer {.noSideEffect, importcpp: "Upper",
    header: "Aspect_GenId.hxx".}
proc DumpJson*(this: Aspect_GenId; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "Aspect_GenId.hxx".}