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

## *
##  Make loops from a set of connected links. A link is represented by
##  a pair of integer indices of nodes.
##

type
  PolyMakeLoops* {.importcpp: "Poly_MakeLoops", header: "Poly_MakeLoops.hxx", bycopy.} = object ##
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

  PolyMakeLoopsLinkFlag* {.size: sizeof(cint),
                          importcpp: "Poly_MakeLoops::LinkFlag",
                          header: "Poly_MakeLoops.hxx".} = enum
    LF_None = 0, LF_Fwd = 1,       ##  forward orientation
    LF_Rev = 2,                 ##  reversed orientation
    LF_Both = 3,                ##  both ways oriented
    LF_Reversed = 4


type
  PolyMakeLoopsLink* {.importcpp: "Poly_MakeLoops::Link",
                      header: "Poly_MakeLoops.hxx", bycopy.} = object
    node1* {.importc: "node1".}: cint
    node2* {.importc: "node2".}: cint
    flags* {.importc: "flags".}: cint


proc constructPolyMakeLoopsLink*(): PolyMakeLoopsLink {.constructor,
    importcpp: "Poly_MakeLoops::Link(@)", header: "Poly_MakeLoops.hxx".}
proc constructPolyMakeLoopsLink*(theNode1: cint; theNode2: cint): PolyMakeLoopsLink {.
    constructor, importcpp: "Poly_MakeLoops::Link(@)", header: "Poly_MakeLoops.hxx".}
proc reverse*(this: var PolyMakeLoopsLink) {.importcpp: "Reverse",
    header: "Poly_MakeLoops.hxx".}
proc isReversed*(this: PolyMakeLoopsLink): bool {.noSideEffect,
    importcpp: "IsReversed", header: "Poly_MakeLoops.hxx".}
proc nullify*(this: var PolyMakeLoopsLink) {.importcpp: "Nullify",
    header: "Poly_MakeLoops.hxx".}
proc isNull*(this: PolyMakeLoopsLink): bool {.noSideEffect, importcpp: "IsNull",
    header: "Poly_MakeLoops.hxx".}
type
  PolyMakeLoopsListOfLink* = NCollectionList[PolyMakeLoopsLink]
  PolyMakeLoopsLoop* = PolyMakeLoopsListOfLink
  PolyMakeLoopsHelper* {.importcpp: "Poly_MakeLoops::Helper",
                        header: "Poly_MakeLoops.hxx", bycopy.} = object ## ! returns the links adjacent to the given node


proc getAdjacentLinks*(this: PolyMakeLoopsHelper; theNode: cint): PolyMakeLoopsListOfLink {.
    noSideEffect, importcpp: "GetAdjacentLinks", header: "Poly_MakeLoops.hxx".}
proc onAddLink*(this: PolyMakeLoopsHelper; a2: cint; a3: PolyMakeLoopsLink) {.
    noSideEffect, importcpp: "OnAddLink", header: "Poly_MakeLoops.hxx".}
  ## theLink
type
  PolyMakeLoopsHeapOfInteger* {.importcpp: "Poly_MakeLoops::HeapOfInteger",
                               header: "Poly_MakeLoops.hxx", bycopy.} = object


proc constructPolyMakeLoopsHeapOfInteger*(theNbPreAllocated: cint = 1): PolyMakeLoopsHeapOfInteger {.
    constructor, importcpp: "Poly_MakeLoops::HeapOfInteger(@)",
    header: "Poly_MakeLoops.hxx".}
proc clear*(this: var PolyMakeLoopsHeapOfInteger) {.importcpp: "Clear",
    header: "Poly_MakeLoops.hxx".}
proc add*(this: var PolyMakeLoopsHeapOfInteger; theValue: cint) {.importcpp: "Add",
    header: "Poly_MakeLoops.hxx".}
proc top*(this: var PolyMakeLoopsHeapOfInteger): cint {.importcpp: "Top",
    header: "Poly_MakeLoops.hxx".}
proc contains*(this: PolyMakeLoopsHeapOfInteger; theValue: cint): bool {.noSideEffect,
    importcpp: "Contains", header: "Poly_MakeLoops.hxx".}
proc remove*(this: var PolyMakeLoopsHeapOfInteger; theValue: cint) {.
    importcpp: "Remove", header: "Poly_MakeLoops.hxx".}
proc isEmpty*(this: var PolyMakeLoopsHeapOfInteger): bool {.importcpp: "IsEmpty",
    header: "Poly_MakeLoops.hxx".}
proc constructPolyMakeLoops*(theHelper: ptr PolyMakeLoopsHelper;
                            theAlloc: Handle[NCollectionBaseAllocator] = 0'i64): PolyMakeLoops {.
    constructor, importcpp: "Poly_MakeLoops(@)", header: "Poly_MakeLoops.hxx".}
proc reset*(this: var PolyMakeLoops; theHelper: ptr PolyMakeLoopsHelper;
           theAlloc: Handle[NCollectionBaseAllocator] = 0'i64) {.
    importcpp: "Reset", header: "Poly_MakeLoops.hxx".}
proc addLink*(this: var PolyMakeLoops; theLink: PolyMakeLoopsLink) {.
    importcpp: "AddLink", header: "Poly_MakeLoops.hxx".}
proc replaceLink*(this: var PolyMakeLoops; theLink: PolyMakeLoopsLink;
                 theNewLink: PolyMakeLoopsLink) {.importcpp: "ReplaceLink",
    header: "Poly_MakeLoops.hxx".}
