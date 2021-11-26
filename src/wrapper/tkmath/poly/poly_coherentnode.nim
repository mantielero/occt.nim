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

discard "forward decl of NCollection_BaseAllocator"
type
  PolyCoherentNode* {.importcpp: "Poly_CoherentNode",
                     header: "Poly_CoherentNode.hxx", bycopy.} = object of Xyz ##  ---------- PUBLIC METHODS ----------
                                                                        ## *
                                                                        ##  Empty constructor.
                                                                        ##
                                                                        ##  ---------- PROTECTED METHODS ----------
                                                                        ##  ---------- PRIVATE FIELDS ----------


proc newPolyCoherentNode*(): PolyCoherentNode {.cdecl, constructor,
    importcpp: "Poly_CoherentNode(@)", dynlib: tkmath.}
proc newPolyCoherentNode*(thePnt: Xyz): PolyCoherentNode {.cdecl, constructor,
    importcpp: "Poly_CoherentNode(@)", dynlib: tkmath.}
proc setUV*(this: var PolyCoherentNode; theU: cfloat; theV: cfloat) {.cdecl,
    importcpp: "SetUV", dynlib: tkmath.}
proc getU*(this: PolyCoherentNode): cfloat {.noSideEffect, cdecl, importcpp: "GetU",
    dynlib: tkmath.}
proc getV*(this: PolyCoherentNode): cfloat {.noSideEffect, cdecl, importcpp: "GetV",
    dynlib: tkmath.}
proc setNormal*(this: var PolyCoherentNode; theVector: Xyz) {.cdecl,
    importcpp: "SetNormal", dynlib: tkmath.}
proc hasNormal*(this: PolyCoherentNode): bool {.noSideEffect, cdecl,
    importcpp: "HasNormal", dynlib: tkmath.}
proc getNormal*(this: PolyCoherentNode): Xyz {.noSideEffect, cdecl,
    importcpp: "GetNormal", dynlib: tkmath.}
proc setIndex*(this: var PolyCoherentNode; theIndex: cint) {.cdecl,
    importcpp: "SetIndex", dynlib: tkmath.}
proc getIndex*(this: PolyCoherentNode): cint {.noSideEffect, cdecl,
    importcpp: "GetIndex", dynlib: tkmath.}
proc isFreeNode*(this: PolyCoherentNode): bool {.noSideEffect, cdecl,
    importcpp: "IsFreeNode", dynlib: tkmath.}
proc clear*(this: var PolyCoherentNode; a2: Handle[NCollectionBaseAllocator]) {.cdecl,
    importcpp: "Clear", dynlib: tkmath.}
proc addTriangle*(this: var PolyCoherentNode; theTri: PolyCoherentTriangle;
                 theA: Handle[NCollectionBaseAllocator]) {.cdecl,
    importcpp: "AddTriangle", dynlib: tkmath.}
proc removeTriangle*(this: var PolyCoherentNode; theTri: PolyCoherentTriangle;
                    theA: Handle[NCollectionBaseAllocator]): bool {.cdecl,
    importcpp: "RemoveTriangle", dynlib: tkmath.}
proc triangleIterator*(this: PolyCoherentNode): PolyCoherentTriPtrIterator {.noSideEffect, cdecl,
    importcpp: "TriangleIterator", dynlib: tkmath.}
proc dump*(this: PolyCoherentNode; theStream: var StandardOStream) {.noSideEffect,
    cdecl, importcpp: "Dump", dynlib: tkmath.}