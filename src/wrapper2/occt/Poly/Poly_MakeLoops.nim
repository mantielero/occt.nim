##  Created on: 2009-10-22
##  Created by: Mikhail SAZONOV
##  Copyright (c) 2009-2014 OPEN CASCADE SAS
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
  ../NCollection/NCollection_Sequence, ../NCollection/NCollection_IndexedMap,
  ../TColStd/TColStd_PackedMapOfInteger,
  ../TColStd/TColStd_MapIteratorOfPackedMapOfInteger,
  ../NCollection/NCollection_IncAllocator, ../NCollection/NCollection_List

## *
##  Make loops from a set of connected links. A link is represented by
##  a pair of integer indices of nodes.
##

type
  Poly_MakeLoops* {.importcpp: "Poly_MakeLoops", header: "Poly_MakeLoops.hxx", bycopy.} = object ##
                                                                                         ## !
                                                                                         ## Orientation
                                                                                         ## flags
                                                                                         ## that
                                                                                         ## can
                                                                                         ## be
                                                                                         ## attached
                                                                                         ## to
                                                                                         ## a
                                                                                         ## link
                                                                                         ##
                                                                                         ## PUBLIC
                                                                                         ## METHODS
                                                                                         ##
                                                                                         ## !
                                                                                         ## Constructor.
                                                                                         ## If
                                                                                         ## helper
                                                                                         ## is
                                                                                         ## NULL
                                                                                         ## then
                                                                                         ## the
                                                                                         ## algorithm
                                                                                         ## will
                                                                                         ##
                                                                                         ## !
                                                                                         ## probably
                                                                                         ## return
                                                                                         ## a
                                                                                         ## wrong
                                                                                         ## result

  Poly_MakeLoopsLinkFlag* {.size: sizeof(cint),
                           importcpp: "Poly_MakeLoops::LinkFlag",
                           header: "Poly_MakeLoops.hxx".} = enum
    LF_None = 0, LF_Fwd = 1,       ##  forward orientation
    LF_Rev = 2,                 ##  reversed orientation
    LF_Both = 3,                ##  both ways oriented
    LF_Reversed = 4


type
  Poly_MakeLoopsLink* {.importcpp: "Poly_MakeLoops::Link",
                       header: "Poly_MakeLoops.hxx", bycopy.} = object
    node1* {.importc: "node1".}: Standard_Integer
    node2* {.importc: "node2".}: Standard_Integer
    flags* {.importc: "flags".}: Standard_Integer


proc constructPoly_MakeLoopsLink*(): Poly_MakeLoopsLink {.constructor,
    importcpp: "Poly_MakeLoops::Link(@)", header: "Poly_MakeLoops.hxx".}
proc constructPoly_MakeLoopsLink*(theNode1: Standard_Integer;
                                 theNode2: Standard_Integer): Poly_MakeLoopsLink {.
    constructor, importcpp: "Poly_MakeLoops::Link(@)", header: "Poly_MakeLoops.hxx".}
proc Reverse*(this: var Poly_MakeLoopsLink) {.importcpp: "Reverse",
    header: "Poly_MakeLoops.hxx".}
proc IsReversed*(this: Poly_MakeLoopsLink): Standard_Boolean {.noSideEffect,
    importcpp: "IsReversed", header: "Poly_MakeLoops.hxx".}
proc Nullify*(this: var Poly_MakeLoopsLink) {.importcpp: "Nullify",
    header: "Poly_MakeLoops.hxx".}
proc IsNull*(this: Poly_MakeLoopsLink): Standard_Boolean {.noSideEffect,
    importcpp: "IsNull", header: "Poly_MakeLoops.hxx".}
type
  Poly_MakeLoopsListOfLink* = NCollection_List[Poly_MakeLoopsLink]
  Poly_MakeLoopsLoop* = Poly_MakeLoopsListOfLink
  Poly_MakeLoopsHelper* {.importcpp: "Poly_MakeLoops::Helper",
                         header: "Poly_MakeLoops.hxx", bycopy.} = object ## ! returns the links adjacent to the given node


proc GetAdjacentLinks*(this: Poly_MakeLoopsHelper; theNode: Standard_Integer): Poly_MakeLoopsListOfLink {.
    noSideEffect, importcpp: "GetAdjacentLinks", header: "Poly_MakeLoops.hxx".}
