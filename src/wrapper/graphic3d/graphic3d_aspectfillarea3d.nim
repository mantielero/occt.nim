import ../aspect/aspect_types
import graphic3d_types
import ../quantity/quantity_types





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

## ! This class defines graphic attributes for opaque 3d primitives (polygons, triangles, quadrilaterals).



proc newGraphic3dAspectFillArea3d*(): Graphic3dAspectFillArea3d {.cdecl,
    constructor, importcpp: "Graphic3d_AspectFillArea3d(@)", header: "Graphic3d_AspectFillArea3d.hxx".}
proc newGraphic3dAspectFillArea3d*(theInterior: AspectInteriorStyle;
                                  theInteriorColor: QuantityColor;
                                  theEdgeColor: QuantityColor;
                                  theEdgeLineType: AspectTypeOfLine;
                                  theEdgeWidth: cfloat;
                                  theFrontMaterial: Graphic3dMaterialAspect;
                                  theBackMaterial: Graphic3dMaterialAspect): Graphic3dAspectFillArea3d {.
    cdecl, constructor, importcpp: "Graphic3d_AspectFillArea3d(@)", header: "Graphic3d_AspectFillArea3d.hxx".}
proc edge*(this: Graphic3dAspectFillArea3d): bool {.noSideEffect, cdecl,
    importcpp: "Edge", header: "Graphic3d_AspectFillArea3d.hxx".}



