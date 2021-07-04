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

import
  Poly_Triangulation, Poly_CoherentNode, Poly_CoherentTriangle, Poly_CoherentLink,
  ../NCollection/NCollection_Vector

discard "forward decl of Poly_CoherentTriangulation"
discard "forward decl of NCollection_List"
type
  Poly_BaseIteratorOfCoherentTriangle* = Iterator[Poly_CoherentTriangle]
  Poly_BaseIteratorOfCoherentNode* = Iterator[Poly_CoherentNode]
  Poly_BaseIteratorOfCoherentLink* = Iterator[Poly_CoherentLink]

## ! Definition of HANDLE object using Standard_DefineHandle.hxx

import
  ../Standard/Standard_Type

discard "forward decl of Poly_CoherentTriangulation"
discard "forward decl of Poly_CoherentTriangulation"
type
  Handle_Poly_CoherentTriangulation* = handle[Poly_CoherentTriangulation]

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
  Poly_CoherentTriangulation* {.importcpp: "Poly_CoherentTriangulation",
                               header: "Poly_CoherentTriangulation.hxx", bycopy.} = object of Standard_Transient ## *
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

  Poly_CoherentTriangulationIteratorOfTriangle* {.
      importcpp: "Poly_CoherentTriangulation::IteratorOfTriangle",
      header: "Poly_CoherentTriangulation.hxx", bycopy.} = object of Poly_BaseIteratorOfCoherentTriangle ##
                                                                                                  ## !
                                                                                                  ## Constructor


proc constructPoly_CoherentTriangulationIteratorOfTriangle*(
    theTri: handle[Poly_CoherentTriangulation]): Poly_CoherentTriangulationIteratorOfTriangle {.
    constructor, importcpp: "Poly_CoherentTriangulation::IteratorOfTriangle(@)",
    header: "Poly_CoherentTriangulation.hxx".}
proc Next*(this: var Poly_CoherentTriangulationIteratorOfTriangle) {.
    importcpp: "Next", header: "Poly_CoherentTriangulation.hxx".}
type
  Poly_CoherentTriangulationIteratorOfNode* {.
      importcpp: "Poly_CoherentTriangulation::IteratorOfNode",
      header: "Poly_CoherentTriangulation.hxx", bycopy.} = object of Poly_BaseIteratorOfCoherentNode ##
                                                                                              ## !
                                                                                              ## Constructor


proc constructPoly_CoherentTriangulationIteratorOfNode*(
    theTri: handle[Poly_CoherentTriangulation]): Poly_CoherentTriangulationIteratorOfNode {.
    constructor, importcpp: "Poly_CoherentTriangulation::IteratorOfNode(@)",
    header: "Poly_CoherentTriangulation.hxx".}
proc Next*(this: var Poly_CoherentTriangulationIteratorOfNode) {.importcpp: "Next",
    header: "Poly_CoherentTriangulation.hxx".}
type
  Poly_CoherentTriangulationIteratorOfLink* {.
      importcpp: "Poly_CoherentTriangulation::IteratorOfLink",
      header: "Poly_CoherentTriangulation.hxx", bycopy.} = object of Poly_BaseIteratorOfCoherentLink ##
                                                                                              ## !
                                                                                              ## Constructor


proc constructPoly_CoherentTriangulationIteratorOfLink*(
    theTri: handle[Poly_CoherentTriangulation]): Poly_CoherentTriangulationIteratorOfLink {.
    constructor, importcpp: "Poly_CoherentTriangulation::IteratorOfLink(@)",
    header: "Poly_CoherentTriangulation.hxx".}
proc Next*(this: var Poly_CoherentTriangulationIteratorOfLink) {.importcpp: "Next",
    header: "Poly_CoherentTriangulation.hxx".}
type
  Poly_CoherentTriangulationTwoIntegers* {.
      importcpp: "Poly_CoherentTriangulation::TwoIntegers",
      header: "Poly_CoherentTriangulation.hxx", bycopy.} = object
    myValue* {.importc: "myValue".}: array[2, Standard_Integer]


