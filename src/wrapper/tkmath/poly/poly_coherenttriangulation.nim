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
type
  PolyBaseIteratorOfCoherentTriangle* {.importcpp:"NCollection_Vector<Poly_CoherentTriangle>::Iterator", header:"Poly_CoherentTriangulation.hxx",bycopy.} = object of RootObj
  PolyBaseIteratorOfCoherentNode* {.importcpp:"NCollection_Vector<PolyCoherentNode>::Iterator", header:"Poly_CoherentTriangulation.hxx",bycopy.} = object of RootObj
  PolyBaseIteratorOfCoherentLink* {.importcpp:"NCollection_Vector<PolyCoherentLink>::Iterator", header:"Poly_CoherentTriangulation.hxx",bycopy.} = object of RootObj

## ! Definition of HANDLE object using Standard_DefineHandle.hxx

discard "forward decl of Poly_CoherentTriangulation"
type
  HandlePolyCoherentTriangulation* = Handle[PolyCoherentTriangulation]

## *
##  Triangulation structure that allows to:
##  <ul>
##  <li>Store the connectivity of each triangle with up to 3 neighbouring ones and with the corresponding 3rd nodes on them,</li>
##  <li>Store the connectivity of each node with all triangles that share this node</li>
##  <li>Add nodes and triangles to the structure,</li>
##  <li>Find all triangles sharing a single or a couple of nodes</li>
##  <li>Remove triangles from structure</li>
##  <li>Optionally create Links between pairs of nodes according to the current triangulation.</li>
##  <li>Convert from/to Poly_Triangulation structure.</li>
##  </ul>
##
##  This class is useful for algorithms that need to analyse and/or edit a triangulated mesh -- for example for mesh refining.
##  The connectivity model follows the idea that all Triangles in a mesh should have coherent orientation like on a surface of a solid body.
##  Connections between more than 2 triangles are not suppoorted.
##
##  @section Poly_CoherentTriangulation Architecture
##  The data types used in this structure are:
##  <ul>
##  <li><b>Poly_CoherentNode</b>: Inherits go_XYZ therefore provides the full public API of gp_XYZ.
##  Contains references to all incident triangles. You can add new nodes but you cannot remove existing ones.
##  However each node that has no referenced triangle is considered as "free" (use the method IsFreeNode() to check this).
##  Free nodes are not available to further processing, particularly they are not exported in Poly_Triangulation.
##  </li>
##  <li><b>Poly_CoherentTriangle</b>: Main data type. Refers three Nodes, three connected Triangles, three opposite (connected) Nodes and three Links.
##  If there is boundary then 1, 2 or 3 references to Triangles/connected Nodes/Links are assigned to NULL (for pointers) or -1 (for integer node index).
##
##  You can find a triangle by one node using its triangle iterator or by
##  two nodes - creating a temporary Poly_CoherentLink and calling the method FindTriangle().
##
##  Triangles can be removed but they are never deleted from the containing array. Removed triangles have all nodes equal to -1.
##  You can use the method IsEmpty() to check that.
##  </li>
##  <li><b>Poly_CoherentLink</b>: Auxiliary data type. Normally the array of Links is empty, because for many algorithms it is sufficient to define only Triangles.
##  You can explicitly create the Links at least once, calling the method ComputeLinks(). Each Link is oriented couple of Poly_CoherentNode (directed to the ascending Node index).
##  It refers two connected triangulated Nodes - on the left and on the right,
##  therefore a Poly_CoherentLink instance refers the full set of nodes that constitute a couple of connected Triangles.
##  A boundary Link has either the first (left) or the second (right) connected node index equal to -1.
##
##  When the array of Links is created, all subsequent calls to AddTriangle and RemoveTriangle try to preserve the connectivity Triangle-Link in addition to the connectivity Triangle-Triangle.
##  Particularly, new Links are created by method AddTriangle() and existing ones are removed by method RemoveTriangle(), in each case whenever necessary.
##
##  Similarly to Poly_CoherentTriangle, a Link can be removed but not destroyed separately from others.
##  Removed Link can be recogniosed using the method IsEmpty(). To destroy all Links, call the method ClearLinks(),
##  this method also nullifies Link references in all Triangles.
##  </li>
##  All objects (except for free Nodes and empty Triangles and Links) can be visited by the corresponding Iterator.
##  Direct access is provided only for Nodes (needed to resolve Node indexed commonly used as reference).
##  Triangles and Links can be retrieved by their index only internally, the public API provides only references or pointers to C++ objects.
##  If you need a direct access to Triangles and Links, you can subclass Poly_CoherentTriangulation and use the protected API for your needs.
##
##  Memory management: All data objects are stored in NCollection_Vector containers that prove to be efficient for the performance.
##  In addition references to triangles are stored in ring lists, with an instance of such list per Poly_CoherentNode.
##  These lists are allocated in a memory allocator that is provided in the constructor of Poly_CoherentTriangulation.
##  By default the standard OCCT allocator (aka NCollection_BaseAllocator) is used.
##  But if you need to increase the performance you can use NCollection_IncAllocator instead.
##  </ul>
##

