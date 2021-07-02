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

## ! Creates and updates an attribute group for marker type primitives.
## ! This group contains the type of marker, its color, and its scale factor.

type
  Graphic3dAspectMarker3d* {.importcpp: "Graphic3d_AspectMarker3d",
                            header: "Graphic3d_AspectMarker3d.hxx", bycopy.} = object of Graphic3dAspects ##
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

  Graphic3dAspectMarker3dbaseType* = Graphic3dAspects

proc getTypeName*(): cstring {.importcpp: "Graphic3d_AspectMarker3d::get_type_name(@)",
                            header: "Graphic3d_AspectMarker3d.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Graphic3d_AspectMarker3d::get_type_descriptor(@)",
    header: "Graphic3d_AspectMarker3d.hxx".}
proc dynamicType*(this: Graphic3dAspectMarker3d): Handle[StandardType] {.
    noSideEffect, importcpp: "DynamicType", header: "Graphic3d_AspectMarker3d.hxx".}
proc constructGraphic3dAspectMarker3d*(): Graphic3dAspectMarker3d {.constructor,
    importcpp: "Graphic3d_AspectMarker3d(@)",
    header: "Graphic3d_AspectMarker3d.hxx".}
proc constructGraphic3dAspectMarker3d*(theType: AspectTypeOfMarker;
                                      theColor: QuantityColor;
                                      theScale: StandardReal): Graphic3dAspectMarker3d {.
    constructor, importcpp: "Graphic3d_AspectMarker3d(@)",
    header: "Graphic3d_AspectMarker3d.hxx".}
proc constructGraphic3dAspectMarker3d*(theColor: QuantityColor;
                                      theWidth: StandardInteger;
                                      theHeight: StandardInteger; theTextureBitmap: Handle[
    TColStdHArray1OfByte]): Graphic3dAspectMarker3d {.constructor,
    importcpp: "Graphic3d_AspectMarker3d(@)",
    header: "Graphic3d_AspectMarker3d.hxx".}
proc constructGraphic3dAspectMarker3d*(theTextureImage: Handle[ImagePixMap]): Graphic3dAspectMarker3d {.
    constructor, importcpp: "Graphic3d_AspectMarker3d(@)",
    header: "Graphic3d_AspectMarker3d.hxx".}
proc scale*(this: Graphic3dAspectMarker3d): StandardShortReal {.noSideEffect,
    importcpp: "Scale", header: "Graphic3d_AspectMarker3d.hxx".}
proc setScale*(this: var Graphic3dAspectMarker3d; theScale: StandardShortReal) {.
    importcpp: "SetScale", header: "Graphic3d_AspectMarker3d.hxx".}
proc setScale*(this: var Graphic3dAspectMarker3d; theScale: StandardReal) {.
    importcpp: "SetScale", header: "Graphic3d_AspectMarker3d.hxx".}
proc `type`*(this: Graphic3dAspectMarker3d): AspectTypeOfMarker {.noSideEffect,
    importcpp: "Type", header: "Graphic3d_AspectMarker3d.hxx".}
proc setType*(this: var Graphic3dAspectMarker3d; theType: AspectTypeOfMarker) {.
    importcpp: "SetType", header: "Graphic3d_AspectMarker3d.hxx".}
proc getTextureSize*(this: Graphic3dAspectMarker3d; theWidth: var StandardInteger;
                    theHeight: var StandardInteger) {.noSideEffect,
    importcpp: "GetTextureSize", header: "Graphic3d_AspectMarker3d.hxx".}
proc getMarkerImage*(this: Graphic3dAspectMarker3d): Handle[Graphic3dMarkerImage] {.
    noSideEffect, importcpp: "GetMarkerImage",
    header: "Graphic3d_AspectMarker3d.hxx".}
proc setBitMap*(this: var Graphic3dAspectMarker3d; theWidth: StandardInteger;
               theHeight: StandardInteger;
               theTexture: Handle[TColStdHArray1OfByte]) {.importcpp: "SetBitMap",
    header: "Graphic3d_AspectMarker3d.hxx".}
discard "forward decl of Graphic3d_AspectMarker3d"
type
  HandleGraphic3dAspectMarker3d* = Handle[Graphic3dAspectMarker3d]


