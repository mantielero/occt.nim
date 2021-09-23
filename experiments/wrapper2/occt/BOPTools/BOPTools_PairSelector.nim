##  Created by: Eugeny MALTCHIKOV
##  Copyright (c) 2017 OPEN CASCADE SAS
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
  ../BVH/BVH_Traverse, ../BVH/BVH_BoxSet, ../Standard/Standard_Integer,
  ../TColStd/TColStd_ListOfInteger

## ! Template Selector for selection of the elements from two BVH trees.

type
  BOPTools_PairSelector*[Dimension: static[cint]] {.
      importcpp: "BOPTools_PairSelector<\'0>",
      header: "BOPTools_PairSelector.hxx", bycopy.} = object of BVH_PairTraverse[
      Standard_Real, Dimension,
      BVH_BoxSet[Standard_Real, Dimension, Standard_Integer]] ## ! @name public types
                                                           ## ! Auxiliary structure to keep the pair of indices
                                                           ## ! @name Constructor
                                                           ## ! Empty constructor
                                                           ## ! @name public interfaces
                                                           ## ! Clears the indices
                                                           ## ! @name Rejection/Acceptance rules
                                                           ## ! Basing on the bounding boxes of the nodes checks if the pair of nodes should be rejected.
                                                           ## ! @name Fields
    ## !< Selected pairs of indices
    ## !< Selection is performed from the same BVH trees

  BOPTools_PairSelectorPairIDs*[Dimension: static[cint]] {.
      importcpp: "BOPTools_PairSelector<\'0>::PairIDs",
      header: "BOPTools_PairSelector.hxx", bycopy.} = object
    ID1* {.importc: "ID1".}: Standard_Integer
    ID2* {.importc: "ID2".}: Standard_Integer


proc constructBOPTools_PairSelectorPairIDs*[Dimension: static[cint]](
    theId1: Standard_Integer = -1; theId2: Standard_Integer = -1): BOPTools_PairSelectorPairIDs[
    Dimension] {.constructor,
                importcpp: "BOPTools_PairSelector<\'*0>::PairIDs(@)",
                header: "BOPTools_PairSelector.hxx".}
proc `<`*[Dimension: static[cint]](this: BOPTools_PairSelectorPairIDs[Dimension];
                                 theOther: BOPTools_PairSelectorPairIDs): Standard_Boolean {.
    noSideEffect, importcpp: "(# < #)", header: "BOPTools_PairSelector.hxx".}
type
  BOPTools_PairSelectorBVH_VecNd*[Dimension] = Type[Standard_Real, Dimension]

proc constructBOPTools_PairSelector*[Dimension: static[cint]](): BOPTools_PairSelector[
    Dimension] {.constructor, importcpp: "BOPTools_PairSelector<\'*0>(@)",
                header: "BOPTools_PairSelector.hxx".}
proc Clear*[Dimension: static[cint]](this: var BOPTools_PairSelector[Dimension]) {.
    importcpp: "Clear", header: "BOPTools_PairSelector.hxx".}
proc Sort*[Dimension: static[cint]](this: var BOPTools_PairSelector[Dimension]) {.
    importcpp: "Sort", header: "BOPTools_PairSelector.hxx".}
proc SetSame*[Dimension: static[cint]](this: var BOPTools_PairSelector[Dimension];
                                     theIsSame: Standard_Boolean) {.
    importcpp: "SetSame", header: "BOPTools_PairSelector.hxx".}
proc Pairs*[Dimension: static[cint]](this: BOPTools_PairSelector[Dimension]): vector[
    BOPTools_PairSelectorPairIDs] {.noSideEffect, importcpp: "Pairs",
                                   header: "BOPTools_PairSelector.hxx".}
proc RejectNode*[Dimension: static[cint]](this: BOPTools_PairSelector[Dimension];
    theCMin1: BOPTools_PairSelectorBVH_VecNd; theCMax1: BOPTools_PairSelectorBVH_VecNd;
    theCMin2: BOPTools_PairSelectorBVH_VecNd; theCMax2: BOPTools_PairSelectorBVH_VecNd;
                                        a6: var Standard_Real): Standard_Boolean {.
    noSideEffect, importcpp: "RejectNode", header: "BOPTools_PairSelector.hxx".}
proc RejectElement*[Dimension: static[cint]](
    this: var BOPTools_PairSelector[Dimension]; theID1: Standard_Integer;
    theID2: Standard_Integer): Standard_Boolean {.importcpp: "RejectElement",
    header: "BOPTools_PairSelector.hxx".}
proc Accept*[Dimension: static[cint]](this: var BOPTools_PairSelector[Dimension];
                                    theID1: Standard_Integer;
                                    theID2: Standard_Integer): Standard_Boolean {.
    importcpp: "Accept", header: "BOPTools_PairSelector.hxx".}