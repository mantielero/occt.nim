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

# discard "forward decl of Poly_CoherentTriangle"
# when defined(_MSC_VER):
## *
##  Implementation of both list node for Poly_CoherentTriangle type and
##  round double-linked list of these nodes.
##

type
  PolyCoherentTriPtr* {.importcpp: "Poly_CoherentTriPtr",
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

  PolyCoherentTriPtrIterator* {.importcpp: "Poly_CoherentTriPtr::Iterator",
                               header: "Poly_CoherentTriPtr.hxx", bycopy.} = object ## !
                                                                               ## Empty
                                                                               ## constructor


proc constructPolyCoherentTriPtrIterator*(): PolyCoherentTriPtrIterator {.
    constructor, importcpp: "Poly_CoherentTriPtr::Iterator(@)",
    header: "Poly_CoherentTriPtr.hxx".}
proc constructPolyCoherentTriPtrIterator*(thePtr: PolyCoherentTriPtr): PolyCoherentTriPtrIterator {.
    constructor, importcpp: "Poly_CoherentTriPtr::Iterator(@)",
    header: "Poly_CoherentTriPtr.hxx".}
proc first*(this: PolyCoherentTriPtrIterator): ptr PolyCoherentTriangle {.
    noSideEffect, importcpp: "First", header: "Poly_CoherentTriPtr.hxx".}
proc more*(this: PolyCoherentTriPtrIterator): bool {.noSideEffect, importcpp: "More",
    header: "Poly_CoherentTriPtr.hxx".}
proc next*(this: var PolyCoherentTriPtrIterator) {.importcpp: "Next",
    header: "Poly_CoherentTriPtr.hxx".}
proc value*(this: PolyCoherentTriPtrIterator): PolyCoherentTriangle {.noSideEffect,
    importcpp: "Value", header: "Poly_CoherentTriPtr.hxx".}
proc changeValue*(this: PolyCoherentTriPtrIterator): var PolyCoherentTriangle {.
    noSideEffect, importcpp: "ChangeValue", header: "Poly_CoherentTriPtr.hxx".}
proc ptrValue*(this: PolyCoherentTriPtrIterator): PolyCoherentTriPtr {.noSideEffect,
    importcpp: "PtrValue", header: "Poly_CoherentTriPtr.hxx".}
proc constructPolyCoherentTriPtr*(theTri: PolyCoherentTriangle): PolyCoherentTriPtr {.
    constructor, importcpp: "Poly_CoherentTriPtr(@)",
    header: "Poly_CoherentTriPtr.hxx".}
proc getTriangle*(this: PolyCoherentTriPtr): PolyCoherentTriangle {.noSideEffect,
    importcpp: "GetTriangle", header: "Poly_CoherentTriPtr.hxx".}
proc setTriangle*(this: var PolyCoherentTriPtr; pTri: ptr PolyCoherentTriangle) {.
    importcpp: "SetTriangle", header: "Poly_CoherentTriPtr.hxx".}
proc next*(this: PolyCoherentTriPtr): var PolyCoherentTriPtr {.noSideEffect,
    importcpp: "Next", header: "Poly_CoherentTriPtr.hxx".}
proc previous*(this: PolyCoherentTriPtr): var PolyCoherentTriPtr {.noSideEffect,
    importcpp: "Previous", header: "Poly_CoherentTriPtr.hxx".}
proc append*(this: var PolyCoherentTriPtr; pTri: ptr PolyCoherentTriangle;
            theA: Handle[NCollectionBaseAllocator]) {.importcpp: "Append",
    header: "Poly_CoherentTriPtr.hxx".}
proc prepend*(this: var PolyCoherentTriPtr; pTri: ptr PolyCoherentTriangle;
             theA: Handle[NCollectionBaseAllocator]) {.importcpp: "Prepend",
    header: "Poly_CoherentTriPtr.hxx".}
proc remove*(thePtr: ptr PolyCoherentTriPtr; theA: Handle[NCollectionBaseAllocator]) {.
    importcpp: "Poly_CoherentTriPtr::Remove(@)", header: "Poly_CoherentTriPtr.hxx".}
proc removeList*(thePtr: ptr PolyCoherentTriPtr;
                a2: Handle[NCollectionBaseAllocator]) {.
    importcpp: "Poly_CoherentTriPtr::RemoveList(@)",
    header: "Poly_CoherentTriPtr.hxx".}
# when defined(_MSC_VER):
#   discard


