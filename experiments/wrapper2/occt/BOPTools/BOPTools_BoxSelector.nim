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

## ! Template Selector for elements selection from BVH tree.

type
  BOPToolsBoxSelector*[Dimension: static[cint]] {.
      importcpp: "BOPTools_BoxSelector<\'0>", header: "BOPTools_BoxSelector.hxx",
      bycopy.} = object of BVH_Traverse[float, Dimension,
                                    BVH_BoxSet[float, Dimension, int], bool] ## ! @name
                                                                         ## Constructor
                                                                         ## ! Empty
                                                                         ## constructor
                                                                         ## ! @name public
                                                                         ## interfaces
                                                                         ## ! Clears the indices
                                                                         ## ! @name
                                                                         ## Rejection/Acceptance rules
                                                                         ## ! Checks if the box should be
                                                                         ## rejected
                                                                         ## ! @name Fields
    ## !< Selection box
    ## !< Selected indices

  BOPToolsBoxSelectorBVH_VecNd*[Dimension] = Type[float, Dimension]

proc constructBOPToolsBoxSelector*[Dimension: static[cint]](): BOPToolsBoxSelector[
    Dimension] {.constructor, importcpp: "BOPTools_BoxSelector<\'*0>(@)",
                header: "BOPTools_BoxSelector.hxx".}
proc clear*[Dimension: static[cint]](this: var BOPToolsBoxSelector[Dimension]) {.
    importcpp: "Clear", header: "BOPTools_BoxSelector.hxx".}
proc setBox*[Dimension: static[cint]](this: var BOPToolsBoxSelector[Dimension];
                                    theBox: BVH_Box[float, Dimension]) {.
    importcpp: "SetBox", header: "BOPTools_BoxSelector.hxx".}
proc indices*[Dimension: static[cint]](this: BOPToolsBoxSelector[Dimension]): TColStdListOfInteger {.
    noSideEffect, importcpp: "Indices", header: "BOPTools_BoxSelector.hxx".}
proc rejectNode*[Dimension: static[cint]](this: BOPToolsBoxSelector[Dimension];
                                        theCMin: BOPToolsBoxSelectorBVH_VecNd;
                                        theCMax: BOPToolsBoxSelectorBVH_VecNd;
                                        theIsInside: var bool): bool {.noSideEffect,
    importcpp: "RejectNode", header: "BOPTools_BoxSelector.hxx".}
proc rejectElement*[Dimension: static[cint]](
    this: var BOPToolsBoxSelector[Dimension]; theIndex: int): bool {.
    importcpp: "RejectElement", header: "BOPTools_BoxSelector.hxx".}
proc acceptMetric*[Dimension: static[cint]](this: BOPToolsBoxSelector[Dimension];
    theIsInside: bool): bool {.noSideEffect, importcpp: "AcceptMetric",
                            header: "BOPTools_BoxSelector.hxx".}
proc accept*[Dimension: static[cint]](this: var BOPToolsBoxSelector[Dimension];
                                    theIndex: int; theIsInside: bool): bool {.
    importcpp: "Accept", header: "BOPTools_BoxSelector.hxx".}
