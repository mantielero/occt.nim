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

import
  AIS_Shape, ../gp/gp_Pnt2d, ../Graphic3d/Graphic3d_NameOfTexture2D,
  ../Image/Image_PixMap, ../Standard/Standard_Type,
  ../TCollection/TCollection_AsciiString,
  ../Graphic3d/Graphic3d_AspectFillArea3d,
  ../Graphic3d/Graphic3d_Texture2Dmanual, ../Prs3d/Prs3d_Presentation,
  ../PrsMgr/PrsMgr_PresentationManager3d

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
proc SetTextureFileName*(this: var AIS_TexturedShape;
                        theTextureFileName: TCollection_AsciiString) {.
    importcpp: "SetTextureFileName", header: "AIS_TexturedShape.hxx".}
proc SetTexturePixMap*(this: var AIS_TexturedShape;
                      theTexturePixMap: handle[Image_PixMap]) {.
    importcpp: "SetTexturePixMap", header: "AIS_TexturedShape.hxx".}
proc TextureMapState*(this: AIS_TexturedShape): Standard_Boolean {.noSideEffect,
    importcpp: "TextureMapState", header: "AIS_TexturedShape.hxx".}
proc SetTextureMapOn*(this: var AIS_TexturedShape) {.importcpp: "SetTextureMapOn",
    header: "AIS_TexturedShape.hxx".}
proc SetTextureMapOff*(this: var AIS_TexturedShape) {.importcpp: "SetTextureMapOff",
    header: "AIS_TexturedShape.hxx".}
proc TextureFile*(this: AIS_TexturedShape): Standard_CString {.noSideEffect,
    importcpp: "TextureFile", header: "AIS_TexturedShape.hxx".}
proc TexturePixMap*(this: AIS_TexturedShape): handle[Image_PixMap] {.noSideEffect,
    importcpp: "TexturePixMap", header: "AIS_TexturedShape.hxx".}
proc UpdateAttributes*(this: var AIS_TexturedShape) {.importcpp: "UpdateAttributes",
    header: "AIS_TexturedShape.hxx".}
proc SetColor*(this: var AIS_TexturedShape; theColor: Quantity_Color) {.
    importcpp: "SetColor", header: "AIS_TexturedShape.hxx".}
proc UnsetColor*(this: var AIS_TexturedShape) {.importcpp: "UnsetColor",
    header: "AIS_TexturedShape.hxx".}
proc SetMaterial*(this: var AIS_TexturedShape; theAspect: Graphic3d_MaterialAspect) {.
    importcpp: "SetMaterial", header: "AIS_TexturedShape.hxx".}
proc UnsetMaterial*(this: var AIS_TexturedShape) {.importcpp: "UnsetMaterial",
    header: "AIS_TexturedShape.hxx".}
proc EnableTextureModulate*(this: var AIS_TexturedShape) {.
    importcpp: "EnableTextureModulate", header: "AIS_TexturedShape.hxx".}
proc DisableTextureModulate*(this: var AIS_TexturedShape) {.
    importcpp: "DisableTextureModulate", header: "AIS_TexturedShape.hxx".}
proc TextureRepeat*(this: AIS_TexturedShape): Standard_Boolean {.noSideEffect,
    importcpp: "TextureRepeat", header: "AIS_TexturedShape.hxx".}
proc URepeat*(this: AIS_TexturedShape): Standard_Real {.noSideEffect,
    importcpp: "URepeat", header: "AIS_TexturedShape.hxx".}
proc VRepeat*(this: AIS_TexturedShape): Standard_Real {.noSideEffect,
    importcpp: "VRepeat", header: "AIS_TexturedShape.hxx".}
proc SetTextureRepeat*(this: var AIS_TexturedShape; theToRepeat: Standard_Boolean;
                      theURepeat: Standard_Real = 1.0;
                      theVRepeat: Standard_Real = 1.0) {.
    importcpp: "SetTextureRepeat", header: "AIS_TexturedShape.hxx".}
proc TextureOrigin*(this: AIS_TexturedShape): Standard_Boolean {.noSideEffect,
    importcpp: "TextureOrigin", header: "AIS_TexturedShape.hxx".}
proc TextureUOrigin*(this: AIS_TexturedShape): Standard_Real {.noSideEffect,
    importcpp: "TextureUOrigin", header: "AIS_TexturedShape.hxx".}
proc TextureVOrigin*(this: AIS_TexturedShape): Standard_Real {.noSideEffect,
    importcpp: "TextureVOrigin", header: "AIS_TexturedShape.hxx".}
proc SetTextureOrigin*(this: var AIS_TexturedShape;
                      theToSetTextureOrigin: Standard_Boolean;
                      theUOrigin: Standard_Real = 0.0;
                      theVOrigin: Standard_Real = 0.0) {.
    importcpp: "SetTextureOrigin", header: "AIS_TexturedShape.hxx".}
proc TextureScale*(this: AIS_TexturedShape): Standard_Boolean {.noSideEffect,
    importcpp: "TextureScale", header: "AIS_TexturedShape.hxx".}
proc TextureScaleU*(this: AIS_TexturedShape): Standard_Real {.noSideEffect,
    importcpp: "TextureScaleU", header: "AIS_TexturedShape.hxx".}
proc TextureScaleV*(this: AIS_TexturedShape): Standard_Real {.noSideEffect,
    importcpp: "TextureScaleV", header: "AIS_TexturedShape.hxx".}
proc SetTextureScale*(this: var AIS_TexturedShape;
                     theToSetTextureScale: Standard_Boolean;
                     theScaleU: Standard_Real = 1.0; theScaleV: Standard_Real = 1.0) {.
    importcpp: "SetTextureScale", header: "AIS_TexturedShape.hxx".}
proc ShowTriangles*(this: AIS_TexturedShape): Standard_Boolean {.noSideEffect,
    importcpp: "ShowTriangles", header: "AIS_TexturedShape.hxx".}
proc ShowTriangles*(this: var AIS_TexturedShape;
                   theToShowTriangles: Standard_Boolean) {.
    importcpp: "ShowTriangles", header: "AIS_TexturedShape.hxx".}
proc TextureModulate*(this: AIS_TexturedShape): Standard_Boolean {.noSideEffect,
    importcpp: "TextureModulate", header: "AIS_TexturedShape.hxx".}
proc AcceptDisplayMode*(this: AIS_TexturedShape; theMode: Standard_Integer): Standard_Boolean {.
    noSideEffect, importcpp: "AcceptDisplayMode", header: "AIS_TexturedShape.hxx".}
type
  AIS_TexturedShapebase_type* = AIS_Shape

proc get_type_name*(): cstring {.importcpp: "AIS_TexturedShape::get_type_name(@)",
                              header: "AIS_TexturedShape.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "AIS_TexturedShape::get_type_descriptor(@)",
    header: "AIS_TexturedShape.hxx".}
proc DynamicType*(this: AIS_TexturedShape): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "AIS_TexturedShape.hxx".}
discard "forward decl of AIS_TexturedShape"
type
  Handle_AIS_TexturedShape* = handle[AIS_TexturedShape]
