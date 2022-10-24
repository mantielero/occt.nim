import graphic3d_types

##  Created on: 1997-07-28
##  Created by: Pierre CHALAMET
##  Copyright (c) 1997-1999 Matra Datavision
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

discard "forward decl of TCollection_AsciiString"
discard "forward decl of Graphic3d_Texture2Dplane"




proc newGraphic3dTexture2Dplane*(theFileName: TCollectionAsciiString): Graphic3dTexture2Dplane {.
    cdecl, constructor, importcpp: "Graphic3d_Texture2Dplane(@)", header: "Graphic3d_Texture2Dplane.hxx".}
proc newGraphic3dTexture2Dplane*(theNOT: Graphic3dNameOfTexture2D): Graphic3dTexture2Dplane {.
    cdecl, constructor, importcpp: "Graphic3d_Texture2Dplane(@)", header: "Graphic3d_Texture2Dplane.hxx".}
proc newGraphic3dTexture2Dplane*(thePixMap: Handle[ImagePixMap]): Graphic3dTexture2Dplane {.
    cdecl, constructor, importcpp: "Graphic3d_Texture2Dplane(@)", header: "Graphic3d_Texture2Dplane.hxx".}
proc setPlaneS*(this: var Graphic3dTexture2Dplane; a: StandardShortReal;
               b: StandardShortReal; c: StandardShortReal; d: StandardShortReal) {.
    cdecl, importcpp: "SetPlaneS", header: "Graphic3d_Texture2Dplane.hxx".}
proc setPlaneT*(this: var Graphic3dTexture2Dplane; a: StandardShortReal;
               b: StandardShortReal; c: StandardShortReal; d: StandardShortReal) {.
    cdecl, importcpp: "SetPlaneT", header: "Graphic3d_Texture2Dplane.hxx".}
proc setPlane*(this: var Graphic3dTexture2Dplane;
              thePlane: Graphic3dNameOfTexturePlane) {.cdecl,
    importcpp: "SetPlane", header: "Graphic3d_Texture2Dplane.hxx".}
proc setScaleS*(this: var Graphic3dTexture2Dplane; theVal: StandardShortReal) {.cdecl,
    importcpp: "SetScaleS", header: "Graphic3d_Texture2Dplane.hxx".}
proc setScaleT*(this: var Graphic3dTexture2Dplane; theVal: StandardShortReal) {.cdecl,
    importcpp: "SetScaleT", header: "Graphic3d_Texture2Dplane.hxx".}
proc setTranslateS*(this: var Graphic3dTexture2Dplane; theVal: StandardShortReal) {.
    cdecl, importcpp: "SetTranslateS", header: "Graphic3d_Texture2Dplane.hxx".}
proc setTranslateT*(this: var Graphic3dTexture2Dplane; theVal: StandardShortReal) {.
    cdecl, importcpp: "SetTranslateT", header: "Graphic3d_Texture2Dplane.hxx".}
proc setRotation*(this: var Graphic3dTexture2Dplane; theVal: StandardShortReal) {.
    cdecl, importcpp: "SetRotation", header: "Graphic3d_Texture2Dplane.hxx".}
proc plane*(this: Graphic3dTexture2Dplane): Graphic3dNameOfTexturePlane {.
    noSideEffect, cdecl, importcpp: "Plane", header: "Graphic3d_Texture2Dplane.hxx".}
proc planeS*(this: Graphic3dTexture2Dplane; a: var StandardShortReal;
            b: var StandardShortReal; c: var StandardShortReal;
            d: var StandardShortReal) {.noSideEffect, cdecl, importcpp: "PlaneS",
                                     header: "Graphic3d_Texture2Dplane.hxx".}
proc planeT*(this: Graphic3dTexture2Dplane; a: var StandardShortReal;
            b: var StandardShortReal; c: var StandardShortReal;
            d: var StandardShortReal) {.noSideEffect, cdecl, importcpp: "PlaneT",
                                     header: "Graphic3d_Texture2Dplane.hxx".}
proc translateS*(this: Graphic3dTexture2Dplane; theVal: var StandardShortReal) {.
    noSideEffect, cdecl, importcpp: "TranslateS", header: "Graphic3d_Texture2Dplane.hxx".}
proc translateT*(this: Graphic3dTexture2Dplane; theVal: var StandardShortReal) {.
    noSideEffect, cdecl, importcpp: "TranslateT", header: "Graphic3d_Texture2Dplane.hxx".}
proc scaleS*(this: Graphic3dTexture2Dplane; theVal: var StandardShortReal) {.
    noSideEffect, cdecl, importcpp: "ScaleS", header: "Graphic3d_Texture2Dplane.hxx".}
proc scaleT*(this: Graphic3dTexture2Dplane; theVal: var StandardShortReal) {.
    noSideEffect, cdecl, importcpp: "ScaleT", header: "Graphic3d_Texture2Dplane.hxx".}
proc rotation*(this: Graphic3dTexture2Dplane; theVal: var StandardShortReal) {.
    noSideEffect, cdecl, importcpp: "Rotation", header: "Graphic3d_Texture2Dplane.hxx".}
