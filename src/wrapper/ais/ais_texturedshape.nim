import ../tcollection/tcollection_types
import ../standard/standard_types
import ais_types
import ../graphic3d/graphic3d_types
import ../topods/topods_types
import ../quantity/quantity_types
import ../selectmgr/selectmgr_types




##  Created on: 2001-07-02
##  Created by: Mathias BOSSHARD
##  Copyright (c) 2001-2014 OPEN CASCADE SAS
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



proc newAIS_TexturedShape*(theShape: TopoDS_Shape): AIS_TexturedShape {.cdecl,
    constructor, importcpp: "AIS_TexturedShape(@)", header: "AIS_TexturedShape.hxx".}
proc setTextureFileName*(this: var AIS_TexturedShape;
                        theTextureFileName: TCollectionAsciiString) {.cdecl,
    importcpp: "SetTextureFileName", header: "AIS_TexturedShape.hxx".}
proc setTexturePixMap*(this: var AIS_TexturedShape;
                      theTexturePixMap: Handle[ImagePixMap]) {.cdecl,
    importcpp: "SetTexturePixMap", header: "AIS_TexturedShape.hxx".}
proc textureMapState*(this: AIS_TexturedShape): bool {.noSideEffect, cdecl,
    importcpp: "TextureMapState", header: "AIS_TexturedShape.hxx".}
proc setTextureMapOn*(this: var AIS_TexturedShape) {.cdecl,
    importcpp: "SetTextureMapOn", header: "AIS_TexturedShape.hxx".}
proc setTextureMapOff*(this: var AIS_TexturedShape) {.cdecl,
    importcpp: "SetTextureMapOff", header: "AIS_TexturedShape.hxx".}
proc textureFile*(this: AIS_TexturedShape): cstring {.noSideEffect, cdecl,
    importcpp: "TextureFile", header: "AIS_TexturedShape.hxx".}
proc texturePixMap*(this: AIS_TexturedShape): Handle[ImagePixMap] {.noSideEffect,
    cdecl, importcpp: "TexturePixMap", header: "AIS_TexturedShape.hxx".}
proc updateAttributes*(this: var AIS_TexturedShape) {.cdecl,
    importcpp: "UpdateAttributes", header: "AIS_TexturedShape.hxx".}
proc setColor*(this: var AIS_TexturedShape; theColor: QuantityColor) {.cdecl,
    importcpp: "SetColor", header: "AIS_TexturedShape.hxx".}
proc unsetColor*(this: var AIS_TexturedShape) {.cdecl, importcpp: "UnsetColor",
    header: "AIS_TexturedShape.hxx".}
proc setMaterial*(this: var AIS_TexturedShape; theAspect: Graphic3dMaterialAspect) {.
    cdecl, importcpp: "SetMaterial", header: "AIS_TexturedShape.hxx".}
proc unsetMaterial*(this: var AIS_TexturedShape) {.cdecl, importcpp: "UnsetMaterial",
    header: "AIS_TexturedShape.hxx".}
proc enableTextureModulate*(this: var AIS_TexturedShape) {.cdecl,
    importcpp: "EnableTextureModulate", header: "AIS_TexturedShape.hxx".}
proc disableTextureModulate*(this: var AIS_TexturedShape) {.cdecl,
    importcpp: "DisableTextureModulate", header: "AIS_TexturedShape.hxx".}
proc textureRepeat*(this: AIS_TexturedShape): bool {.noSideEffect, cdecl,
    importcpp: "TextureRepeat", header: "AIS_TexturedShape.hxx".}
proc uRepeat*(this: AIS_TexturedShape): cfloat {.noSideEffect, cdecl,
    importcpp: "URepeat", header: "AIS_TexturedShape.hxx".}
proc vRepeat*(this: AIS_TexturedShape): cfloat {.noSideEffect, cdecl,
    importcpp: "VRepeat", header: "AIS_TexturedShape.hxx".}
proc setTextureRepeat*(this: var AIS_TexturedShape; theToRepeat: bool;
                      theURepeat: cfloat = 1.0; theVRepeat: cfloat = 1.0) {.cdecl,
    importcpp: "SetTextureRepeat", header: "AIS_TexturedShape.hxx".}
proc textureOrigin*(this: AIS_TexturedShape): bool {.noSideEffect, cdecl,
    importcpp: "TextureOrigin", header: "AIS_TexturedShape.hxx".}
proc textureUOrigin*(this: AIS_TexturedShape): cfloat {.noSideEffect, cdecl,
    importcpp: "TextureUOrigin", header: "AIS_TexturedShape.hxx".}
proc textureVOrigin*(this: AIS_TexturedShape): cfloat {.noSideEffect, cdecl,
    importcpp: "TextureVOrigin", header: "AIS_TexturedShape.hxx".}
proc setTextureOrigin*(this: var AIS_TexturedShape; theToSetTextureOrigin: bool;
                      theUOrigin: cfloat = 0.0; theVOrigin: cfloat = 0.0) {.cdecl,
    importcpp: "SetTextureOrigin", header: "AIS_TexturedShape.hxx".}
proc textureScale*(this: AIS_TexturedShape): bool {.noSideEffect, cdecl,
    importcpp: "TextureScale", header: "AIS_TexturedShape.hxx".}
proc textureScaleU*(this: AIS_TexturedShape): cfloat {.noSideEffect, cdecl,
    importcpp: "TextureScaleU", header: "AIS_TexturedShape.hxx".}
proc textureScaleV*(this: AIS_TexturedShape): cfloat {.noSideEffect, cdecl,
    importcpp: "TextureScaleV", header: "AIS_TexturedShape.hxx".}
proc setTextureScale*(this: var AIS_TexturedShape; theToSetTextureScale: bool;
                     theScaleU: cfloat = 1.0; theScaleV: cfloat = 1.0) {.cdecl,
    importcpp: "SetTextureScale", header: "AIS_TexturedShape.hxx".}
proc showTriangles*(this: AIS_TexturedShape): bool {.noSideEffect, cdecl,
    importcpp: "ShowTriangles", header: "AIS_TexturedShape.hxx".}
proc showTriangles*(this: var AIS_TexturedShape; theToShowTriangles: bool) {.cdecl,
    importcpp: "ShowTriangles", header: "AIS_TexturedShape.hxx".}
proc textureModulate*(this: AIS_TexturedShape): bool {.noSideEffect, cdecl,
    importcpp: "TextureModulate", header: "AIS_TexturedShape.hxx".}
proc acceptDisplayMode*(this: AIS_TexturedShape; theMode: cint): bool {.noSideEffect,
    cdecl, importcpp: "AcceptDisplayMode", header: "AIS_TexturedShape.hxx".}