proc OnAddLink*(this: Poly_MakeLoopsHelper; a2: Standard_Integer; ## theNum
               a3: Poly_MakeLoopsLink) {.noSideEffect, importcpp: "OnAddLink",
                                       header: "Poly_MakeLoops.hxx".}
  ## theLink
type
  Poly_MakeLoopsHeapOfInteger* {.importcpp: "Poly_MakeLoops::HeapOfInteger",
                                header: "Poly_MakeLoops.hxx", bycopy.} = object


proc constructPoly_MakeLoopsHeapOfInteger*(
    theNbPreAllocated: Standard_Integer = 1): Poly_MakeLoopsHeapOfInteger {.
    constructor, importcpp: "Poly_MakeLoops::HeapOfInteger(@)",
    header: "Poly_MakeLoops.hxx".}
proc Clear*(this: var Poly_MakeLoopsHeapOfInteger) {.importcpp: "Clear",
    header: "Poly_MakeLoops.hxx".}
proc Add*(this: var Poly_MakeLoopsHeapOfInteger; theValue: Standard_Integer) {.
    importcpp: "Add", header: "Poly_MakeLoops.hxx".}
proc Top*(this: var Poly_MakeLoopsHeapOfInteger): Standard_Integer {.
    importcpp: "Top", header: "Poly_MakeLoops.hxx".}
proc Contains*(this: Poly_MakeLoopsHeapOfInteger; theValue: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "Contains", header: "Poly_MakeLoops.hxx".}
proc Remove*(this: var Poly_MakeLoopsHeapOfInteger; theValue: Standard_Integer) {.
    importcpp: "Remove", header: "Poly_MakeLoops.hxx".}
proc IsEmpty*(this: var Poly_MakeLoopsHeapOfInteger): Standard_Boolean {.
    importcpp: "IsEmpty", header: "Poly_MakeLoops.hxx".}
proc constructPoly_MakeLoops*(theHelper: ptr Poly_MakeLoopsHelper; theAlloc: handle[
    NCollection_BaseAllocator] = 0L'i64): Poly_MakeLoops {.constructor,
    importcpp: "Poly_MakeLoops(@)", header: "Poly_MakeLoops.hxx".}
proc Reset*(this: var Poly_MakeLoops; theHelper: ptr Poly_MakeLoopsHelper;
           theAlloc: handle[NCollection_BaseAllocator] = 0L'i64) {.
    importcpp: "Reset", header: "Poly_MakeLoops.hxx".}
proc AddLink*(this: var Poly_MakeLoops; theLink: Poly_MakeLoopsLink) {.
    importcpp: "AddLink", header: "Poly_MakeLoops.hxx".}
proc ReplaceLink*(this: var Poly_MakeLoops; theLink: Poly_MakeLoopsLink;
                 theNewLink: Poly_MakeLoopsLink) {.importcpp: "ReplaceLink",
    header: "Poly_MakeLoops.hxx".}
proc SetLinkOrientation*(this: var Poly_MakeLoops; theLink: Poly_MakeLoopsLink;
                        theOrient: Poly_MakeLoopsLinkFlag): Poly_MakeLoopsLinkFlag {.
    importcpp: "SetLinkOrientation", header: "Poly_MakeLoops.hxx".}
proc FindLink*(this: Poly_MakeLoops; theLink: Poly_MakeLoopsLink): Poly_MakeLoopsLink {.
    noSideEffect, importcpp: "FindLink", header: "Poly_MakeLoops.hxx".}
type
  Poly_MakeLoopsResultCode* {.size: sizeof(cint),
                             importcpp: "Poly_MakeLoops::ResultCode",
                             header: "Poly_MakeLoops.hxx".} = enum
    RC_LoopsDone = 1, RC_HangingLinks = 2, RC_Failure = 4


proc Perform*(this: var Poly_MakeLoops): Standard_Integer {.importcpp: "Perform",
    header: "Poly_MakeLoops.hxx".}
proc GetNbLoops*(this: Poly_MakeLoops): Standard_Integer {.noSideEffect,
    importcpp: "GetNbLoops", header: "Poly_MakeLoops.hxx".}
proc GetLoop*(this: Poly_MakeLoops; theIndex: Standard_Integer): Poly_MakeLoopsLoop {.
    noSideEffect, importcpp: "GetLoop", header: "Poly_MakeLoops.hxx".}
