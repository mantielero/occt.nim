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

discard "forward decl of Graphic3d_AspectFillArea3d"
discard "forward decl of Graphic3d_Texture2Dmanual"
type
  AIS_TexturedShape* {.importcpp: "AIS_TexturedShape",
                      header: "AIS_TexturedShape.hxx", bycopy.} = object of AIS_Shape ## !
                                                                               ## @name
                                                                               ## main
                                                                               ## methods
                                                                               ## !
                                                                               ## Initializes
                                                                               ## the
                                                                               ## textured
                                                                               ## shape.
                                                                               ## !
                                                                               ## @name
                                                                               ## methods
                                                                               ## to
                                                                               ## alter
                                                                               ## texture
                                                                               ## mapping
                                                                               ## properties
                                                                               ## !
                                                                               ## Use
                                                                               ## this
                                                                               ## method
                                                                               ## to
                                                                               ## display
                                                                               ## the
                                                                               ## textured
                                                                               ## shape
                                                                               ## without
                                                                               ## recomputing
                                                                               ## the
                                                                               ## whole
                                                                               ## presentation.
                                                                               ## !
                                                                               ## Use
                                                                               ## this
                                                                               ## method
                                                                               ## when
                                                                               ## ONLY
                                                                               ## the
                                                                               ## texture
                                                                               ## content
                                                                               ## has
                                                                               ## been
                                                                               ## changed.
                                                                               ## !
                                                                               ## If
                                                                               ## other
                                                                               ## parameters
                                                                               ## (ie:
                                                                               ## scale
                                                                               ## factors,
                                                                               ## texture
                                                                               ## origin,
                                                                               ## texture
                                                                               ## repeat...)
                                                                               ## have
                                                                               ## changed,
                                                                               ## the
                                                                               ## whole
                                                                               ## presentation
                                                                               ## has
                                                                               ## to
                                                                               ## be
                                                                               ## recomputed:
                                                                               ## !
                                                                               ## @code
                                                                               ## !
                                                                               ## if
                                                                               ## (myShape->DisplayMode()
                                                                               ## ==
                                                                               ## 3)
                                                                               ## ! {
                                                                               ## !
                                                                               ## myAISContext->RecomputePrsOnly
                                                                               ## (myShape);
                                                                               ## ! }
                                                                               ## !
                                                                               ## else
                                                                               ## ! {
                                                                               ## !
                                                                               ## myAISContext->SetDisplayMode
                                                                               ## (myShape,
                                                                               ## 3,
                                                                               ## Standard_False);
                                                                               ## !
                                                                               ## myAISContext->Display
                                                                               ## (myShape,
                                                                               ## Standard_True);
                                                                               ## ! }
                                                                               ## !
                                                                               ## @endcode
                                                                               ## !
                                                                               ## @name
                                                                               ## overridden
                                                                               ## methods
                                                                               ## !
                                                                               ## Compute
                                                                               ## presentation
                                                                               ## with
                                                                               ## texture
                                                                               ## mapping
                                                                               ## support.
                                                                               ## !
                                                                               ## @name
                                                                               ## presentation
                                                                               ## fields
                                                                               ## !
                                                                               ## @name
                                                                               ## texture
                                                                               ## source
                                                                               ## fields
                                                                               ## !
                                                                               ## @name
                                                                               ## texture
                                                                               ## mapping
                                                                               ## properties


proc constructAIS_TexturedShape*(theShape: TopoDS_Shape): AIS_TexturedShape {.
    constructor, importcpp: "AIS_TexturedShape(@)", header: "AIS_TexturedShape.hxx".}
proc setTextureFileName*(this: var AIS_TexturedShape;
                        theTextureFileName: TCollectionAsciiString) {.
    importcpp: "SetTextureFileName", header: "AIS_TexturedShape.hxx".}
proc setTexturePixMap*(this: var AIS_TexturedShape;
                      theTexturePixMap: Handle[ImagePixMap]) {.
    importcpp: "SetTexturePixMap", header: "AIS_TexturedShape.hxx".}
proc textureMapState*(this: AIS_TexturedShape): bool {.noSideEffect,
    importcpp: "TextureMapState", header: "AIS_TexturedShape.hxx".}
proc setTextureMapOn*(this: var AIS_TexturedShape) {.importcpp: "SetTextureMapOn",
    header: "AIS_TexturedShape.hxx".}
proc setTextureMapOff*(this: var AIS_TexturedShape) {.importcpp: "SetTextureMapOff",
    header: "AIS_TexturedShape.hxx".}
proc textureFile*(this: AIS_TexturedShape): StandardCString {.noSideEffect,
    importcpp: "TextureFile", header: "AIS_TexturedShape.hxx".}
proc texturePixMap*(this: AIS_TexturedShape): Handle[ImagePixMap] {.noSideEffect,
    importcpp: "TexturePixMap", header: "AIS_TexturedShape.hxx".}