proc constructPoly_CoherentTriangulationTwoIntegers*(): Poly_CoherentTriangulationTwoIntegers {.
    constructor, importcpp: "Poly_CoherentTriangulation::TwoIntegers(@)",
    header: "Poly_CoherentTriangulation.hxx".}
proc constructPoly_CoherentTriangulationTwoIntegers*(i0: Standard_Integer;
    i1: Standard_Integer): Poly_CoherentTriangulationTwoIntegers {.constructor,
    importcpp: "Poly_CoherentTriangulation::TwoIntegers(@)",
    header: "Poly_CoherentTriangulation.hxx".}
proc constructPoly_CoherentTriangulation*(
    theAlloc: handle[NCollection_BaseAllocator] = 0L'i64): Poly_CoherentTriangulation {.
    constructor, importcpp: "Poly_CoherentTriangulation(@)",
    header: "Poly_CoherentTriangulation.hxx".}
proc constructPoly_CoherentTriangulation*(
    theTriangulation: handle[Poly_Triangulation];
    theAlloc: handle[NCollection_BaseAllocator] = 0L'i64): Poly_CoherentTriangulation {.
    constructor, importcpp: "Poly_CoherentTriangulation(@)",
    header: "Poly_CoherentTriangulation.hxx".}
proc destroyPoly_CoherentTriangulation*(this: var Poly_CoherentTriangulation) {.
    importcpp: "#.~Poly_CoherentTriangulation()",
    header: "Poly_CoherentTriangulation.hxx".}
proc GetTriangulation*(this: Poly_CoherentTriangulation): handle[Poly_Triangulation] {.
    noSideEffect, importcpp: "GetTriangulation",
    header: "Poly_CoherentTriangulation.hxx".}
proc RemoveDegenerated*(this: var Poly_CoherentTriangulation; theTol: Standard_Real;
    pLstRemovedNode: ptr NCollection_List[Poly_CoherentTriangulationTwoIntegers] = 0L'i64): Standard_Boolean {.
    importcpp: "RemoveDegenerated", header: "Poly_CoherentTriangulation.hxx".}
proc GetFreeNodes*(this: Poly_CoherentTriangulation;
                  lstNodes: var NCollection_List[Standard_Integer]): Standard_Boolean {.
    noSideEffect, importcpp: "GetFreeNodes",
    header: "Poly_CoherentTriangulation.hxx".}
proc MaxNode*(this: Poly_CoherentTriangulation): Standard_Integer {.noSideEffect,
    importcpp: "MaxNode", header: "Poly_CoherentTriangulation.hxx".}
proc MaxTriangle*(this: Poly_CoherentTriangulation): Standard_Integer {.
    noSideEffect, importcpp: "MaxTriangle",
    header: "Poly_CoherentTriangulation.hxx".}
proc SetDeflection*(this: var Poly_CoherentTriangulation; theDefl: Standard_Real) {.
    importcpp: "SetDeflection", header: "Poly_CoherentTriangulation.hxx".}
proc Deflection*(this: Poly_CoherentTriangulation): Standard_Real {.noSideEffect,
    importcpp: "Deflection", header: "Poly_CoherentTriangulation.hxx".}
proc SetNode*(this: var Poly_CoherentTriangulation; thePnt: gp_XYZ;
             `iN`: Standard_Integer = -1): Standard_Integer {.importcpp: "SetNode",
    header: "Poly_CoherentTriangulation.hxx".}
proc Node*(this: Poly_CoherentTriangulation; i: Standard_Integer): Poly_CoherentNode {.
    noSideEffect, importcpp: "Node", header: "Poly_CoherentTriangulation.hxx".}
proc ChangeNode*(this: var Poly_CoherentTriangulation; i: Standard_Integer): var Poly_CoherentNode {.
    importcpp: "ChangeNode", header: "Poly_CoherentTriangulation.hxx".}
