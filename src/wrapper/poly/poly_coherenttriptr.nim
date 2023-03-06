import poly_types
import ../standard/standard_types
import ../gp/gp_types
import ../ncollection/ncollection_types

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

discard "forward decl of Poly_CoherentTriangle"
## *
##  Implementation of both list node for Poly_CoherentTriangle type and
##  round double-linked list of these nodes.
##




proc newPolyCoherentTriPtrIterator*(): PolyCoherentTriPtrIterator {.cdecl,
    constructor, importcpp: "Poly_CoherentTriPtr::Iterator(@)", header: "Poly_CoherentTriPtr.hxx".}
proc newPolyCoherentTriPtrIterator*(thePtr: PolyCoherentTriPtr): PolyCoherentTriPtrIterator {.
    cdecl, constructor, importcpp: "Poly_CoherentTriPtr::Iterator(@)",
    header: "Poly_CoherentTriPtr.hxx".}
proc first*(this: PolyCoherentTriPtrIterator): ptr PolyCoherentTriangle {.
    noSideEffect, cdecl, importcpp: "First", header: "Poly_CoherentTriPtr.hxx".}
proc more*(this: PolyCoherentTriPtrIterator): bool {.noSideEffect, cdecl,
    importcpp: "More", header: "Poly_CoherentTriPtr.hxx".}
proc next*(this: var PolyCoherentTriPtrIterator) {.cdecl, importcpp: "Next",
    header: "Poly_CoherentTriPtr.hxx".}
proc value*(this: PolyCoherentTriPtrIterator): PolyCoherentTriangle {.noSideEffect,
    cdecl, importcpp: "Value", header: "Poly_CoherentTriPtr.hxx".}
proc changeValue*(this: PolyCoherentTriPtrIterator): var PolyCoherentTriangle {.
    noSideEffect, cdecl, importcpp: "ChangeValue", header: "Poly_CoherentTriPtr.hxx".}
proc ptrValue*(this: PolyCoherentTriPtrIterator): PolyCoherentTriPtr {.noSideEffect,
    cdecl, importcpp: "PtrValue", header: "Poly_CoherentTriPtr.hxx".}
proc newPolyCoherentTriPtr*(theTri: PolyCoherentTriangle): PolyCoherentTriPtr {.
    cdecl, constructor, importcpp: "Poly_CoherentTriPtr(@)", header: "Poly_CoherentTriPtr.hxx".}
proc getTriangle*(this: PolyCoherentTriPtr): PolyCoherentTriangle {.noSideEffect,
    cdecl, importcpp: "GetTriangle", header: "Poly_CoherentTriPtr.hxx".}
proc setTriangle*(this: var PolyCoherentTriPtr; pTri: ptr PolyCoherentTriangle) {.
    cdecl, importcpp: "SetTriangle", header: "Poly_CoherentTriPtr.hxx".}
proc next*(this: PolyCoherentTriPtr): var PolyCoherentTriPtr {.noSideEffect, cdecl,
    importcpp: "Next", header: "Poly_CoherentTriPtr.hxx".}
proc previous*(this: PolyCoherentTriPtr): var PolyCoherentTriPtr {.noSideEffect,
    cdecl, importcpp: "Previous", header: "Poly_CoherentTriPtr.hxx".}
proc append*(this: var PolyCoherentTriPtr; pTri: ptr PolyCoherentTriangle;
            theA: Handle[NCollectionBaseAllocator]) {.cdecl, importcpp: "Append",
    header: "Poly_CoherentTriPtr.hxx".}
proc prepend*(this: var PolyCoherentTriPtr; pTri: ptr PolyCoherentTriangle;
             theA: Handle[NCollectionBaseAllocator]) {.cdecl, importcpp: "Prepend",
    header: "Poly_CoherentTriPtr.hxx".}
proc remove*(thePtr: ptr PolyCoherentTriPtr; theA: Handle[NCollectionBaseAllocator]) {.
    cdecl, importcpp: "Poly_CoherentTriPtr::Remove(@)", header: "Poly_CoherentTriPtr.hxx".}
proc removeList*(thePtr: ptr PolyCoherentTriPtr;
                a2: Handle[NCollectionBaseAllocator]) {.cdecl,
    importcpp: "Poly_CoherentTriPtr::RemoveList(@)", header: "Poly_CoherentTriPtr.hxx".}
