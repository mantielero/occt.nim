##  Created on: 1993-04-29
##  Created by: Yves FRICAUD
##  Copyright (c) 1993-1999 Matra Datavision
##  Copyright (c) 1999-2014 OPEN CASCADE SAS
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
  ../Standard/Standard, ../Standard/Standard_Type, MAT_DataMapOfIntegerArc,
  MAT_DataMapOfIntegerBasicElt, MAT_DataMapOfIntegerNode,
  ../Standard/Standard_Integer, ../Standard/Standard_Transient,
  ../Standard/Standard_Boolean

discard "forward decl of MAT_ListOfBisector"
discard "forward decl of MAT_Arc"
discard "forward decl of MAT_BasicElt"
discard "forward decl of MAT_Node"
discard "forward decl of MAT_Graph"
discard "forward decl of MAT_Graph"
type
  Handle_MAT_Graph* = handle[MAT_Graph]

## ! The Class Graph permits the exploration of the
## ! Bisector Locus.

type
  MAT_Graph* {.importcpp: "MAT_Graph", header: "MAT_Graph.hxx", bycopy.} = object of Standard_Transient ##
                                                                                              ## !
                                                                                              ## Empty
                                                                                              ## constructor.
                                                                                              ##
                                                                                              ## !
                                                                                              ## Merge
                                                                                              ## two
                                                                                              ## Arcs.
                                                                                              ## the
                                                                                              ## second
                                                                                              ## node
                                                                                              ## of
                                                                                              ## <Arc2>
                                                                                              ## becomes
                                                                                              ##
                                                                                              ## !
                                                                                              ## the
                                                                                              ## first
                                                                                              ## node
                                                                                              ## of
                                                                                              ## <Arc1>.
                                                                                              ## Update
                                                                                              ## of
                                                                                              ## the
                                                                                              ## first
                                                                                              ##
                                                                                              ## !
                                                                                              ## node
                                                                                              ## and
                                                                                              ## the
                                                                                              ## neighbours
                                                                                              ## of
                                                                                              ## <Arc1>.
                                                                                              ##
                                                                                              ## !
                                                                                              ## <Arc2>
                                                                                              ## is
                                                                                              ## eliminated.


proc constructMAT_Graph*(): MAT_Graph {.constructor, importcpp: "MAT_Graph(@)",
                                     header: "MAT_Graph.hxx".}
proc Perform*(this: var MAT_Graph; SemiInfinite: Standard_Boolean;
             TheRoots: handle[MAT_ListOfBisector]; NbBasicElts: Standard_Integer;
             NbArcs: Standard_Integer) {.importcpp: "Perform",
                                       header: "MAT_Graph.hxx".}
proc Arc*(this: MAT_Graph; Index: Standard_Integer): handle[MAT_Arc] {.noSideEffect,
    importcpp: "Arc", header: "MAT_Graph.hxx".}
proc BasicElt*(this: MAT_Graph; Index: Standard_Integer): handle[MAT_BasicElt] {.
    noSideEffect, importcpp: "BasicElt", header: "MAT_Graph.hxx".}
proc Node*(this: MAT_Graph; Index: Standard_Integer): handle[MAT_Node] {.noSideEffect,
    importcpp: "Node", header: "MAT_Graph.hxx".}
proc NumberOfArcs*(this: MAT_Graph): Standard_Integer {.noSideEffect,
    importcpp: "NumberOfArcs", header: "MAT_Graph.hxx".}
proc NumberOfNodes*(this: MAT_Graph): Standard_Integer {.noSideEffect,
    importcpp: "NumberOfNodes", header: "MAT_Graph.hxx".}
proc NumberOfBasicElts*(this: MAT_Graph): Standard_Integer {.noSideEffect,
    importcpp: "NumberOfBasicElts", header: "MAT_Graph.hxx".}
proc NumberOfInfiniteNodes*(this: MAT_Graph): Standard_Integer {.noSideEffect,
    importcpp: "NumberOfInfiniteNodes", header: "MAT_Graph.hxx".}
proc FusionOfBasicElts*(this: var MAT_Graph; IndexElt1: Standard_Integer;
                       IndexElt2: Standard_Integer;
                       MergeArc1: var Standard_Boolean;
                       GeomIndexArc1: var Standard_Integer;
                       GeomIndexArc2: var Standard_Integer;
                       MergeArc2: var Standard_Boolean;
                       GeomIndexArc3: var Standard_Integer;
                       GeomIndexArc4: var Standard_Integer) {.
    importcpp: "FusionOfBasicElts", header: "MAT_Graph.hxx".}
proc CompactArcs*(this: var MAT_Graph) {.importcpp: "CompactArcs",
                                     header: "MAT_Graph.hxx".}
proc CompactNodes*(this: var MAT_Graph) {.importcpp: "CompactNodes",
                                      header: "MAT_Graph.hxx".}
proc ChangeBasicElts*(this: var MAT_Graph; NewMap: MAT_DataMapOfIntegerBasicElt) {.
    importcpp: "ChangeBasicElts", header: "MAT_Graph.hxx".}
proc ChangeBasicElt*(this: var MAT_Graph; Index: Standard_Integer): handle[
    MAT_BasicElt] {.importcpp: "ChangeBasicElt", header: "MAT_Graph.hxx".}
type
  MAT_Graphbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "MAT_Graph::get_type_name(@)",
                              header: "MAT_Graph.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "MAT_Graph::get_type_descriptor(@)", header: "MAT_Graph.hxx".}
proc DynamicType*(this: MAT_Graph): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "MAT_Graph.hxx".}