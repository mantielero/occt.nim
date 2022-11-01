import ../../tkernel/tcollection/tcollection_types
import ../../tkernel/standard/standard_types
import graphic3d_types
import ../../tkernel/tcolstd/tcolstd_types
import ../selectmgr/selectmgr_types




##  Created on: 2013-06-25
##  Created by: Dmitry BOBYLEV
##  Copyright (c) 2013-2014 OPEN CASCADE SAS
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



proc newGraphic3dMarkerImage*(theImage: Handle[ImagePixMap]): Graphic3dMarkerImage {.
    cdecl, constructor, importcpp: "Graphic3d_MarkerImage(@)", header: "Graphic3d_MarkerImage.hxx".}
proc newGraphic3dMarkerImage*(theBitMap: Handle[TColStdHArray1OfByte];
                             theWidth: cint; theHeight: cint): Graphic3dMarkerImage {.
    cdecl, constructor, importcpp: "Graphic3d_MarkerImage(@)", header: "Graphic3d_MarkerImage.hxx".}
proc getBitMapArray*(this: Graphic3dMarkerImage; theAlphaValue: cfloat = 0.5): Handle[
    TColStdHArray1OfByte] {.noSideEffect, cdecl, importcpp: "GetBitMapArray",
                           header: "Graphic3d_MarkerImage.hxx".}
proc getImage*(this: var Graphic3dMarkerImage): Handle[ImagePixMap] {.cdecl,
    importcpp: "GetImage", header: "Graphic3d_MarkerImage.hxx".}
proc getImageAlpha*(this: var Graphic3dMarkerImage): Handle[ImagePixMap] {.cdecl,
    importcpp: "GetImageAlpha", header: "Graphic3d_MarkerImage.hxx".}
proc getImageId*(this: Graphic3dMarkerImage): TCollectionAsciiString {.noSideEffect,
    cdecl, importcpp: "GetImageId", header: "Graphic3d_MarkerImage.hxx".}
proc getImageAlphaId*(this: Graphic3dMarkerImage): TCollectionAsciiString {.
    noSideEffect, cdecl, importcpp: "GetImageAlphaId", header: "Graphic3d_MarkerImage.hxx".}
proc getTextureSize*(this: Graphic3dMarkerImage; theWidth: var cint;
                    theHeight: var cint) {.noSideEffect, cdecl,
                                        importcpp: "GetTextureSize", header: "Graphic3d_MarkerImage.hxx".}