proc setLinkOrientation*(this: var PolyMakeLoops; theLink: PolyMakeLoopsLink;
                        theOrient: PolyMakeLoopsLinkFlag): PolyMakeLoopsLinkFlag {.
    importcpp: "SetLinkOrientation", header: "Poly_MakeLoops.hxx".}
proc findLink*(this: PolyMakeLoops; theLink: PolyMakeLoopsLink): PolyMakeLoopsLink {.
    noSideEffect, importcpp: "FindLink", header: "Poly_MakeLoops.hxx".}
type
  PolyMakeLoopsResultCode* {.size: sizeof(cint),
                            importcpp: "Poly_MakeLoops::ResultCode",
                            header: "Poly_MakeLoops.hxx".} = enum
    RC_LoopsDone = 1, RC_HangingLinks = 2, RC_Failure = 4


proc perform*(this: var PolyMakeLoops): cint {.importcpp: "Perform",
    header: "Poly_MakeLoops.hxx".}
proc getNbLoops*(this: PolyMakeLoops): cint {.noSideEffect, importcpp: "GetNbLoops",
    header: "Poly_MakeLoops.hxx".}
proc getLoop*(this: PolyMakeLoops; theIndex: cint): PolyMakeLoopsLoop {.noSideEffect,
    importcpp: "GetLoop", header: "Poly_MakeLoops.hxx".}
proc getNbHanging*(this: PolyMakeLoops): cint {.noSideEffect,
    importcpp: "GetNbHanging", header: "Poly_MakeLoops.hxx".}
proc getHangingLinks*(this: PolyMakeLoops; theLinks: var PolyMakeLoopsListOfLink) {.
    noSideEffect, importcpp: "GetHangingLinks", header: "Poly_MakeLoops.hxx".}
## ! Computes a hash code for the given link, in the range [1, theUpperBound]
## ! @param theLink the link which hash code is to be computed
## ! @param theUpperBound the upper bound of the range a computing hash code must be within
## ! @return a computed hash code, in the range [1, theUpperBound]

proc hashCode*(theLink: PolyMakeLoopsLink; theUpperBound: cint): cint =
  discard

## *
##  IsEqual method is needed for maps
##

proc isEqual*(theKey1: PolyMakeLoopsLink; theKey2: PolyMakeLoopsLink): bool =
  discard

## *
##  Implementation for 3D space
##

discard "forward decl of gp_Dir"
type
  PolyMakeLoops3D* {.importcpp: "Poly_MakeLoops3D", header: "Poly_MakeLoops.hxx",
                    bycopy.} = object of PolyMakeLoops ## ! The abstract helper class

  PolyMakeLoops3DHelper* {.importcpp: "Poly_MakeLoops3D::Helper",
                          header: "Poly_MakeLoops.hxx", bycopy.} = object of PolyMakeLoopsHelper ##  all the following methods should return False if
                                                                                          ##  it is impossible to return a valid direction
                                                                                          ## ! returns the tangent vector at the first node of a link


proc getFirstTangent*(this: PolyMakeLoops3DHelper; theLink: Link; theDir: var Dir): bool {.
    noSideEffect, importcpp: "GetFirstTangent", header: "Poly_MakeLoops.hxx".}
proc getLastTangent*(this: PolyMakeLoops3DHelper; theLink: Link; theDir: var Dir): bool {.
    noSideEffect, importcpp: "GetLastTangent", header: "Poly_MakeLoops.hxx".}
proc getNormal*(this: PolyMakeLoops3DHelper; theNode: cint; theDir: var Dir): bool {.
    noSideEffect, importcpp: "GetNormal", header: "Poly_MakeLoops.hxx".}
proc constructPolyMakeLoops3D*(theHelper: ptr PolyMakeLoops3DHelper;
                              theAlloc: Handle[NCollectionBaseAllocator]): PolyMakeLoops3D {.
    constructor, importcpp: "Poly_MakeLoops3D(@)", header: "Poly_MakeLoops.hxx".}
## *
##  Implementation for 2D space
##

discard "forward decl of gp_Dir2d"
type
  PolyMakeLoops2D* {.importcpp: "Poly_MakeLoops2D", header: "Poly_MakeLoops.hxx",
                    bycopy.} = object of PolyMakeLoops ## ! The abstract helper class
                                                  ## ! this flag says that chooseLeftWay must choose the right way instead

  PolyMakeLoops2DHelper* {.importcpp: "Poly_MakeLoops2D::Helper",
                          header: "Poly_MakeLoops.hxx", bycopy.} = object of PolyMakeLoopsHelper ##  all the following methods should return False if
                                                                                          ##  it is impossible to return a valid direction
                                                                                          ## ! returns the tangent vector at the first node of a link


proc getFirstTangent*(this: PolyMakeLoops2DHelper; theLink: Link; theDir: var Dir2d): bool {.
    noSideEffect, importcpp: "GetFirstTangent", header: "Poly_MakeLoops.hxx".}
proc getLastTangent*(this: PolyMakeLoops2DHelper; theLink: Link; theDir: var Dir2d): bool {.
    noSideEffect, importcpp: "GetLastTangent", header: "Poly_MakeLoops.hxx".}
proc constructPolyMakeLoops2D*(theLeftWay: bool;
                              theHelper: ptr PolyMakeLoops2DHelper;
                              theAlloc: Handle[NCollectionBaseAllocator]): PolyMakeLoops2D {.
    constructor, importcpp: "Poly_MakeLoops2D(@)", header: "Poly_MakeLoops.hxx".}

























