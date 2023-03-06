import poly_types
import ../standard/standard_types
import ../gp/gp_types
import ../ncollection/ncollection_types

##  Created on: 2007-11-24
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

discard "forward decl of Poly_CoherentTriangulation"
discard "forward decl of NCollection_List"


discard "forward decl of Poly_CoherentTriangulation"





proc newPolyCoherentTriangulationIteratorOfTriangle*(
    theTri: Handle[PolyCoherentTriangulation]): PolyCoherentTriangulationIteratorOfTriangle {.
    cdecl, constructor,
    importcpp: "Poly_CoherentTriangulation::IteratorOfTriangle(@)", header: "Poly_CoherentTriangulation.hxx".}
proc next*(this: var PolyCoherentTriangulationIteratorOfTriangle) {.cdecl,
    importcpp: "Next", header: "Poly_CoherentTriangulation.hxx".}


proc newPolyCoherentTriangulationIteratorOfNode*(
    theTri: Handle[PolyCoherentTriangulation]): PolyCoherentTriangulationIteratorOfNode {.
    cdecl, constructor,
    importcpp: "Poly_CoherentTriangulation::IteratorOfNode(@)", header: "Poly_CoherentTriangulation.hxx".}
proc next*(this: var PolyCoherentTriangulationIteratorOfNode) {.cdecl,
    importcpp: "Next", header: "Poly_CoherentTriangulation.hxx".}


proc newPolyCoherentTriangulationIteratorOfLink*(
    theTri: Handle[PolyCoherentTriangulation]): PolyCoherentTriangulationIteratorOfLink {.
    cdecl, constructor,
    importcpp: "Poly_CoherentTriangulation::IteratorOfLink(@)", header: "Poly_CoherentTriangulation.hxx".}
proc next*(this: var PolyCoherentTriangulationIteratorOfLink) {.cdecl,
    importcpp: "Next", header: "Poly_CoherentTriangulation.hxx".}


proc newPolyCoherentTriangulationTwoIntegers*(): PolyCoherentTriangulationTwoIntegers {.
    cdecl, constructor, importcpp: "Poly_CoherentTriangulation::TwoIntegers(@)",
    header: "Poly_CoherentTriangulation.hxx".}
proc newPolyCoherentTriangulationTwoIntegers*(i0: cint; i1: cint): PolyCoherentTriangulationTwoIntegers {.
    cdecl, constructor, importcpp: "Poly_CoherentTriangulation::TwoIntegers(@)",
    header: "Poly_CoherentTriangulation.hxx".}
proc newPolyCoherentTriangulation*(theAlloc: Handle[NCollectionBaseAllocator] = cast[Handle[NCollectionBaseAllocator]](0)): PolyCoherentTriangulation {.
    cdecl, constructor, importcpp: "Poly_CoherentTriangulation(@)", header: "Poly_CoherentTriangulation.hxx".}
proc newPolyCoherentTriangulation*(theTriangulation: Handle[PolyTriangulation];
    theAlloc: Handle[NCollectionBaseAllocator] = cast[Handle[NCollectionBaseAllocator]](0)): PolyCoherentTriangulation {.
    cdecl, constructor, importcpp: "Poly_CoherentTriangulation(@)", header: "Poly_CoherentTriangulation.hxx".}
proc destroyPolyCoherentTriangulation*(this: var PolyCoherentTriangulation) {.cdecl,
    importcpp: "#.~Poly_CoherentTriangulation()", header: "Poly_CoherentTriangulation.hxx".}
proc getTriangulation*(this: PolyCoherentTriangulation): Handle[PolyTriangulation] {.
    noSideEffect, cdecl, importcpp: "GetTriangulation", header: "Poly_CoherentTriangulation.hxx".}
proc removeDegenerated*(this: var PolyCoherentTriangulation; theTol: cfloat;
    pLstRemovedNode: ptr NCollectionList[PolyCoherentTriangulationTwoIntegers] = cast[ptr NCollectionList[PolyCoherentTriangulationTwoIntegers]](0)): bool {.
    cdecl, importcpp: "RemoveDegenerated", header: "Poly_CoherentTriangulation.hxx".}
proc getFreeNodes*(this: PolyCoherentTriangulation;
                  lstNodes: var NCollectionList[cint]): bool {.noSideEffect, cdecl,
    importcpp: "GetFreeNodes", header: "Poly_CoherentTriangulation.hxx".}
proc maxNode*(this: PolyCoherentTriangulation): cint {.noSideEffect, cdecl,
    importcpp: "MaxNode", header: "Poly_CoherentTriangulation.hxx".}