type
  PolyCoherentTriangulation* {.importcpp: "Poly_CoherentTriangulation",
                              header: "Poly_CoherentTriangulation.hxx", bycopy.} = object of StandardTransient ## *
                                                                                                        ##  Subclass Iterator - allows to iterate all triangles skipping those that
                                                                                                        ##  have been removed.
                                                                                                        ##
                                                                                                        ##  ---------- PUBLIC METHODS ----------
                                                                                                        ## *
                                                                                                        ##  Empty constructor.
                                                                                                        ##
                                                                                                        ##  ---------- PROTECTED METHODS ----------
                                                                                                        ##  ---------- PROTECTED FIELDS ----------
                                                                                                        ##  Declaration of CASCADE RTTI

  PolyCoherentTriangulationIteratorOfTriangle* {.
      importcpp: "Poly_CoherentTriangulation::IteratorOfTriangle",
      header: "Poly_CoherentTriangulation.hxx", bycopy.} = object of PolyBaseIteratorOfCoherentTriangle ##
                                                                                                 ## !
                                                                                                 ## Constructor


proc newPolyCoherentTriangulationIteratorOfTriangle*(
    theTri: Handle[PolyCoherentTriangulation]): PolyCoherentTriangulationIteratorOfTriangle {.
    cdecl, constructor,
    importcpp: "Poly_CoherentTriangulation::IteratorOfTriangle(@)", header: "Poly_CoherentTriangulation.hxx".}
proc next*(this: var PolyCoherentTriangulationIteratorOfTriangle) {.cdecl,
    importcpp: "Next", header: "Poly_CoherentTriangulation.hxx".}
type
  PolyCoherentTriangulationIteratorOfNode* {.
      importcpp: "Poly_CoherentTriangulation::IteratorOfNode",
      header: "Poly_CoherentTriangulation.hxx", bycopy.} = object of PolyBaseIteratorOfCoherentNode ##
                                                                                             ## !
                                                                                             ## Constructor


proc newPolyCoherentTriangulationIteratorOfNode*(
    theTri: Handle[PolyCoherentTriangulation]): PolyCoherentTriangulationIteratorOfNode {.
    cdecl, constructor,
    importcpp: "Poly_CoherentTriangulation::IteratorOfNode(@)", header: "Poly_CoherentTriangulation.hxx".}
proc next*(this: var PolyCoherentTriangulationIteratorOfNode) {.cdecl,
    importcpp: "Next", header: "Poly_CoherentTriangulation.hxx".}
type
  PolyCoherentTriangulationIteratorOfLink* {.
      importcpp: "Poly_CoherentTriangulation::IteratorOfLink",
      header: "Poly_CoherentTriangulation.hxx", bycopy.} = object of PolyBaseIteratorOfCoherentLink ##
                                                                                             ## !
                                                                                             ## Constructor


proc newPolyCoherentTriangulationIteratorOfLink*(
    theTri: Handle[PolyCoherentTriangulation]): PolyCoherentTriangulationIteratorOfLink {.
    cdecl, constructor,
    importcpp: "Poly_CoherentTriangulation::IteratorOfLink(@)", header: "Poly_CoherentTriangulation.hxx".}
proc next*(this: var PolyCoherentTriangulationIteratorOfLink) {.cdecl,
    importcpp: "Next", header: "Poly_CoherentTriangulation.hxx".}
type
  PolyCoherentTriangulationTwoIntegers* {.
      importcpp: "Poly_CoherentTriangulation::TwoIntegers",
      header: "Poly_CoherentTriangulation.hxx", bycopy.} = object
    myValue* {.importc: "myValue".}: array[2, cint]


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
proc setNode*(this: var PolyCoherentTriangulation; thePnt: Xyz; `iN`: cint = -1): cint {.
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