##  Created on: 1998-01-22
##  Created by: Sergey ZARITCHNY
##  Copyright (c) 1998-1999 Matra Datavision
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
  PrsDim_EllipseRadiusDimension, ../DsgPrs/DsgPrs_ArrowSide

discard "forward decl of PrsDim_MaxRadiusDimension"
type
  Handle_PrsDim_MaxRadiusDimension* = handle[PrsDim_MaxRadiusDimension]

## ! Ellipse  Max  radius  dimension  of  a  Shape  which  can  be  Edge
## ! or  Face  (planar  or  cylindrical(surface  of  extrusion  or
## ! surface  of  offset))

type
  PrsDim_MaxRadiusDimension* {.importcpp: "PrsDim_MaxRadiusDimension",
                              header: "PrsDim_MaxRadiusDimension.hxx", bycopy.} = object of PrsDim_EllipseRadiusDimension ##
                                                                                                                   ## !
                                                                                                                   ## Max
                                                                                                                   ## Ellipse
                                                                                                                   ## radius
                                                                                                                   ## dimension
                                                                                                                   ##
                                                                                                                   ## !
                                                                                                                   ## Shape
                                                                                                                   ## can
                                                                                                                   ## be
                                                                                                                   ## edge
                                                                                                                   ## ,
                                                                                                                   ## planar
                                                                                                                   ## face
                                                                                                                   ## or
                                                                                                                   ## cylindrical
                                                                                                                   ## face

  PrsDim_MaxRadiusDimensionbase_type* = PrsDim_EllipseRadiusDimension

proc get_type_name*(): cstring {.importcpp: "PrsDim_MaxRadiusDimension::get_type_name(@)",
                              header: "PrsDim_MaxRadiusDimension.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "PrsDim_MaxRadiusDimension::get_type_descriptor(@)",
    header: "PrsDim_MaxRadiusDimension.hxx".}
proc DynamicType*(this: PrsDim_MaxRadiusDimension): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "PrsDim_MaxRadiusDimension.hxx".}
proc constructPrsDim_MaxRadiusDimension*(aShape: TopoDS_Shape; aVal: Standard_Real;
                                        aText: TCollection_ExtendedString): PrsDim_MaxRadiusDimension {.
    constructor, importcpp: "PrsDim_MaxRadiusDimension(@)",
    header: "PrsDim_MaxRadiusDimension.hxx".}
proc constructPrsDim_MaxRadiusDimension*(aShape: TopoDS_Shape; aVal: Standard_Real;
                                        aText: TCollection_ExtendedString;
                                        aPosition: gp_Pnt;
                                        aSymbolPrs: DsgPrs_ArrowSide;
                                        anArrowSize: Standard_Real = 0.0): PrsDim_MaxRadiusDimension {.
    constructor, importcpp: "PrsDim_MaxRadiusDimension(@)",
    header: "PrsDim_MaxRadiusDimension.hxx".}