proc updateAttributes*(this: var AIS_TexturedShape) {.importcpp: "UpdateAttributes",
    header: "AIS_TexturedShape.hxx".}
proc setColor*(this: var AIS_TexturedShape; theColor: QuantityColor) {.
    importcpp: "SetColor", header: "AIS_TexturedShape.hxx".}
proc unsetColor*(this: var AIS_TexturedShape) {.importcpp: "UnsetColor",
    header: "AIS_TexturedShape.hxx".}
proc setMaterial*(this: var AIS_TexturedShape; theAspect: Graphic3dMaterialAspect) {.
    importcpp: "SetMaterial", header: "AIS_TexturedShape.hxx".}
proc unsetMaterial*(this: var AIS_TexturedShape) {.importcpp: "UnsetMaterial",
    header: "AIS_TexturedShape.hxx".}
proc enableTextureModulate*(this: var AIS_TexturedShape) {.
    importcpp: "EnableTextureModulate", header: "AIS_TexturedShape.hxx".}
proc disableTextureModulate*(this: var AIS_TexturedShape) {.
    importcpp: "DisableTextureModulate", header: "AIS_TexturedShape.hxx".}
proc textureRepeat*(this: AIS_TexturedShape): bool {.noSideEffect,
    importcpp: "TextureRepeat", header: "AIS_TexturedShape.hxx".}
proc uRepeat*(this: AIS_TexturedShape): float {.noSideEffect, importcpp: "URepeat",
    header: "AIS_TexturedShape.hxx".}
proc vRepeat*(this: AIS_TexturedShape): float {.noSideEffect, importcpp: "VRepeat",
    header: "AIS_TexturedShape.hxx".}
proc setTextureRepeat*(this: var AIS_TexturedShape; theToRepeat: bool;
                      theURepeat: float = 1.0; theVRepeat: float = 1.0) {.
    importcpp: "SetTextureRepeat", header: "AIS_TexturedShape.hxx".}
proc textureOrigin*(this: AIS_TexturedShape): bool {.noSideEffect,
    importcpp: "TextureOrigin", header: "AIS_TexturedShape.hxx".}
proc textureUOrigin*(this: AIS_TexturedShape): float {.noSideEffect,
    importcpp: "TextureUOrigin", header: "AIS_TexturedShape.hxx".}
proc textureVOrigin*(this: AIS_TexturedShape): float {.noSideEffect,
    importcpp: "TextureVOrigin", header: "AIS_TexturedShape.hxx".}
proc setTextureOrigin*(this: var AIS_TexturedShape; theToSetTextureOrigin: bool;
                      theUOrigin: float = 0.0; theVOrigin: float = 0.0) {.
    importcpp: "SetTextureOrigin", header: "AIS_TexturedShape.hxx".}
proc textureScale*(this: AIS_TexturedShape): bool {.noSideEffect,
    importcpp: "TextureScale", header: "AIS_TexturedShape.hxx".}
proc textureScaleU*(this: AIS_TexturedShape): float {.noSideEffect,
    importcpp: "TextureScaleU", header: "AIS_TexturedShape.hxx".}
proc textureScaleV*(this: AIS_TexturedShape): float {.noSideEffect,
    importcpp: "TextureScaleV", header: "AIS_TexturedShape.hxx".}
proc setTextureScale*(this: var AIS_TexturedShape; theToSetTextureScale: bool;
                     theScaleU: float = 1.0; theScaleV: float = 1.0) {.
    importcpp: "SetTextureScale", header: "AIS_TexturedShape.hxx".}
proc showTriangles*(this: AIS_TexturedShape): bool {.noSideEffect,
    importcpp: "ShowTriangles", header: "AIS_TexturedShape.hxx".}
proc showTriangles*(this: var AIS_TexturedShape; theToShowTriangles: bool) {.
    importcpp: "ShowTriangles", header: "AIS_TexturedShape.hxx".}
proc textureModulate*(this: AIS_TexturedShape): bool {.noSideEffect,
    importcpp: "TextureModulate", header: "AIS_TexturedShape.hxx".}
proc acceptDisplayMode*(this: AIS_TexturedShape; theMode: int): bool {.noSideEffect,
    importcpp: "AcceptDisplayMode", header: "AIS_TexturedShape.hxx".}
type
  AIS_TexturedShapebaseType* = AIS_Shape

proc getTypeName*(): cstring {.importcpp: "AIS_TexturedShape::get_type_name(@)",
                            header: "AIS_TexturedShape.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "AIS_TexturedShape::get_type_descriptor(@)",
    header: "AIS_TexturedShape.hxx".}
proc dynamicType*(this: AIS_TexturedShape): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "AIS_TexturedShape.hxx".}
discard "forward decl of AIS_TexturedShape"
type
  HandleAIS_TexturedShape* = Handle[AIS_TexturedShape]

