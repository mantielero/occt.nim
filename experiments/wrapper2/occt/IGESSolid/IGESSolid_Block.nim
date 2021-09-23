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

import
  ../Standard/Standard, ../Standard/Standard_Type, ../gp/gp_XYZ,
  ../IGESData/IGESData_IGESEntity, ../Standard/Standard_Real

discard "forward decl of gp_XYZ"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Dir"
discard "forward decl of IGESSolid_Block"
discard "forward decl of IGESSolid_Block"
type
  Handle_IGESSolid_Block* = handle[IGESSolid_Block]

## ! defines Block, Type <150> Form Number <0>
## ! in package IGESSolid
## ! The Block is a rectangular parallelopiped, defined with
## ! one vertex at (X1, Y1, Z1) and three edges lying along
## ! the local +X, +Y, +Z axes.

type
  IGESSolid_Block* {.importcpp: "IGESSolid_Block", header: "IGESSolid_Block.hxx",
                    bycopy.} = object of IGESData_IGESEntity


proc constructIGESSolid_Block*(): IGESSolid_Block {.constructor,
    importcpp: "IGESSolid_Block(@)", header: "IGESSolid_Block.hxx".}
proc Init*(this: var IGESSolid_Block; aSize: gp_XYZ; aCorner: gp_XYZ; aXAxis: gp_XYZ;
          aZAxis: gp_XYZ) {.importcpp: "Init", header: "IGESSolid_Block.hxx".}
proc Size*(this: IGESSolid_Block): gp_XYZ {.noSideEffect, importcpp: "Size",
                                        header: "IGESSolid_Block.hxx".}
proc XLength*(this: IGESSolid_Block): Standard_Real {.noSideEffect,
    importcpp: "XLength", header: "IGESSolid_Block.hxx".}
proc YLength*(this: IGESSolid_Block): Standard_Real {.noSideEffect,
    importcpp: "YLength", header: "IGESSolid_Block.hxx".}
proc ZLength*(this: IGESSolid_Block): Standard_Real {.noSideEffect,
    importcpp: "ZLength", header: "IGESSolid_Block.hxx".}
proc Corner*(this: IGESSolid_Block): gp_Pnt {.noSideEffect, importcpp: "Corner",
    header: "IGESSolid_Block.hxx".}
proc TransformedCorner*(this: IGESSolid_Block): gp_Pnt {.noSideEffect,
    importcpp: "TransformedCorner", header: "IGESSolid_Block.hxx".}
proc XAxis*(this: IGESSolid_Block): gp_Dir {.noSideEffect, importcpp: "XAxis",
    header: "IGESSolid_Block.hxx".}
proc TransformedXAxis*(this: IGESSolid_Block): gp_Dir {.noSideEffect,
    importcpp: "TransformedXAxis", header: "IGESSolid_Block.hxx".}
proc YAxis*(this: IGESSolid_Block): gp_Dir {.noSideEffect, importcpp: "YAxis",
    header: "IGESSolid_Block.hxx".}
proc TransformedYAxis*(this: IGESSolid_Block): gp_Dir {.noSideEffect,
    importcpp: "TransformedYAxis", header: "IGESSolid_Block.hxx".}
proc ZAxis*(this: IGESSolid_Block): gp_Dir {.noSideEffect, importcpp: "ZAxis",
    header: "IGESSolid_Block.hxx".}
proc TransformedZAxis*(this: IGESSolid_Block): gp_Dir {.noSideEffect,
    importcpp: "TransformedZAxis", header: "IGESSolid_Block.hxx".}
type
  IGESSolid_Blockbase_type* = IGESData_IGESEntity

proc get_type_name*(): cstring {.importcpp: "IGESSolid_Block::get_type_name(@)",
                              header: "IGESSolid_Block.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESSolid_Block::get_type_descriptor(@)",
    header: "IGESSolid_Block.hxx".}
proc DynamicType*(this: IGESSolid_Block): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "IGESSolid_Block.hxx".}