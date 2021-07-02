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
                     header: "Poly_CoherentNode.hxx", bycopy.} = object of GpXYZ ##  ---------- PUBLIC METHODS ----------
                                                                          ## *
                                                                          ##  Empty constructor.
                                                                          ##
                                                                          ##  ---------- PROTECTED METHODS ----------
                                                                          ##  ---------- PRIVATE FIELDS ----------


proc constructPolyCoherentNode*(): PolyCoherentNode {.constructor,
    importcpp: "Poly_CoherentNode(@)", header: "Poly_CoherentNode.hxx".}
proc constructPolyCoherentNode*(thePnt: GpXYZ): PolyCoherentNode {.constructor,
    importcpp: "Poly_CoherentNode(@)", header: "Poly_CoherentNode.hxx".}
proc setUV*(this: var PolyCoherentNode; theU: StandardReal; theV: StandardReal) {.
    importcpp: "SetUV", header: "Poly_CoherentNode.hxx".}
proc getU*(this: PolyCoherentNode): StandardReal {.noSideEffect, importcpp: "GetU",
    header: "Poly_CoherentNode.hxx".}
proc getV*(this: PolyCoherentNode): StandardReal {.noSideEffect, importcpp: "GetV",
    header: "Poly_CoherentNode.hxx".}
proc setNormal*(this: var PolyCoherentNode; theVector: GpXYZ) {.
    importcpp: "SetNormal", header: "Poly_CoherentNode.hxx".}
proc hasNormal*(this: PolyCoherentNode): StandardBoolean {.noSideEffect,
    importcpp: "HasNormal", header: "Poly_CoherentNode.hxx".}
proc getNormal*(this: PolyCoherentNode): GpXYZ {.noSideEffect,
    importcpp: "GetNormal", header: "Poly_CoherentNode.hxx".}
proc setIndex*(this: var PolyCoherentNode; theIndex: StandardInteger) {.
    importcpp: "SetIndex", header: "Poly_CoherentNode.hxx".}
proc getIndex*(this: PolyCoherentNode): StandardInteger {.noSideEffect,
    importcpp: "GetIndex", header: "Poly_CoherentNode.hxx".}
proc isFreeNode*(this: PolyCoherentNode): StandardBoolean {.noSideEffect,
    importcpp: "IsFreeNode", header: "Poly_CoherentNode.hxx".}
proc clear*(this: var PolyCoherentNode; a2: Handle[NCollectionBaseAllocator]) {.
    importcpp: "Clear", header: "Poly_CoherentNode.hxx".}
proc addTriangle*(this: var PolyCoherentNode; theTri: PolyCoherentTriangle;
                 theA: Handle[NCollectionBaseAllocator]) {.
    importcpp: "AddTriangle", header: "Poly_CoherentNode.hxx".}
proc removeTriangle*(this: var PolyCoherentNode; theTri: PolyCoherentTriangle;
                    theA: Handle[NCollectionBaseAllocator]): StandardBoolean {.
    importcpp: "RemoveTriangle", header: "Poly_CoherentNode.hxx".}
proc triangleIterator*(this: PolyCoherentNode): Iterator {.noSideEffect,
    importcpp: "TriangleIterator", header: "Poly_CoherentNode.hxx".}
proc dump*(this: PolyCoherentNode; theStream: var StandardOStream) {.noSideEffect,
    importcpp: "Dump", header: "Poly_CoherentNode.hxx".}

