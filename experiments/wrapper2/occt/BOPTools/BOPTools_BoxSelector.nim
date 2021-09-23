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

## ! Template Selector for elements selection from BVH tree.

type
  BOPTools_BoxSelector*[Dimension: static[cint]] {.
      importcpp: "BOPTools_BoxSelector<\'0>", header: "BOPTools_BoxSelector.hxx",
      bycopy.} = object of BVH_Traverse[Standard_Real, Dimension, BVH_BoxSet[
      Standard_Real, Dimension, Standard_Integer], Standard_Boolean] ## ! @name Constructor
                                                                 ## ! Empty constructor
                                                                 ## ! @name public interfaces
                                                                 ## ! Clears the indices
                                                                 ## ! @name
                                                                 ## Rejection/Acceptance rules
                                                                 ## ! Checks if the box should be rejected
                                                                 ## ! @name Fields
    ## !< Selection box
    ## !< Selected indices

  BOPTools_BoxSelectorBVH_VecNd*[Dimension] = Type[Standard_Real, Dimension]

proc constructBOPTools_BoxSelector*[Dimension: static[cint]](): BOPTools_BoxSelector[
    Dimension] {.constructor, importcpp: "BOPTools_BoxSelector<\'*0>(@)",
                header: "BOPTools_BoxSelector.hxx".}
proc Clear*[Dimension: static[cint]](this: var BOPTools_BoxSelector[Dimension]) {.
    importcpp: "Clear", header: "BOPTools_BoxSelector.hxx".}
proc SetBox*[Dimension: static[cint]](this: var BOPTools_BoxSelector[Dimension];
                                    theBox: BVH_Box[Standard_Real, Dimension]) {.
    importcpp: "SetBox", header: "BOPTools_BoxSelector.hxx".}
proc Indices*[Dimension: static[cint]](this: BOPTools_BoxSelector[Dimension]): TColStd_ListOfInteger {.
    noSideEffect, importcpp: "Indices", header: "BOPTools_BoxSelector.hxx".}
proc RejectNode*[Dimension: static[cint]](this: BOPTools_BoxSelector[Dimension];
                                        theCMin: BOPTools_BoxSelectorBVH_VecNd;
                                        theCMax: BOPTools_BoxSelectorBVH_VecNd;
                                        theIsInside: var Standard_Boolean): Standard_Boolean {.
    noSideEffect, importcpp: "RejectNode", header: "BOPTools_BoxSelector.hxx".}
proc RejectElement*[Dimension: static[cint]](
    this: var BOPTools_BoxSelector[Dimension]; theIndex: Standard_Integer): Standard_Boolean {.
    importcpp: "RejectElement", header: "BOPTools_BoxSelector.hxx".}
proc AcceptMetric*[Dimension: static[cint]](this: BOPTools_BoxSelector[Dimension];
    theIsInside: Standard_Boolean): Standard_Boolean {.noSideEffect,
    importcpp: "AcceptMetric", header: "BOPTools_BoxSelector.hxx".}
proc Accept*[Dimension: static[cint]](this: var BOPTools_BoxSelector[Dimension];
                                    theIndex: Standard_Integer;
                                    theIsInside: Standard_Boolean): Standard_Boolean {.
    importcpp: "Accept", header: "BOPTools_BoxSelector.hxx".}