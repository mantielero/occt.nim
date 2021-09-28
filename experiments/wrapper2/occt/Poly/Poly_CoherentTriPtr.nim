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

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # discard "forward decl of Poly_CoherentTriangle"
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # when defined(_MSC_VER):
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
## !!!Ignored construct:  *
##  Append a pointer to triangle into the list after the current instance.
##  @param pTri
##    Triangle that is to be included in the list after this one.
##  @param theA
##    Allocator where the new pointer instance is created.
##  void Append ( const Poly_CoherentTriangle * pTri , const Handle ( NCollection_BaseAllocator ) & theA ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  *
##  Prepend a pointer to triangle into the list before the current instance.
##  @param pTri
##    Triangle that is to be included in the list before this one.
##  @param theA
##    Allocator where the new pointer instance is created.
##  void Prepend ( const Poly_CoherentTriangle * pTri , const Handle ( NCollection_BaseAllocator ) & theA ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  *
##  Remove a pointer to triangle from its list.
##  @param thePtr
##    This class instance that should be removed from its list.
##  @param theA
##    Allocator where the current pointer instance was created.
##  static void Remove ( Poly_CoherentTriPtr * thePtr , const Handle ( NCollection_BaseAllocator ) & theA ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  *
##  Remove the list containing the given pointer to triangle.
##  static void RemoveList ( Poly_CoherentTriPtr * thePtr , const Handle ( NCollection_BaseAllocator ) & ) ;
## Error: token expected: ) but got: &!!!

# when defined(_MSC_VER):
#   discard





















































































































