proc GetNbHanging*(this: Poly_MakeLoops): Standard_Integer {.noSideEffect,
    importcpp: "GetNbHanging", header: "Poly_MakeLoops.hxx".}
proc GetHangingLinks*(this: Poly_MakeLoops; theLinks: var Poly_MakeLoopsListOfLink) {.
    noSideEffect, importcpp: "GetHangingLinks", header: "Poly_MakeLoops.hxx".}
## ! Computes a hash code for the given link, in the range [1, theUpperBound]
## ! @param theLink the link which hash code is to be computed
## ! @param theUpperBound the upper bound of the range a computing hash code must be within
## ! @return a computed hash code, in the range [1, theUpperBound]

proc HashCode*(theLink: Poly_MakeLoopsLink; theUpperBound: Standard_Integer): Standard_Integer =
  discard

## *
##  IsEqual method is needed for maps
##

proc IsEqual*(theKey1: Poly_MakeLoopsLink; theKey2: Poly_MakeLoopsLink): Standard_Boolean =
  discard

## *
##  Implementation for 3D space
##

discard "forward decl of gp_Dir"
type
  Poly_MakeLoops3D* {.importcpp: "Poly_MakeLoops3D", header: "Poly_MakeLoops.hxx",
                     bycopy.} = object of Poly_MakeLoops ## ! The abstract helper class

  Poly_MakeLoops3DHelper* {.importcpp: "Poly_MakeLoops3D::Helper",
                           header: "Poly_MakeLoops.hxx", bycopy.} = object of Poly_MakeLoopsHelper ##  all the following methods should return False if
                                                                                            ##  it is impossible to return a valid direction
                                                                                            ## ! returns the tangent vector at the first node of a link


proc GetFirstTangent*(this: Poly_MakeLoops3DHelper; theLink: Link; theDir: var gp_Dir): Standard_Boolean {.
    noSideEffect, importcpp: "GetFirstTangent", header: "Poly_MakeLoops.hxx".}
proc GetLastTangent*(this: Poly_MakeLoops3DHelper; theLink: Link; theDir: var gp_Dir): Standard_Boolean {.
    noSideEffect, importcpp: "GetLastTangent", header: "Poly_MakeLoops.hxx".}
proc GetNormal*(this: Poly_MakeLoops3DHelper; theNode: Standard_Integer;
               theDir: var gp_Dir): Standard_Boolean {.noSideEffect,
    importcpp: "GetNormal", header: "Poly_MakeLoops.hxx".}
proc constructPoly_MakeLoops3D*(theHelper: ptr Poly_MakeLoops3DHelper;
                               theAlloc: handle[NCollection_BaseAllocator]): Poly_MakeLoops3D {.
    constructor, importcpp: "Poly_MakeLoops3D(@)", header: "Poly_MakeLoops.hxx".}
## *
##  Implementation for 2D space
##

discard "forward decl of gp_Dir2d"
type
  Poly_MakeLoops2D* {.importcpp: "Poly_MakeLoops2D", header: "Poly_MakeLoops.hxx",
                     bycopy.} = object of Poly_MakeLoops ## ! The abstract helper class
                                                    ## ! this flag says that chooseLeftWay must choose the right way instead

  Poly_MakeLoops2DHelper* {.importcpp: "Poly_MakeLoops2D::Helper",
                           header: "Poly_MakeLoops.hxx", bycopy.} = object of Poly_MakeLoopsHelper ##  all the following methods should return False if
                                                                                            ##  it is impossible to return a valid direction
                                                                                            ## ! returns the tangent vector at the first node of a link


proc GetFirstTangent*(this: Poly_MakeLoops2DHelper; theLink: Link;
                     theDir: var gp_Dir2d): Standard_Boolean {.noSideEffect,
    importcpp: "GetFirstTangent", header: "Poly_MakeLoops.hxx".}
proc GetLastTangent*(this: Poly_MakeLoops2DHelper; theLink: Link;
                    theDir: var gp_Dir2d): Standard_Boolean {.noSideEffect,
    importcpp: "GetLastTangent", header: "Poly_MakeLoops.hxx".}
proc constructPoly_MakeLoops2D*(theLeftWay: Standard_Boolean;
                               theHelper: ptr Poly_MakeLoops2DHelper;
                               theAlloc: handle[NCollection_BaseAllocator]): Poly_MakeLoops2D {.
    constructor, importcpp: "Poly_MakeLoops2D(@)", header: "Poly_MakeLoops.hxx".}