proc NNodes*(this: Poly_CoherentTriangulation): Standard_Integer {.noSideEffect,
    importcpp: "NNodes", header: "Poly_CoherentTriangulation.hxx".}
proc Triangle*(this: Poly_CoherentTriangulation; i: Standard_Integer): Poly_CoherentTriangle {.
    noSideEffect, importcpp: "Triangle", header: "Poly_CoherentTriangulation.hxx".}
proc NTriangles*(this: Poly_CoherentTriangulation): Standard_Integer {.noSideEffect,
    importcpp: "NTriangles", header: "Poly_CoherentTriangulation.hxx".}
proc NLinks*(this: Poly_CoherentTriangulation): Standard_Integer {.noSideEffect,
    importcpp: "NLinks", header: "Poly_CoherentTriangulation.hxx".}
proc RemoveTriangle*(this: var Poly_CoherentTriangulation;
                    theTr: var Poly_CoherentTriangle): Standard_Boolean {.
    importcpp: "RemoveTriangle", header: "Poly_CoherentTriangulation.hxx".}
proc RemoveLink*(this: var Poly_CoherentTriangulation;
                theLink: var Poly_CoherentLink) {.importcpp: "RemoveLink",
    header: "Poly_CoherentTriangulation.hxx".}
proc AddTriangle*(this: var Poly_CoherentTriangulation; iNode0: Standard_Integer;
                 iNode1: Standard_Integer; iNode2: Standard_Integer): ptr Poly_CoherentTriangle {.
    importcpp: "AddTriangle", header: "Poly_CoherentTriangulation.hxx".}
proc ReplaceNodes*(this: var Poly_CoherentTriangulation;
                  theTriangle: var Poly_CoherentTriangle; iNode0: Standard_Integer;
                  iNode1: Standard_Integer; iNode2: Standard_Integer): Standard_Boolean {.
    importcpp: "ReplaceNodes", header: "Poly_CoherentTriangulation.hxx".}
proc AddLink*(this: var Poly_CoherentTriangulation; theTri: Poly_CoherentTriangle;
             theConn: Standard_Integer): ptr Poly_CoherentLink {.
    importcpp: "AddLink", header: "Poly_CoherentTriangulation.hxx".}
proc FindTriangle*(this: Poly_CoherentTriangulation; theLink: Poly_CoherentLink;
                  pTri: array[2, ptr Poly_CoherentTriangle]): Standard_Boolean {.
    noSideEffect, importcpp: "FindTriangle",
    header: "Poly_CoherentTriangulation.hxx".}
proc ComputeLinks*(this: var Poly_CoherentTriangulation): Standard_Integer {.
    importcpp: "ComputeLinks", header: "Poly_CoherentTriangulation.hxx".}
proc ClearLinks*(this: var Poly_CoherentTriangulation) {.importcpp: "ClearLinks",
    header: "Poly_CoherentTriangulation.hxx".}
proc Allocator*(this: Poly_CoherentTriangulation): handle[NCollection_BaseAllocator] {.
    noSideEffect, importcpp: "Allocator", header: "Poly_CoherentTriangulation.hxx".}
proc Clone*(this: Poly_CoherentTriangulation;
           theAlloc: handle[NCollection_BaseAllocator]): handle[
    Poly_CoherentTriangulation] {.noSideEffect, importcpp: "Clone",
                                 header: "Poly_CoherentTriangulation.hxx".}
proc Dump*(this: Poly_CoherentTriangulation; a2: var Standard_OStream) {.noSideEffect,
    importcpp: "Dump", header: "Poly_CoherentTriangulation.hxx".}
type
  Poly_CoherentTriangulationbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "Poly_CoherentTriangulation::get_type_name(@)",
                              header: "Poly_CoherentTriangulation.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Poly_CoherentTriangulation::get_type_descriptor(@)",
    header: "Poly_CoherentTriangulation.hxx".}
proc DynamicType*(this: Poly_CoherentTriangulation): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "Poly_CoherentTriangulation.hxx".}
import
  Poly_CoherentTriangulation
