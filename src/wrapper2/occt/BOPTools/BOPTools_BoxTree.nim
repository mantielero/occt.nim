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

## ! Redefines BoxSet to use the Linear builder by default

type
  BOPToolsBoxSet*[NumType; Dimension: static[cint]; DataType] {.
      importcpp: "BOPTools_BoxSet<\'0,\'1,\'2>", header: "BOPTools_BoxTree.hxx",
      bycopy.} = object of BVH_BoxSet[NumType, Dimension, DataType] ## ! @name Constructors
                                                             ## ! Empty constructor for use the default BVH_Builder


proc constructBOPToolsBoxSet*[NumType; Dimension: static[cint]; DataType](
    theBuilder: Handle[BVH_Builder[NumType, Dimension]] = nil): BOPToolsBoxSet[
    NumType, Dimension, DataType] {.constructor, importcpp: "BOPTools_BoxSet<\'*0,\'*1,\'*2>(@)",
                                 header: "BOPTools_BoxTree.hxx".}
## ! 2D definitions

type
  BOPToolsBox2dTree* = BOPToolsBoxSet[StandardReal, 2, StandardInteger]
  BOPToolsBox2dTreeSelector* = BOPToolsBoxSelector[2]
  BOPToolsBox2dPairSelector* = BOPToolsPairSelector[2]

## ! 3D definitions

type
  BOPToolsBoxTree* = BOPToolsBoxSet[StandardReal, 3, StandardInteger]
  BOPToolsBoxTreeSelector* = BOPToolsBoxSelector[3]
  BOPToolsBoxPairSelector* = BOPToolsPairSelector[3]


