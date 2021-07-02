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
discard "forward decl of IGESSolid_RightAngularWedge"
discard "forward decl of IGESSolid_RightAngularWedge"
type
  HandleIGESSolidRightAngularWedge* = Handle[IGESSolidRightAngularWedge]

## ! defines RightAngularWedge, Type <152> Form Number <0>
## ! in package IGESSolid
## ! A right angular wedge is a triangular/trapezoidal prism

type
  IGESSolidRightAngularWedge* {.importcpp: "IGESSolid_RightAngularWedge",
                               header: "IGESSolid_RightAngularWedge.hxx", bycopy.} = object of IGESDataIGESEntity


proc constructIGESSolidRightAngularWedge*(): IGESSolidRightAngularWedge {.
    constructor, importcpp: "IGESSolid_RightAngularWedge(@)",
    header: "IGESSolid_RightAngularWedge.hxx".}
proc init*(this: var IGESSolidRightAngularWedge; aSize: GpXYZ; lowX: StandardReal;
          aCorner: GpXYZ; anXAxis: GpXYZ; anZAxis: GpXYZ) {.importcpp: "Init",
    header: "IGESSolid_RightAngularWedge.hxx".}
proc size*(this: IGESSolidRightAngularWedge): GpXYZ {.noSideEffect,
    importcpp: "Size", header: "IGESSolid_RightAngularWedge.hxx".}
proc xBigLength*(this: IGESSolidRightAngularWedge): StandardReal {.noSideEffect,
    importcpp: "XBigLength", header: "IGESSolid_RightAngularWedge.hxx".}
proc xSmallLength*(this: IGESSolidRightAngularWedge): StandardReal {.noSideEffect,
    importcpp: "XSmallLength", header: "IGESSolid_RightAngularWedge.hxx".}
proc yLength*(this: IGESSolidRightAngularWedge): StandardReal {.noSideEffect,
    importcpp: "YLength", header: "IGESSolid_RightAngularWedge.hxx".}
proc zLength*(this: IGESSolidRightAngularWedge): StandardReal {.noSideEffect,
    importcpp: "ZLength", header: "IGESSolid_RightAngularWedge.hxx".}
proc corner*(this: IGESSolidRightAngularWedge): GpPnt {.noSideEffect,
    importcpp: "Corner", header: "IGESSolid_RightAngularWedge.hxx".}
proc transformedCorner*(this: IGESSolidRightAngularWedge): GpPnt {.noSideEffect,
    importcpp: "TransformedCorner", header: "IGESSolid_RightAngularWedge.hxx".}
proc xAxis*(this: IGESSolidRightAngularWedge): GpDir {.noSideEffect,
    importcpp: "XAxis", header: "IGESSolid_RightAngularWedge.hxx".}
proc transformedXAxis*(this: IGESSolidRightAngularWedge): GpDir {.noSideEffect,
    importcpp: "TransformedXAxis", header: "IGESSolid_RightAngularWedge.hxx".}
proc yAxis*(this: IGESSolidRightAngularWedge): GpDir {.noSideEffect,
    importcpp: "YAxis", header: "IGESSolid_RightAngularWedge.hxx".}
proc transformedYAxis*(this: IGESSolidRightAngularWedge): GpDir {.noSideEffect,
    importcpp: "TransformedYAxis", header: "IGESSolid_RightAngularWedge.hxx".}
proc zAxis*(this: IGESSolidRightAngularWedge): GpDir {.noSideEffect,
    importcpp: "ZAxis", header: "IGESSolid_RightAngularWedge.hxx".}
proc transformedZAxis*(this: IGESSolidRightAngularWedge): GpDir {.noSideEffect,
    importcpp: "TransformedZAxis", header: "IGESSolid_RightAngularWedge.hxx".}
type
  IGESSolidRightAngularWedgebaseType* = IGESDataIGESEntity

proc getTypeName*(): cstring {.importcpp: "IGESSolid_RightAngularWedge::get_type_name(@)",
                            header: "IGESSolid_RightAngularWedge.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "IGESSolid_RightAngularWedge::get_type_descriptor(@)",
    header: "IGESSolid_RightAngularWedge.hxx".}
proc dynamicType*(this: IGESSolidRightAngularWedge): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType",
    header: "IGESSolid_RightAngularWedge.hxx".}

