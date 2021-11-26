##  Created on: 1993-01-09
##  Created by: CKY / Contract Toubro-Larsen ( SIVA )
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

discard "forward decl of gp_XYZ"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Dir"
discard "forward decl of IGESSolid_Block"
discard "forward decl of IGESSolid_Block"
type
  HandleC1C1* = Handle[IGESSolidBlock]

## ! defines Block, Type <150> Form Number <0>
## ! in package IGESSolid
## ! The Block is a rectangular parallelopiped, defined with
## ! one vertex at (X1, Y1, Z1) and three edges lying along
## ! the local +X, +Y, +Z axes.

type
  IGESSolidBlock* {.importcpp: "IGESSolid_Block", header: "IGESSolid_Block.hxx",
                   bycopy.} = object of IGESDataIGESEntity


proc constructIGESSolidBlock*(): IGESSolidBlock {.constructor,
    importcpp: "IGESSolid_Block(@)", header: "IGESSolid_Block.hxx".}
proc init*(this: var IGESSolidBlock; aSize: Xyz; aCorner: Xyz; aXAxis: Xyz; aZAxis: Xyz) {.
    importcpp: "Init", header: "IGESSolid_Block.hxx".}
proc size*(this: IGESSolidBlock): Xyz {.noSideEffect, importcpp: "Size",
                                    header: "IGESSolid_Block.hxx".}
proc xLength*(this: IGESSolidBlock): cfloat {.noSideEffect, importcpp: "XLength",
    header: "IGESSolid_Block.hxx".}
proc yLength*(this: IGESSolidBlock): cfloat {.noSideEffect, importcpp: "YLength",
    header: "IGESSolid_Block.hxx".}
proc zLength*(this: IGESSolidBlock): cfloat {.noSideEffect, importcpp: "ZLength",
    header: "IGESSolid_Block.hxx".}
proc corner*(this: IGESSolidBlock): Pnt {.noSideEffect, importcpp: "Corner",
                                      header: "IGESSolid_Block.hxx".}
proc transformedCorner*(this: IGESSolidBlock): Pnt {.noSideEffect,
    importcpp: "TransformedCorner", header: "IGESSolid_Block.hxx".}
proc xAxis*(this: IGESSolidBlock): Dir {.noSideEffect, importcpp: "XAxis",
                                     header: "IGESSolid_Block.hxx".}
proc transformedXAxis*(this: IGESSolidBlock): Dir {.noSideEffect,
    importcpp: "TransformedXAxis", header: "IGESSolid_Block.hxx".}
proc yAxis*(this: IGESSolidBlock): Dir {.noSideEffect, importcpp: "YAxis",
                                     header: "IGESSolid_Block.hxx".}
proc transformedYAxis*(this: IGESSolidBlock): Dir {.noSideEffect,
    importcpp: "TransformedYAxis", header: "IGESSolid_Block.hxx".}
proc zAxis*(this: IGESSolidBlock): Dir {.noSideEffect, importcpp: "ZAxis",
                                     header: "IGESSolid_Block.hxx".}
proc transformedZAxis*(this: IGESSolidBlock): Dir {.noSideEffect,
    importcpp: "TransformedZAxis", header: "IGESSolid_Block.hxx".}
type
  IGESSolidBlockbaseType* = IGESDataIGESEntity

proc getTypeName*(): cstring {.importcpp: "IGESSolid_Block::get_type_name(@)",
                            header: "IGESSolid_Block.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESSolid_Block::get_type_descriptor(@)",
    header: "IGESSolid_Block.hxx".}
proc dynamicType*(this: IGESSolidBlock): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "IGESSolid_Block.hxx".}

























