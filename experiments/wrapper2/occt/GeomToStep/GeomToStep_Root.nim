##  Created on: 1993-06-14
##  Created by: Martine LANGLOIS
##  Copyright (c) 1993-1999 Matra Datavision
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

## ! This class implements the common services for
## ! all classes of GeomToStep which report error.

type
  GeomToStepRoot* {.importcpp: "GeomToStep_Root", header: "GeomToStep_Root.hxx",
                   bycopy.} = object


proc `new`*(this: var GeomToStepRoot; theSize: csize_t): pointer {.
    importcpp: "GeomToStep_Root::operator new", header: "GeomToStep_Root.hxx".}
proc `delete`*(this: var GeomToStepRoot; theAddress: pointer) {.
    importcpp: "GeomToStep_Root::operator delete", header: "GeomToStep_Root.hxx".}
proc `new[]`*(this: var GeomToStepRoot; theSize: csize_t): pointer {.
    importcpp: "GeomToStep_Root::operator new[]", header: "GeomToStep_Root.hxx".}
proc `delete[]`*(this: var GeomToStepRoot; theAddress: pointer) {.
    importcpp: "GeomToStep_Root::operator delete[]", header: "GeomToStep_Root.hxx".}
proc `new`*(this: var GeomToStepRoot; a2: csize_t; theAddress: pointer): pointer {.
    importcpp: "GeomToStep_Root::operator new", header: "GeomToStep_Root.hxx".}
proc `delete`*(this: var GeomToStepRoot; a2: pointer; a3: pointer) {.
    importcpp: "GeomToStep_Root::operator delete", header: "GeomToStep_Root.hxx".}
proc isDone*(this: GeomToStepRoot): StandardBoolean {.noSideEffect,
    importcpp: "IsDone", header: "GeomToStep_Root.hxx".}