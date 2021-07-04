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

## ! Creates and updates an attribute group for marker type primitives.
## ! This group contains the type of marker, its color, and its scale factor.

type
  Graphic3d_AspectMarker3d* {.importcpp: "Graphic3d_AspectMarker3d",
                             header: "Graphic3d_AspectMarker3d.hxx", bycopy.} = object of Graphic3d_Aspects ##
                                                                                                     ## !
                                                                                                     ## Creates
                                                                                                     ## a
                                                                                                     ## context
                                                                                                     ## table
                                                                                                     ## for
                                                                                                     ## marker
                                                                                                     ## primitives
                                                                                                     ##
                                                                                                     ## !
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
                                                                                                     ## Marker
                                                                                                     ## type
                                                                                                     ## :
                                                                                                     ## TOM_X
                                                                                                     ##
                                                                                                     ## !
                                                                                                     ## Color
                                                                                                     ## :
                                                                                                     ## YELLOW
                                                                                                     ##
                                                                                                     ## !
                                                                                                     ## Scale
                                                                                                     ## factor:
                                                                                                     ## 1.0

  Graphic3d_AspectMarker3dbase_type* = Graphic3d_Aspects

proc get_type_name*(): cstring {.importcpp: "Graphic3d_AspectMarker3d::get_type_name(@)",
                              header: "Graphic3d_AspectMarker3d.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Graphic3d_AspectMarker3d::get_type_descriptor(@)",
    header: "Graphic3d_AspectMarker3d.hxx".}
proc DynamicType*(this: Graphic3d_AspectMarker3d): handle[Standard_Type] {.
    noSideEffect, importcpp: "DynamicType", header: "Graphic3d_AspectMarker3d.hxx".}
proc constructGraphic3d_AspectMarker3d*(): Graphic3d_AspectMarker3d {.constructor,
    importcpp: "Graphic3d_AspectMarker3d(@)",
    header: "Graphic3d_AspectMarker3d.hxx".}
proc constructGraphic3d_AspectMarker3d*(theType: Aspect_TypeOfMarker;
                                       theColor: Quantity_Color;
                                       theScale: Standard_Real): Graphic3d_AspectMarker3d {.
    constructor, importcpp: "Graphic3d_AspectMarker3d(@)",
    header: "Graphic3d_AspectMarker3d.hxx".}
proc constructGraphic3d_AspectMarker3d*(theColor: Quantity_Color;
                                       theWidth: Standard_Integer;
                                       theHeight: Standard_Integer;
    theTextureBitmap: handle[TColStd_HArray1OfByte]): Graphic3d_AspectMarker3d {.
    constructor, importcpp: "Graphic3d_AspectMarker3d(@)",
    header: "Graphic3d_AspectMarker3d.hxx".}
proc constructGraphic3d_AspectMarker3d*(theTextureImage: handle[Image_PixMap]): Graphic3d_AspectMarker3d {.
    constructor, importcpp: "Graphic3d_AspectMarker3d(@)",
    header: "Graphic3d_AspectMarker3d.hxx".}
proc Scale*(this: Graphic3d_AspectMarker3d): Standard_ShortReal {.noSideEffect,
    importcpp: "Scale", header: "Graphic3d_AspectMarker3d.hxx".}
proc SetScale*(this: var Graphic3d_AspectMarker3d; theScale: Standard_ShortReal) {.
    importcpp: "SetScale", header: "Graphic3d_AspectMarker3d.hxx".}
proc SetScale*(this: var Graphic3d_AspectMarker3d; theScale: Standard_Real) {.
    importcpp: "SetScale", header: "Graphic3d_AspectMarker3d.hxx".}
proc Type*(this: Graphic3d_AspectMarker3d): Aspect_TypeOfMarker {.noSideEffect,
    importcpp: "Type", header: "Graphic3d_AspectMarker3d.hxx".}
proc SetType*(this: var Graphic3d_AspectMarker3d; theType: Aspect_TypeOfMarker) {.
    importcpp: "SetType", header: "Graphic3d_AspectMarker3d.hxx".}
proc GetTextureSize*(this: Graphic3d_AspectMarker3d;
                    theWidth: var Standard_Integer; theHeight: var Standard_Integer) {.
    noSideEffect, importcpp: "GetTextureSize",
    header: "Graphic3d_AspectMarker3d.hxx".}
proc GetMarkerImage*(this: Graphic3d_AspectMarker3d): handle[Graphic3d_MarkerImage] {.
    noSideEffect, importcpp: "GetMarkerImage",
    header: "Graphic3d_AspectMarker3d.hxx".}
proc SetBitMap*(this: var Graphic3d_AspectMarker3d; theWidth: Standard_Integer;
               theHeight: Standard_Integer;
               theTexture: handle[TColStd_HArray1OfByte]) {.
    importcpp: "SetBitMap", header: "Graphic3d_AspectMarker3d.hxx".}
discard "forward decl of Graphic3d_AspectMarker3d"
type
  Handle_Graphic3d_AspectMarker3d* = handle[Graphic3d_AspectMarker3d]
