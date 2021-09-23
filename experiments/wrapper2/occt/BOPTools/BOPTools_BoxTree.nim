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
  ../BVH/BVH_BoxSet, BOPTools_BoxSelector, BOPTools_PairSelector,
  ../Standard/Standard_Integer, ../Standard/Standard_Real,
  ../BVH/BVH_LinearBuilder

## ! Redefines BoxSet to use the Linear builder by default

type
  BOPTools_BoxSet*[NumType; Dimension: static[cint]; DataType] {.
      importcpp: "BOPTools_BoxSet<\'0,\'1,\'2>", header: "BOPTools_BoxTree.hxx",
      bycopy.} = object of BVH_BoxSet[NumType, Dimension, DataType] ## ! @name Constructors
                                                             ## ! Empty constructor for use the default BVH_Builder


proc constructBOPTools_BoxSet*[NumType; Dimension: static[cint]; DataType](
    theBuilder: handle[BVH_Builder[NumType, Dimension]] = nil): BOPTools_BoxSet[
    NumType, Dimension, DataType] {.constructor, importcpp: "BOPTools_BoxSet<\'*0,\'*1,\'*2>(@)",
                                 header: "BOPTools_BoxTree.hxx".}
## ! 2D definitions

type
  BOPTools_Box2dTree* = BOPTools_BoxSet[Standard_Real, 2, Standard_Integer]
  BOPTools_Box2dTreeSelector* = BOPTools_BoxSelector[2]
  BOPTools_Box2dPairSelector* = BOPTools_PairSelector[2]

## ! 3D definitions

type
  BOPTools_BoxTree* = BOPTools_BoxSet[Standard_Real, 3, Standard_Integer]
  BOPTools_BoxTreeSelector* = BOPTools_BoxSelector[3]
  BOPTools_BoxPairSelector* = BOPTools_PairSelector[3]
