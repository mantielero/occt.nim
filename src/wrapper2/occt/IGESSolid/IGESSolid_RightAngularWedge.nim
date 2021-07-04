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
  ../Standard/Standard_Real, ../IGESData/IGESData_IGESEntity

discard "forward decl of gp_XYZ"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Dir"
discard "forward decl of IGESSolid_RightAngularWedge"
discard "forward decl of IGESSolid_RightAngularWedge"
type
  Handle_IGESSolid_RightAngularWedge* = handle[IGESSolid_RightAngularWedge]

## ! defines RightAngularWedge, Type <152> Form Number <0>
## ! in package IGESSolid
## ! A right angular wedge is a triangular/trapezoidal prism

type
  IGESSolid_RightAngularWedge* {.importcpp: "IGESSolid_RightAngularWedge",
                                header: "IGESSolid_RightAngularWedge.hxx", bycopy.} = object of IGESData_IGESEntity


proc constructIGESSolid_RightAngularWedge*(): IGESSolid_RightAngularWedge {.
    constructor, importcpp: "IGESSolid_RightAngularWedge(@)",
    header: "IGESSolid_RightAngularWedge.hxx".}
proc Init*(this: var IGESSolid_RightAngularWedge; aSize: gp_XYZ; lowX: Standard_Real;
          aCorner: gp_XYZ; anXAxis: gp_XYZ; anZAxis: gp_XYZ) {.importcpp: "Init",
    header: "IGESSolid_RightAngularWedge.hxx".}
proc Size*(this: IGESSolid_RightAngularWedge): gp_XYZ {.noSideEffect,
    importcpp: "Size", header: "IGESSolid_RightAngularWedge.hxx".}
proc XBigLength*(this: IGESSolid_RightAngularWedge): Standard_Real {.noSideEffect,
    importcpp: "XBigLength", header: "IGESSolid_RightAngularWedge.hxx".}
proc XSmallLength*(this: IGESSolid_RightAngularWedge): Standard_Real {.noSideEffect,
    importcpp: "XSmallLength", header: "IGESSolid_RightAngularWedge.hxx".}
proc YLength*(this: IGESSolid_RightAngularWedge): Standard_Real {.noSideEffect,
    importcpp: "YLength", header: "IGESSolid_RightAngularWedge.hxx".}
proc ZLength*(this: IGESSolid_RightAngularWedge): Standard_Real {.noSideEffect,
    importcpp: "ZLength", header: "IGESSolid_RightAngularWedge.hxx".}
proc Corner*(this: IGESSolid_RightAngularWedge): gp_Pnt {.noSideEffect,
    importcpp: "Corner", header: "IGESSolid_RightAngularWedge.hxx".}
proc TransformedCorner*(this: IGESSolid_RightAngularWedge): gp_Pnt {.noSideEffect,
    importcpp: "TransformedCorner", header: "IGESSolid_RightAngularWedge.hxx".}
proc XAxis*(this: IGESSolid_RightAngularWedge): gp_Dir {.noSideEffect,
    importcpp: "XAxis", header: "IGESSolid_RightAngularWedge.hxx".}
proc TransformedXAxis*(this: IGESSolid_RightAngularWedge): gp_Dir {.noSideEffect,
    importcpp: "TransformedXAxis", header: "IGESSolid_RightAngularWedge.hxx".}
proc YAxis*(this: IGESSolid_RightAngularWedge): gp_Dir {.noSideEffect,
    importcpp: "YAxis", header: "IGESSolid_RightAngularWedge.hxx".}
proc TransformedYAxis*(this: IGESSolid_RightAngularWedge): gp_Dir {.noSideEffect,
    importcpp: "TransformedYAxis", header: "IGESSolid_RightAngularWedge.hxx".}
proc ZAxis*(this: IGESSolid_RightAngularWedge): gp_Dir {.noSideEffect,
    importcpp: "ZAxis", header: "IGESSolid_RightAngularWedge.hxx".}
proc TransformedZAxis*(this: IGESSolid_RightAngularWedge): gp_Dir {.noSideEffect,
    importcpp: "TransformedZAxis", header: "IGESSolid_RightAngularWedge.hxx".}
type
  IGESSolid_RightAngularWedgebase_type* = IGESData_IGESEntity

proc get_type_name*(): cstring {.importcpp: "IGESSolid_RightAngularWedge::get_type_name(@)",
                              header: "IGESSolid_RightAngularWedge.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "IGESSolid_RightAngularWedge::get_type_descriptor(@)",
    header: "IGESSolid_RightAngularWedge.hxx".}
proc DynamicType*(this: IGESSolid_RightAngularWedge): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "IGESSolid_RightAngularWedge.hxx".}