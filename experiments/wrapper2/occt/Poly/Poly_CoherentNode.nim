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
  ../gp/gp_XYZ, Poly_CoherentTriPtr, ../Precision/Precision

discard "forward decl of NCollection_BaseAllocator"
type
  Poly_CoherentNode* {.importcpp: "Poly_CoherentNode",
                      header: "Poly_CoherentNode.hxx", bycopy.} = object of gp_XYZ ##  ---------- PUBLIC METHODS ----------
                                                                            ## *
                                                                            ##  Empty constructor.
                                                                            ##
                                                                            ##  ---------- PROTECTED METHODS ----------
                                                                            ##  ---------- PRIVATE FIELDS ----------


proc constructPoly_CoherentNode*(): Poly_CoherentNode {.constructor,
    importcpp: "Poly_CoherentNode(@)", header: "Poly_CoherentNode.hxx".}
proc constructPoly_CoherentNode*(thePnt: gp_XYZ): Poly_CoherentNode {.constructor,
    importcpp: "Poly_CoherentNode(@)", header: "Poly_CoherentNode.hxx".}
proc SetUV*(this: var Poly_CoherentNode; theU: Standard_Real; theV: Standard_Real) {.
    importcpp: "SetUV", header: "Poly_CoherentNode.hxx".}
proc GetU*(this: Poly_CoherentNode): Standard_Real {.noSideEffect, importcpp: "GetU",
    header: "Poly_CoherentNode.hxx".}
proc GetV*(this: Poly_CoherentNode): Standard_Real {.noSideEffect, importcpp: "GetV",
    header: "Poly_CoherentNode.hxx".}
proc SetNormal*(this: var Poly_CoherentNode; theVector: gp_XYZ) {.
    importcpp: "SetNormal", header: "Poly_CoherentNode.hxx".}
proc HasNormal*(this: Poly_CoherentNode): Standard_Boolean {.noSideEffect,
    importcpp: "HasNormal", header: "Poly_CoherentNode.hxx".}
proc GetNormal*(this: Poly_CoherentNode): gp_XYZ {.noSideEffect,
    importcpp: "GetNormal", header: "Poly_CoherentNode.hxx".}
proc SetIndex*(this: var Poly_CoherentNode; theIndex: Standard_Integer) {.
    importcpp: "SetIndex", header: "Poly_CoherentNode.hxx".}
proc GetIndex*(this: Poly_CoherentNode): Standard_Integer {.noSideEffect,
    importcpp: "GetIndex", header: "Poly_CoherentNode.hxx".}
proc IsFreeNode*(this: Poly_CoherentNode): Standard_Boolean {.noSideEffect,
    importcpp: "IsFreeNode", header: "Poly_CoherentNode.hxx".}
proc Clear*(this: var Poly_CoherentNode; a2: handle[NCollection_BaseAllocator]) {.
    importcpp: "Clear", header: "Poly_CoherentNode.hxx".}
proc AddTriangle*(this: var Poly_CoherentNode; theTri: Poly_CoherentTriangle;
                 theA: handle[NCollection_BaseAllocator]) {.
    importcpp: "AddTriangle", header: "Poly_CoherentNode.hxx".}
proc RemoveTriangle*(this: var Poly_CoherentNode; theTri: Poly_CoherentTriangle;
                    theA: handle[NCollection_BaseAllocator]): Standard_Boolean {.
    importcpp: "RemoveTriangle", header: "Poly_CoherentNode.hxx".}
proc TriangleIterator*(this: Poly_CoherentNode): Iterator {.noSideEffect,
    importcpp: "TriangleIterator", header: "Poly_CoherentNode.hxx".}
proc Dump*(this: Poly_CoherentNode; theStream: var Standard_OStream) {.noSideEffect,
    importcpp: "Dump", header: "Poly_CoherentNode.hxx".}