##  Created on: 2007-12-08
##  Created by: Alexander GRIGORIEV
##  Copyright (c) 2007-2014 OPEN CASCADE SAS
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
  ../NCollection/NCollection_BaseAllocator,
  ../NCollection/NCollection_DefineAlloc

discard "forward decl of Poly_CoherentTriangle"
when defined(_MSC_VER):
## *
##  Implementation of both list node for Poly_CoherentTriangle type and
##  round double-linked list of these nodes.
##

type
  Poly_CoherentTriPtr* {.importcpp: "Poly_CoherentTriPtr",
                        header: "Poly_CoherentTriPtr.hxx", bycopy.} = object ## *
                                                                        ##  Iterator class for this list of triangles. Because the list is round,
                                                                        ##  an iteration can be started from any member and it finishes before taking
                                                                        ##  this member again. The iteration sense is always forward (Next).
                                                                        ##
                                                                        ##  ---------- PROTECTED METHODS ----------
                                                                        ## *
                                                                        ##  Constructor.
                                                                        ##
                                                                        ##  ---------- PRIVATE FIELDS ----------

  Poly_CoherentTriPtrIterator* {.importcpp: "Poly_CoherentTriPtr::Iterator",
                                header: "Poly_CoherentTriPtr.hxx", bycopy.} = object ##
                                                                                ## !
                                                                                ## Empty
                                                                                ## constructor


proc constructPoly_CoherentTriPtrIterator*(): Poly_CoherentTriPtrIterator {.
    constructor, importcpp: "Poly_CoherentTriPtr::Iterator(@)",
    header: "Poly_CoherentTriPtr.hxx".}
proc constructPoly_CoherentTriPtrIterator*(thePtr: Poly_CoherentTriPtr): Poly_CoherentTriPtrIterator {.
    constructor, importcpp: "Poly_CoherentTriPtr::Iterator(@)",
    header: "Poly_CoherentTriPtr.hxx".}
proc First*(this: Poly_CoherentTriPtrIterator): ptr Poly_CoherentTriangle {.
    noSideEffect, importcpp: "First", header: "Poly_CoherentTriPtr.hxx".}
proc More*(this: Poly_CoherentTriPtrIterator): Standard_Boolean {.noSideEffect,
    importcpp: "More", header: "Poly_CoherentTriPtr.hxx".}
proc Next*(this: var Poly_CoherentTriPtrIterator) {.importcpp: "Next",
    header: "Poly_CoherentTriPtr.hxx".}
proc Value*(this: Poly_CoherentTriPtrIterator): Poly_CoherentTriangle {.
    noSideEffect, importcpp: "Value", header: "Poly_CoherentTriPtr.hxx".}
proc ChangeValue*(this: Poly_CoherentTriPtrIterator): var Poly_CoherentTriangle {.
    noSideEffect, importcpp: "ChangeValue", header: "Poly_CoherentTriPtr.hxx".}
proc PtrValue*(this: Poly_CoherentTriPtrIterator): Poly_CoherentTriPtr {.
    noSideEffect, importcpp: "PtrValue", header: "Poly_CoherentTriPtr.hxx".}
proc constructPoly_CoherentTriPtr*(theTri: Poly_CoherentTriangle): Poly_CoherentTriPtr {.
    constructor, importcpp: "Poly_CoherentTriPtr(@)",
    header: "Poly_CoherentTriPtr.hxx".}
proc GetTriangle*(this: Poly_CoherentTriPtr): Poly_CoherentTriangle {.noSideEffect,
    importcpp: "GetTriangle", header: "Poly_CoherentTriPtr.hxx".}
proc SetTriangle*(this: var Poly_CoherentTriPtr; pTri: ptr Poly_CoherentTriangle) {.
    importcpp: "SetTriangle", header: "Poly_CoherentTriPtr.hxx".}
proc Next*(this: Poly_CoherentTriPtr): var Poly_CoherentTriPtr {.noSideEffect,
    importcpp: "Next", header: "Poly_CoherentTriPtr.hxx".}
proc Previous*(this: Poly_CoherentTriPtr): var Poly_CoherentTriPtr {.noSideEffect,
    importcpp: "Previous", header: "Poly_CoherentTriPtr.hxx".}
proc Append*(this: var Poly_CoherentTriPtr; pTri: ptr Poly_CoherentTriangle;
            theA: handle[NCollection_BaseAllocator]) {.importcpp: "Append",
    header: "Poly_CoherentTriPtr.hxx".}
proc Prepend*(this: var Poly_CoherentTriPtr; pTri: ptr Poly_CoherentTriangle;
             theA: handle[NCollection_BaseAllocator]) {.importcpp: "Prepend",
    header: "Poly_CoherentTriPtr.hxx".}
proc Remove*(thePtr: ptr Poly_CoherentTriPtr;
            theA: handle[NCollection_BaseAllocator]) {.
    importcpp: "Poly_CoherentTriPtr::Remove(@)", header: "Poly_CoherentTriPtr.hxx".}
proc RemoveList*(thePtr: ptr Poly_CoherentTriPtr;
                a2: handle[NCollection_BaseAllocator]) {.
    importcpp: "Poly_CoherentTriPtr::RemoveList(@)",
    header: "Poly_CoherentTriPtr.hxx".}
when defined(_MSC_VER):
  discard