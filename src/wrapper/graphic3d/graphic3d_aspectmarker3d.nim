import ../aspect/aspect_types
import ../standard/standard_types
import graphic3d_types
import ../tcolstd/tcolstd_types
import ../quantity/quantity_types
import ../selectmgr/selectmgr_types




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



proc newGraphic3dAspectMarker3d*(): Graphic3dAspectMarker3d {.cdecl, constructor,
    importcpp: "Graphic3d_AspectMarker3d(@)", header: "Graphic3d_AspectMarker3d.hxx".}
proc newGraphic3dAspectMarker3d*(theType: AspectTypeOfMarker;
                                theColor: QuantityColor; theScale: cfloat): Graphic3dAspectMarker3d {.
    cdecl, constructor, importcpp: "Graphic3d_AspectMarker3d(@)", header: "Graphic3d_AspectMarker3d.hxx".}
proc newGraphic3dAspectMarker3d*(theColor: QuantityColor; theWidth: cint;
                                theHeight: cint;
                                theTextureBitmap: Handle[TColStdHArray1OfByte]): Graphic3dAspectMarker3d {.
    cdecl, constructor, importcpp: "Graphic3d_AspectMarker3d(@)", header: "Graphic3d_AspectMarker3d.hxx".}
proc newGraphic3dAspectMarker3d*(theTextureImage: Handle[ImagePixMap]): Graphic3dAspectMarker3d {.
    cdecl, constructor, importcpp: "Graphic3d_AspectMarker3d(@)", header: "Graphic3d_AspectMarker3d.hxx".}
proc scale*(this: Graphic3dAspectMarker3d): StandardShortReal {.noSideEffect, cdecl,
    importcpp: "Scale", header: "Graphic3d_AspectMarker3d.hxx".}
proc setScale*(this: var Graphic3dAspectMarker3d; theScale: StandardShortReal) {.
    cdecl, importcpp: "SetScale", header: "Graphic3d_AspectMarker3d.hxx".}
#proc setScale*(this: var Graphic3dAspectMarker3d; theScale: cfloat) {.cdecl,
#    importcpp: "SetScale", header: "Graphic3d_AspectMarker3d.hxx".}
proc `type`*(this: Graphic3dAspectMarker3d): AspectTypeOfMarker {.noSideEffect,
    cdecl, importcpp: "Type", header: "Graphic3d_AspectMarker3d.hxx".}
proc setType*(this: var Graphic3dAspectMarker3d; theType: AspectTypeOfMarker) {.cdecl,
    importcpp: "SetType", header: "Graphic3d_AspectMarker3d.hxx".}
proc getTextureSize*(this: Graphic3dAspectMarker3d; theWidth: var cint;
                    theHeight: var cint) {.noSideEffect, cdecl,
                                        importcpp: "GetTextureSize", header: "Graphic3d_AspectMarker3d.hxx".}
proc getMarkerImage*(this: Graphic3dAspectMarker3d): Handle[Graphic3dMarkerImage] {.
    noSideEffect, cdecl, importcpp: "GetMarkerImage", header: "Graphic3d_AspectMarker3d.hxx".}
proc setBitMap*(this: var Graphic3dAspectMarker3d; theWidth: cint; theHeight: cint;
               theTexture: Handle[TColStdHArray1OfByte]) {.cdecl,
    importcpp: "SetBitMap", header: "Graphic3d_AspectMarker3d.hxx".}



