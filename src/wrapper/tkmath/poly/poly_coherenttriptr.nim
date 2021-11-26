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


proc newPolyCoherentTriPtrIterator*(): PolyCoherentTriPtrIterator {.cdecl,
    constructor, importcpp: "Poly_CoherentTriPtr::Iterator(@)", dynlib: tkmath.}
proc newPolyCoherentTriPtrIterator*(thePtr: PolyCoherentTriPtr): PolyCoherentTriPtrIterator {.
    cdecl, constructor, importcpp: "Poly_CoherentTriPtr::Iterator(@)",
    dynlib: tkmath.}
proc first*(this: PolyCoherentTriPtrIterator): ptr PolyCoherentTriangle {.
    noSideEffect, cdecl, importcpp: "First", dynlib: tkmath.}
proc more*(this: PolyCoherentTriPtrIterator): bool {.noSideEffect, cdecl,
    importcpp: "More", dynlib: tkmath.}
proc next*(this: var PolyCoherentTriPtrIterator) {.cdecl, importcpp: "Next",
    dynlib: tkmath.}
proc value*(this: PolyCoherentTriPtrIterator): PolyCoherentTriangle {.noSideEffect,
    cdecl, importcpp: "Value", dynlib: tkmath.}
proc changeValue*(this: PolyCoherentTriPtrIterator): var PolyCoherentTriangle {.
    noSideEffect, cdecl, importcpp: "ChangeValue", dynlib: tkmath.}
proc ptrValue*(this: PolyCoherentTriPtrIterator): PolyCoherentTriPtr {.noSideEffect,
    cdecl, importcpp: "PtrValue", dynlib: tkmath.}
proc newPolyCoherentTriPtr*(theTri: PolyCoherentTriangle): PolyCoherentTriPtr {.
    cdecl, constructor, importcpp: "Poly_CoherentTriPtr(@)", dynlib: tkmath.}
proc getTriangle*(this: PolyCoherentTriPtr): PolyCoherentTriangle {.noSideEffect,
    cdecl, importcpp: "GetTriangle", dynlib: tkmath.}
proc setTriangle*(this: var PolyCoherentTriPtr; pTri: ptr PolyCoherentTriangle) {.
    cdecl, importcpp: "SetTriangle", dynlib: tkmath.}
proc next*(this: PolyCoherentTriPtr): var PolyCoherentTriPtr {.noSideEffect, cdecl,
    importcpp: "Next", dynlib: tkmath.}
proc previous*(this: PolyCoherentTriPtr): var PolyCoherentTriPtr {.noSideEffect,
    cdecl, importcpp: "Previous", dynlib: tkmath.}
proc append*(this: var PolyCoherentTriPtr; pTri: ptr PolyCoherentTriangle;
            theA: Handle[NCollectionBaseAllocator]) {.cdecl, importcpp: "Append",
    dynlib: tkmath.}
proc prepend*(this: var PolyCoherentTriPtr; pTri: ptr PolyCoherentTriangle;
             theA: Handle[NCollectionBaseAllocator]) {.cdecl, importcpp: "Prepend",
    dynlib: tkmath.}
proc remove*(thePtr: ptr PolyCoherentTriPtr; theA: Handle[NCollectionBaseAllocator]) {.
    cdecl, importcpp: "Poly_CoherentTriPtr::Remove(@)", dynlib: tkmath.}
proc removeList*(thePtr: ptr PolyCoherentTriPtr;
                a2: Handle[NCollectionBaseAllocator]) {.cdecl,
    importcpp: "Poly_CoherentTriPtr::RemoveList(@)", dynlib: tkmath.}