proc maxTriangle*(this: PolyCoherentTriangulation): cint {.noSideEffect, cdecl,
    importcpp: "MaxTriangle", header: "Poly_CoherentTriangulation.hxx".}
proc setDeflection*(this: var PolyCoherentTriangulation; theDefl: cfloat) {.cdecl,
    importcpp: "SetDeflection", header: "Poly_CoherentTriangulation.hxx".}
proc deflection*(this: PolyCoherentTriangulation): cfloat {.noSideEffect, cdecl,
    importcpp: "Deflection", header: "Poly_CoherentTriangulation.hxx".}
proc setNode*(this: var PolyCoherentTriangulation; thePnt: XyzObj; `iN`: cint = -1): cint {.
    cdecl, importcpp: "SetNode", header: "Poly_CoherentTriangulation.hxx".}
proc node*(this: PolyCoherentTriangulation; i: cint): PolyCoherentNode {.noSideEffect,
    cdecl, importcpp: "Node", header: "Poly_CoherentTriangulation.hxx".}
proc changeNode*(this: var PolyCoherentTriangulation; i: cint): var PolyCoherentNode {.
    cdecl, importcpp: "ChangeNode", header: "Poly_CoherentTriangulation.hxx".}
proc nNodes*(this: PolyCoherentTriangulation): cint {.noSideEffect, cdecl,
    importcpp: "NNodes", header: "Poly_CoherentTriangulation.hxx".}
proc triangle*(this: PolyCoherentTriangulation; i: cint): PolyCoherentTriangle {.
    noSideEffect, cdecl, importcpp: "Triangle", header: "Poly_CoherentTriangulation.hxx".}
proc nTriangles*(this: PolyCoherentTriangulation): cint {.noSideEffect, cdecl,
    importcpp: "NTriangles", header: "Poly_CoherentTriangulation.hxx".}
proc nLinks*(this: PolyCoherentTriangulation): cint {.noSideEffect, cdecl,
    importcpp: "NLinks", header: "Poly_CoherentTriangulation.hxx".}
proc removeTriangle*(this: var PolyCoherentTriangulation;
                    theTr: var PolyCoherentTriangle): bool {.cdecl,
    importcpp: "RemoveTriangle", header: "Poly_CoherentTriangulation.hxx".}
proc removeLink*(this: var PolyCoherentTriangulation; theLink: var PolyCoherentLink) {.
    cdecl, importcpp: "RemoveLink", header: "Poly_CoherentTriangulation.hxx".}
proc addTriangle*(this: var PolyCoherentTriangulation; iNode0: cint; iNode1: cint;
                 iNode2: cint): ptr PolyCoherentTriangle {.cdecl,
    importcpp: "AddTriangle", header: "Poly_CoherentTriangulation.hxx".}
proc replaceNodes*(this: var PolyCoherentTriangulation;
                  theTriangle: var PolyCoherentTriangle; iNode0: cint; iNode1: cint;
                  iNode2: cint): bool {.cdecl, importcpp: "ReplaceNodes",
                                     header: "Poly_CoherentTriangulation.hxx".}
proc addLink*(this: var PolyCoherentTriangulation; theTri: PolyCoherentTriangle;
             theConn: cint): ptr PolyCoherentLink {.cdecl, importcpp: "AddLink",
    header: "Poly_CoherentTriangulation.hxx".}
proc findTriangle*(this: PolyCoherentTriangulation; theLink: PolyCoherentLink;
                  pTri: array[2, ptr PolyCoherentTriangle]): bool {.noSideEffect,
    cdecl, importcpp: "FindTriangle", header: "Poly_CoherentTriangulation.hxx".}
proc computeLinks*(this: var PolyCoherentTriangulation): cint {.cdecl,
    importcpp: "ComputeLinks", header: "Poly_CoherentTriangulation.hxx".}
proc clearLinks*(this: var PolyCoherentTriangulation) {.cdecl,
    importcpp: "ClearLinks", header: "Poly_CoherentTriangulation.hxx".}
proc allocator*(this: PolyCoherentTriangulation): Handle[NCollectionBaseAllocator] {.
    noSideEffect, cdecl, importcpp: "Allocator", header: "Poly_CoherentTriangulation.hxx".}
proc clone*(this: PolyCoherentTriangulation;
           theAlloc: Handle[NCollectionBaseAllocator]): Handle[
    PolyCoherentTriangulation] {.noSideEffect, cdecl, importcpp: "Clone",
                                header: "Poly_CoherentTriangulation.hxx".}
proc dump*(this: PolyCoherentTriangulation; a2: var StandardOStream) {.noSideEffect,
    cdecl, importcpp: "Dump", header: "Poly_CoherentTriangulation.hxx".}
