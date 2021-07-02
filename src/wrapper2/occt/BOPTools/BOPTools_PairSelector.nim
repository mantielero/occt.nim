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

## ! Template Selector for selection of the elements from two BVH trees.

type
  BOPToolsPairSelector*[Dimension: static[cint]] {.
      importcpp: "BOPTools_PairSelector<\'0>",
      header: "BOPTools_PairSelector.hxx", bycopy.} = object of BVH_PairTraverse[
      StandardReal, Dimension,
      BVH_BoxSet[StandardReal, Dimension, StandardInteger]] ## ! @name public types
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

  BOPToolsPairSelectorPairIDs*[Dimension: static[cint]] {.
      importcpp: "BOPTools_PairSelector<\'0>::PairIDs",
      header: "BOPTools_PairSelector.hxx", bycopy.} = object
    id1* {.importc: "ID1".}: StandardInteger
    id2* {.importc: "ID2".}: StandardInteger


proc constructBOPToolsPairSelectorPairIDs*[Dimension: static[cint]](
    theId1: StandardInteger = -1; theId2: StandardInteger = -1): BOPToolsPairSelectorPairIDs[
    Dimension] {.constructor,
                importcpp: "BOPTools_PairSelector<\'*0>::PairIDs(@)",
                header: "BOPTools_PairSelector.hxx".}
proc `<`*[Dimension: static[cint]](this: BOPToolsPairSelectorPairIDs[Dimension];
                                 theOther: BOPToolsPairSelectorPairIDs): StandardBoolean {.
    noSideEffect, importcpp: "(# < #)", header: "BOPTools_PairSelector.hxx".}
type
  BOPToolsPairSelectorBVH_VecNd*[Dimension] = Type[StandardReal, Dimension]

proc constructBOPToolsPairSelector*[Dimension: static[cint]](): BOPToolsPairSelector[
    Dimension] {.constructor, importcpp: "BOPTools_PairSelector<\'*0>(@)",
                header: "BOPTools_PairSelector.hxx".}
proc clear*[Dimension: static[cint]](this: var BOPToolsPairSelector[Dimension]) {.
    importcpp: "Clear", header: "BOPTools_PairSelector.hxx".}
proc sort*[Dimension: static[cint]](this: var BOPToolsPairSelector[Dimension]) {.
    importcpp: "Sort", header: "BOPTools_PairSelector.hxx".}
proc setSame*[Dimension: static[cint]](this: var BOPToolsPairSelector[Dimension];
                                     theIsSame: StandardBoolean) {.
    importcpp: "SetSame", header: "BOPTools_PairSelector.hxx".}
proc pairs*[Dimension: static[cint]](this: BOPToolsPairSelector[Dimension]): Vector[
    BOPToolsPairSelectorPairIDs] {.noSideEffect, importcpp: "Pairs",
                                  header: "BOPTools_PairSelector.hxx".}
proc rejectNode*[Dimension: static[cint]](this: BOPToolsPairSelector[Dimension];
    theCMin1: BOPToolsPairSelectorBVH_VecNd; theCMax1: BOPToolsPairSelectorBVH_VecNd;
    theCMin2: BOPToolsPairSelectorBVH_VecNd; theCMax2: BOPToolsPairSelectorBVH_VecNd;
                                        a6: var StandardReal): StandardBoolean {.
    noSideEffect, importcpp: "RejectNode", header: "BOPTools_PairSelector.hxx".}
proc rejectElement*[Dimension: static[cint]](
    this: var BOPToolsPairSelector[Dimension]; theID1: StandardInteger;
    theID2: StandardInteger): StandardBoolean {.importcpp: "RejectElement",
    header: "BOPTools_PairSelector.hxx".}
proc accept*[Dimension: static[cint]](this: var BOPToolsPairSelector[Dimension];
                                    theID1: StandardInteger;
                                    theID2: StandardInteger): StandardBoolean {.
    importcpp: "Accept", header: "BOPTools_PairSelector.hxx".}

