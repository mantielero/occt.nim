##  Created on: 1991-11-04
##  Created by: NW,JPB,CAL
##  Copyright (c) 1991-1999 Matra Datavision
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
  Graphic3d_Aspects

## ! This class defines graphic attributes for opaque 3d primitives (polygons, triangles, quadrilaterals).

type
  Graphic3d_AspectFillArea3d* {.importcpp: "Graphic3d_AspectFillArea3d",
                               header: "Graphic3d_AspectFillArea3d.hxx", bycopy.} = object of Graphic3d_Aspects ##
                                                                                                         ## !
                                                                                                         ## Creates
                                                                                                         ## a
                                                                                                         ## context
                                                                                                         ## table
                                                                                                         ## for
                                                                                                         ## fill
                                                                                                         ## area
                                                                                                         ## primitives
                                                                                                         ## defined
                                                                                                         ## with
                                                                                                         ## the
                                                                                                         ## following
                                                                                                         ## default
                                                                                                         ## values:
                                                                                                         ##
                                                                                                         ## !
                                                                                                         ##
                                                                                                         ## !
                                                                                                         ## InteriorStyle
                                                                                                         ## :
                                                                                                         ## Aspect_IS_EMPTY
                                                                                                         ##
                                                                                                         ## !
                                                                                                         ## InteriorColor
                                                                                                         ## :
                                                                                                         ## Quantity_NOC_CYAN1
                                                                                                         ##
                                                                                                         ## !
                                                                                                         ## EdgeColor
                                                                                                         ## :
                                                                                                         ## Quantity_NOC_WHITE
                                                                                                         ##
                                                                                                         ## !
                                                                                                         ## EdgeLineType
                                                                                                         ## :
                                                                                                         ## Aspect_TOL_SOLID
                                                                                                         ##
                                                                                                         ## !
                                                                                                         ## EdgeWidth
                                                                                                         ## :
                                                                                                         ## 1.0
                                                                                                         ##
                                                                                                         ## !
                                                                                                         ## FrontMaterial
                                                                                                         ## :
                                                                                                         ## NOM_BRASS
                                                                                                         ##
                                                                                                         ## !
                                                                                                         ## BackMaterial
                                                                                                         ## :
                                                                                                         ## NOM_BRASS
                                                                                                         ##
                                                                                                         ## !
                                                                                                         ## HatchStyle
                                                                                                         ## :
                                                                                                         ## Aspect_HS_SOLID
                                                                                                         ##
                                                                                                         ## !
                                                                                                         ##
                                                                                                         ## !
                                                                                                         ## Display
                                                                                                         ## of
                                                                                                         ## back-facing
                                                                                                         ## filled
                                                                                                         ## polygons.
                                                                                                         ##
                                                                                                         ## !
                                                                                                         ## No
                                                                                                         ## distinction
                                                                                                         ## between
                                                                                                         ## external
                                                                                                         ## and
                                                                                                         ## internal
                                                                                                         ## faces
                                                                                                         ## of
                                                                                                         ## FillAreas.
                                                                                                         ##
                                                                                                         ## !
                                                                                                         ## The
                                                                                                         ## edges
                                                                                                         ## are
                                                                                                         ## not
                                                                                                         ## drawn.
                                                                                                         ##
                                                                                                         ## !
                                                                                                         ## Polygon
                                                                                                         ## offset
                                                                                                         ## parameters:
                                                                                                         ## mode
                                                                                                         ## =
                                                                                                         ## Aspect_POM_None,
                                                                                                         ## factor
                                                                                                         ## =
                                                                                                         ## 1.,
                                                                                                         ## units
                                                                                                         ## =
                                                                                                         ## 0.

  Graphic3d_AspectFillArea3dbase_type* = Graphic3d_Aspects

proc get_type_name*(): cstring {.importcpp: "Graphic3d_AspectFillArea3d::get_type_name(@)",
                              header: "Graphic3d_AspectFillArea3d.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Graphic3d_AspectFillArea3d::get_type_descriptor(@)",
    header: "Graphic3d_AspectFillArea3d.hxx".}
proc DynamicType*(this: Graphic3d_AspectFillArea3d): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType",
    header: "Graphic3d_AspectFillArea3d.hxx".}
proc constructGraphic3d_AspectFillArea3d*(): Graphic3d_AspectFillArea3d {.
    constructor, importcpp: "Graphic3d_AspectFillArea3d(@)",
    header: "Graphic3d_AspectFillArea3d.hxx".}
proc constructGraphic3d_AspectFillArea3d*(theInterior: Aspect_InteriorStyle;
    theInteriorColor: Quantity_Color; theEdgeColor: Quantity_Color;
    theEdgeLineType: Aspect_TypeOfLine; theEdgeWidth: Standard_Real;
    theFrontMaterial: Graphic3d_MaterialAspect;
    theBackMaterial: Graphic3d_MaterialAspect): Graphic3d_AspectFillArea3d {.
    constructor, importcpp: "Graphic3d_AspectFillArea3d(@)",
    header: "Graphic3d_AspectFillArea3d.hxx".}
## !!!Ignored construct:  public : Standard_DEPRECATED ( Deprecated method, ToDrawEdges() should be used instead ) bool Edge ( ) const { return ToDrawEdges ( ) ; } }
## Error: identifier expected, but got: Deprecated method, ToDrawEdges() should be used instead!!!

discard "forward decl of Graphic3d_AspectFillArea3d"
type
  Handle_Graphic3d_AspectFillArea3d* = handle[Graphic3d_AspectFillArea3d]
