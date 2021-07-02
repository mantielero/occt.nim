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

discard "forward decl of MAT_ListOfBisector"
discard "forward decl of MAT_Arc"
discard "forward decl of MAT_BasicElt"
discard "forward decl of MAT_Node"
discard "forward decl of MAT_Graph"
discard "forward decl of MAT_Graph"
type
  HandleMAT_Graph* = Handle[MAT_Graph]

## ! The Class Graph permits the exploration of the
## ! Bisector Locus.

type
  MAT_Graph* {.importcpp: "MAT_Graph", header: "MAT_Graph.hxx", bycopy.} = object of StandardTransient ##
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
proc perform*(this: var MAT_Graph; semiInfinite: StandardBoolean;
             theRoots: Handle[MAT_ListOfBisector]; nbBasicElts: StandardInteger;
             nbArcs: StandardInteger) {.importcpp: "Perform",
                                      header: "MAT_Graph.hxx".}
proc arc*(this: MAT_Graph; index: StandardInteger): Handle[MAT_Arc] {.noSideEffect,
    importcpp: "Arc", header: "MAT_Graph.hxx".}
proc basicElt*(this: MAT_Graph; index: StandardInteger): Handle[MAT_BasicElt] {.
    noSideEffect, importcpp: "BasicElt", header: "MAT_Graph.hxx".}
proc node*(this: MAT_Graph; index: StandardInteger): Handle[MAT_Node] {.noSideEffect,
    importcpp: "Node", header: "MAT_Graph.hxx".}
proc numberOfArcs*(this: MAT_Graph): StandardInteger {.noSideEffect,
    importcpp: "NumberOfArcs", header: "MAT_Graph.hxx".}
proc numberOfNodes*(this: MAT_Graph): StandardInteger {.noSideEffect,
    importcpp: "NumberOfNodes", header: "MAT_Graph.hxx".}
proc numberOfBasicElts*(this: MAT_Graph): StandardInteger {.noSideEffect,
    importcpp: "NumberOfBasicElts", header: "MAT_Graph.hxx".}
proc numberOfInfiniteNodes*(this: MAT_Graph): StandardInteger {.noSideEffect,
    importcpp: "NumberOfInfiniteNodes", header: "MAT_Graph.hxx".}
proc fusionOfBasicElts*(this: var MAT_Graph; indexElt1: StandardInteger;
                       indexElt2: StandardInteger; mergeArc1: var StandardBoolean;
                       geomIndexArc1: var StandardInteger;
                       geomIndexArc2: var StandardInteger;
                       mergeArc2: var StandardBoolean;
                       geomIndexArc3: var StandardInteger;
                       geomIndexArc4: var StandardInteger) {.
    importcpp: "FusionOfBasicElts", header: "MAT_Graph.hxx".}
proc compactArcs*(this: var MAT_Graph) {.importcpp: "CompactArcs",
                                     header: "MAT_Graph.hxx".}
proc compactNodes*(this: var MAT_Graph) {.importcpp: "CompactNodes",
                                      header: "MAT_Graph.hxx".}
proc changeBasicElts*(this: var MAT_Graph; newMap: MAT_DataMapOfIntegerBasicElt) {.
    importcpp: "ChangeBasicElts", header: "MAT_Graph.hxx".}
proc changeBasicElt*(this: var MAT_Graph; index: StandardInteger): Handle[MAT_BasicElt] {.
    importcpp: "ChangeBasicElt", header: "MAT_Graph.hxx".}
type
  MAT_GraphbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "MAT_Graph::get_type_name(@)",
                            header: "MAT_Graph.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "MAT_Graph::get_type_descriptor(@)", header: "MAT_Graph.hxx".}
proc dynamicType*(this: MAT_Graph): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "MAT_Graph.hxx".}

