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

discard "forward decl of PrsDim_MaxRadiusDimension"
type
  HandlePrsDimMaxRadiusDimension* = Handle[PrsDimMaxRadiusDimension]

## ! Ellipse  Max  radius  dimension  of  a  Shape  which  can  be  Edge
## ! or  Face  (planar  or  cylindrical(surface  of  extrusion  or
## ! surface  of  offset))

type
  PrsDimMaxRadiusDimension* {.importcpp: "PrsDim_MaxRadiusDimension",
                             header: "PrsDim_MaxRadiusDimension.hxx", bycopy.} = object of PrsDimEllipseRadiusDimension ##
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

  PrsDimMaxRadiusDimensionbaseType* = PrsDimEllipseRadiusDimension

proc getTypeName*(): cstring {.importcpp: "PrsDim_MaxRadiusDimension::get_type_name(@)",
                            header: "PrsDim_MaxRadiusDimension.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "PrsDim_MaxRadiusDimension::get_type_descriptor(@)",
    header: "PrsDim_MaxRadiusDimension.hxx".}
proc dynamicType*(this: PrsDimMaxRadiusDimension): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "PrsDim_MaxRadiusDimension.hxx".}
proc constructPrsDimMaxRadiusDimension*(aShape: TopoDS_Shape; aVal: StandardReal;
                                       aText: TCollectionExtendedString): PrsDimMaxRadiusDimension {.
    constructor, importcpp: "PrsDim_MaxRadiusDimension(@)",
    header: "PrsDim_MaxRadiusDimension.hxx".}
proc constructPrsDimMaxRadiusDimension*(aShape: TopoDS_Shape; aVal: StandardReal;
                                       aText: TCollectionExtendedString;
                                       aPosition: GpPnt;
                                       aSymbolPrs: DsgPrsArrowSide;
                                       anArrowSize: StandardReal = 0.0): PrsDimMaxRadiusDimension {.
    constructor, importcpp: "PrsDim_MaxRadiusDimension(@)",
    header: "PrsDim_MaxRadiusDimension.hxx".}

