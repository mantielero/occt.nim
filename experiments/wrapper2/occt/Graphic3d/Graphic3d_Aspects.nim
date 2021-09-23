##  Copyright (c) 2019 OPEN CASCADE SAS
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
  ../Aspect/Aspect_PolygonOffsetMode, ../Aspect/Aspect_InteriorStyle,
  ../Aspect/Aspect_TypeOfDisplayText, ../Aspect/Aspect_TypeOfLine,
  ../Aspect/Aspect_TypeOfMarker, ../Aspect/Aspect_TypeOfStyleText,
  ../Font/Font_FontAspect, ../Font/Font_NameOfFont, Graphic3d_AlphaMode,
  Graphic3d_MarkerImage, Graphic3d_HatchStyle, Graphic3d_MaterialAspect,
  Graphic3d_PolygonOffset, Graphic3d_ShaderProgram, Graphic3d_TextureMap,
  Graphic3d_TextureSet, Graphic3d_TypeOfShadingModel,
  ../TCollection/TCollection_HAsciiString

## ! This class defines graphic attributes.

type
  Graphic3d_Aspects* {.importcpp: "Graphic3d_Aspects",
                      header: "Graphic3d_Aspects.hxx", bycopy.} = object of Standard_Transient ##
                                                                                        ## !
                                                                                        ## Creates
                                                                                        ## a
                                                                                        ## context
                                                                                        ## table
                                                                                        ## for
                                                                                        ## drawing
                                                                                        ## primitives
                                                                                        ## defined
                                                                                        ## with
                                                                                        ## the
                                                                                        ## following
                                                                                        ## default
                                                                                        ## values:
                                                                                        ##
                                                                                        ## !
                                                                                        ## Return
                                                                                        ## line
                                                                                        ## type;
                                                                                        ## Aspect_TOL_SOLID
                                                                                        ## by
                                                                                        ## default.
                                                                                        ##
                                                                                        ## !
                                                                                        ## Return
                                                                                        ## marker
                                                                                        ## type;
                                                                                        ## Aspect_TOM_POINT
                                                                                        ## by
                                                                                        ## default.
                                                                                        ##
                                                                                        ## !
                                                                                        ## Returns
                                                                                        ## the
                                                                                        ## font;
                                                                                        ## NULL
                                                                                        ## string
                                                                                        ## by
                                                                                        ## default.
                                                                                        ##
                                                                                        ## !
                                                                                        ## Returns
                                                                                        ## true
                                                                                        ## if
                                                                                        ## mesh
                                                                                        ## edges
                                                                                        ## should
                                                                                        ## be
                                                                                        ## drawn
                                                                                        ## (false
                                                                                        ## by
                                                                                        ## default).
                                                                                        ##
                                                                                        ## !
                                                                                        ## Returns
                                                                                        ## the
                                                                                        ## hatch
                                                                                        ## type
                                                                                        ## used
                                                                                        ## when
                                                                                        ## InteriorStyle
                                                                                        ## is
                                                                                        ## IS_HATCH
                                                                                        ##
                                                                                        ## !
                                                                                        ## Check
                                                                                        ## for
                                                                                        ## equality
                                                                                        ## with
                                                                                        ## another
                                                                                        ## aspects.

  Graphic3d_Aspectsbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "Graphic3d_Aspects::get_type_name(@)",
                              header: "Graphic3d_Aspects.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "Graphic3d_Aspects::get_type_descriptor(@)",
    header: "Graphic3d_Aspects.hxx".}
proc DynamicType*(this: Graphic3d_Aspects): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "Graphic3d_Aspects.hxx".}
proc constructGraphic3d_Aspects*(): Graphic3d_Aspects {.constructor,
    importcpp: "Graphic3d_Aspects(@)", header: "Graphic3d_Aspects.hxx".}
proc InteriorStyle*(this: Graphic3d_Aspects): Aspect_InteriorStyle {.noSideEffect,
    importcpp: "InteriorStyle", header: "Graphic3d_Aspects.hxx".}
proc SetInteriorStyle*(this: var Graphic3d_Aspects; theStyle: Aspect_InteriorStyle) {.
    importcpp: "SetInteriorStyle", header: "Graphic3d_Aspects.hxx".}
proc ShadingModel*(this: Graphic3d_Aspects): Graphic3d_TypeOfShadingModel {.
    noSideEffect, importcpp: "ShadingModel", header: "Graphic3d_Aspects.hxx".}
proc SetShadingModel*(this: var Graphic3d_Aspects;
                     theShadingModel: Graphic3d_TypeOfShadingModel) {.
    importcpp: "SetShadingModel", header: "Graphic3d_Aspects.hxx".}
proc AlphaMode*(this: Graphic3d_Aspects): Graphic3d_AlphaMode {.noSideEffect,
    importcpp: "AlphaMode", header: "Graphic3d_Aspects.hxx".}
proc AlphaCutoff*(this: Graphic3d_Aspects): Standard_ShortReal {.noSideEffect,
    importcpp: "AlphaCutoff", header: "Graphic3d_Aspects.hxx".}
proc SetAlphaMode*(this: var Graphic3d_Aspects; theMode: Graphic3d_AlphaMode;
                  theAlphaCutoff: Standard_ShortReal = 0.5f) {.
    importcpp: "SetAlphaMode", header: "Graphic3d_Aspects.hxx".}
proc ColorRGBA*(this: Graphic3d_Aspects): Quantity_ColorRGBA {.noSideEffect,
    importcpp: "ColorRGBA", header: "Graphic3d_Aspects.hxx".}
proc Color*(this: Graphic3d_Aspects): Quantity_Color {.noSideEffect,
    importcpp: "Color", header: "Graphic3d_Aspects.hxx".}
proc SetColor*(this: var Graphic3d_Aspects; theColor: Quantity_Color) {.
    importcpp: "SetColor", header: "Graphic3d_Aspects.hxx".}
proc InteriorColor*(this: Graphic3d_Aspects): Quantity_Color {.noSideEffect,
    importcpp: "InteriorColor", header: "Graphic3d_Aspects.hxx".}
proc InteriorColorRGBA*(this: Graphic3d_Aspects): Quantity_ColorRGBA {.noSideEffect,
    importcpp: "InteriorColorRGBA", header: "Graphic3d_Aspects.hxx".}
proc SetInteriorColor*(this: var Graphic3d_Aspects; theColor: Quantity_Color) {.
    importcpp: "SetInteriorColor", header: "Graphic3d_Aspects.hxx".}
proc SetInteriorColor*(this: var Graphic3d_Aspects; theColor: Quantity_ColorRGBA) {.
    importcpp: "SetInteriorColor", header: "Graphic3d_Aspects.hxx".}
proc BackInteriorColor*(this: Graphic3d_Aspects): Quantity_Color {.noSideEffect,
    importcpp: "BackInteriorColor", header: "Graphic3d_Aspects.hxx".}
proc BackInteriorColorRGBA*(this: Graphic3d_Aspects): Quantity_ColorRGBA {.
    noSideEffect, importcpp: "BackInteriorColorRGBA",
    header: "Graphic3d_Aspects.hxx".}
proc SetBackInteriorColor*(this: var Graphic3d_Aspects; theColor: Quantity_Color) {.
    importcpp: "SetBackInteriorColor", header: "Graphic3d_Aspects.hxx".}
proc SetBackInteriorColor*(this: var Graphic3d_Aspects; theColor: Quantity_ColorRGBA) {.
    importcpp: "SetBackInteriorColor", header: "Graphic3d_Aspects.hxx".}
proc FrontMaterial*(this: Graphic3d_Aspects): Graphic3d_MaterialAspect {.
    noSideEffect, importcpp: "FrontMaterial", header: "Graphic3d_Aspects.hxx".}
proc ChangeFrontMaterial*(this: var Graphic3d_Aspects): var Graphic3d_MaterialAspect {.
    importcpp: "ChangeFrontMaterial", header: "Graphic3d_Aspects.hxx".}
proc SetFrontMaterial*(this: var Graphic3d_Aspects;
                      theMaterial: Graphic3d_MaterialAspect) {.
    importcpp: "SetFrontMaterial", header: "Graphic3d_Aspects.hxx".}
proc BackMaterial*(this: Graphic3d_Aspects): Graphic3d_MaterialAspect {.
    noSideEffect, importcpp: "BackMaterial", header: "Graphic3d_Aspects.hxx".}
proc ChangeBackMaterial*(this: var Graphic3d_Aspects): var Graphic3d_MaterialAspect {.
    importcpp: "ChangeBackMaterial", header: "Graphic3d_Aspects.hxx".}
proc SetBackMaterial*(this: var Graphic3d_Aspects;
                     theMaterial: Graphic3d_MaterialAspect) {.
    importcpp: "SetBackMaterial", header: "Graphic3d_Aspects.hxx".}
proc ToSuppressBackFaces*(this: Graphic3d_Aspects): bool {.noSideEffect,
    importcpp: "ToSuppressBackFaces", header: "Graphic3d_Aspects.hxx".}
proc SetSuppressBackFaces*(this: var Graphic3d_Aspects; theToSuppress: bool) {.
    importcpp: "SetSuppressBackFaces", header: "Graphic3d_Aspects.hxx".}
proc BackFace*(this: Graphic3d_Aspects): bool {.noSideEffect, importcpp: "BackFace",
    header: "Graphic3d_Aspects.hxx".}
proc AllowBackFace*(this: var Graphic3d_Aspects) {.importcpp: "AllowBackFace",
    header: "Graphic3d_Aspects.hxx".}
proc SuppressBackFace*(this: var Graphic3d_Aspects) {.importcpp: "SuppressBackFace",
    header: "Graphic3d_Aspects.hxx".}
proc Distinguish*(this: Graphic3d_Aspects): bool {.noSideEffect,
    importcpp: "Distinguish", header: "Graphic3d_Aspects.hxx".}
proc SetDistinguish*(this: var Graphic3d_Aspects; toDistinguish: bool) {.
    importcpp: "SetDistinguish", header: "Graphic3d_Aspects.hxx".}
proc SetDistinguishOn*(this: var Graphic3d_Aspects) {.importcpp: "SetDistinguishOn",
    header: "Graphic3d_Aspects.hxx".}
proc SetDistinguishOff*(this: var Graphic3d_Aspects) {.
    importcpp: "SetDistinguishOff", header: "Graphic3d_Aspects.hxx".}
proc ShaderProgram*(this: Graphic3d_Aspects): handle[Graphic3d_ShaderProgram] {.
    noSideEffect, importcpp: "ShaderProgram", header: "Graphic3d_Aspects.hxx".}
proc SetShaderProgram*(this: var Graphic3d_Aspects;
                      theProgram: handle[Graphic3d_ShaderProgram]) {.
    importcpp: "SetShaderProgram", header: "Graphic3d_Aspects.hxx".}
proc TextureSet*(this: Graphic3d_Aspects): handle[Graphic3d_TextureSet] {.
    noSideEffect, importcpp: "TextureSet", header: "Graphic3d_Aspects.hxx".}
proc SetTextureSet*(this: var Graphic3d_Aspects;
                   theTextures: handle[Graphic3d_TextureSet]) {.
    importcpp: "SetTextureSet", header: "Graphic3d_Aspects.hxx".}
proc TextureMap*(this: Graphic3d_Aspects): handle[Graphic3d_TextureMap] {.
    noSideEffect, importcpp: "TextureMap", header: "Graphic3d_Aspects.hxx".}
proc SetTextureMap*(this: var Graphic3d_Aspects;
                   theTexture: handle[Graphic3d_TextureMap]) {.
    importcpp: "SetTextureMap", header: "Graphic3d_Aspects.hxx".}
proc ToMapTexture*(this: Graphic3d_Aspects): bool {.noSideEffect,
    importcpp: "ToMapTexture", header: "Graphic3d_Aspects.hxx".}
proc TextureMapState*(this: Graphic3d_Aspects): bool {.noSideEffect,
    importcpp: "TextureMapState", header: "Graphic3d_Aspects.hxx".}
proc SetTextureMapOn*(this: var Graphic3d_Aspects; theToMap: bool) {.
    importcpp: "SetTextureMapOn", header: "Graphic3d_Aspects.hxx".}
proc SetTextureMapOn*(this: var Graphic3d_Aspects) {.importcpp: "SetTextureMapOn",
    header: "Graphic3d_Aspects.hxx".}
proc SetTextureMapOff*(this: var Graphic3d_Aspects) {.importcpp: "SetTextureMapOff",
    header: "Graphic3d_Aspects.hxx".}
proc PolygonOffset*(this: Graphic3d_Aspects): Graphic3d_PolygonOffset {.
    noSideEffect, importcpp: "PolygonOffset", header: "Graphic3d_Aspects.hxx".}
proc SetPolygonOffset*(this: var Graphic3d_Aspects;
                      theOffset: Graphic3d_PolygonOffset) {.
    importcpp: "SetPolygonOffset", header: "Graphic3d_Aspects.hxx".}
proc PolygonOffsets*(this: Graphic3d_Aspects; theMode: var Standard_Integer;
                    theFactor: var Standard_ShortReal;
                    theUnits: var Standard_ShortReal) {.noSideEffect,
    importcpp: "PolygonOffsets", header: "Graphic3d_Aspects.hxx".}
proc SetPolygonOffsets*(this: var Graphic3d_Aspects; theMode: Standard_Integer;
                       theFactor: Standard_ShortReal = 1.0f;
                       theUnits: Standard_ShortReal = 0.0f) {.
    importcpp: "SetPolygonOffsets", header: "Graphic3d_Aspects.hxx".}
proc LineType*(this: Graphic3d_Aspects): Aspect_TypeOfLine {.noSideEffect,
    importcpp: "LineType", header: "Graphic3d_Aspects.hxx".}
proc SetLineType*(this: var Graphic3d_Aspects; theType: Aspect_TypeOfLine) {.
    importcpp: "SetLineType", header: "Graphic3d_Aspects.hxx".}
proc LinePattern*(this: Graphic3d_Aspects): uint16_t {.noSideEffect,
    importcpp: "LinePattern", header: "Graphic3d_Aspects.hxx".}
proc SetLinePattern*(this: var Graphic3d_Aspects; thePattern: uint16_t) {.
    importcpp: "SetLinePattern", header: "Graphic3d_Aspects.hxx".}
proc LineStippleFactor*(this: Graphic3d_Aspects): uint16_t {.noSideEffect,
    importcpp: "LineStippleFactor", header: "Graphic3d_Aspects.hxx".}
proc SetLineStippleFactor*(this: var Graphic3d_Aspects; theFactor: uint16_t) {.
    importcpp: "SetLineStippleFactor", header: "Graphic3d_Aspects.hxx".}
proc LineWidth*(this: Graphic3d_Aspects): Standard_ShortReal {.noSideEffect,
    importcpp: "LineWidth", header: "Graphic3d_Aspects.hxx".}
proc SetLineWidth*(this: var Graphic3d_Aspects; theWidth: Standard_ShortReal) {.
    importcpp: "SetLineWidth", header: "Graphic3d_Aspects.hxx".}
proc DefaultLinePatternForType*(theType: Aspect_TypeOfLine): uint16_t {.
    importcpp: "Graphic3d_Aspects::DefaultLinePatternForType(@)",
    header: "Graphic3d_Aspects.hxx".}
proc DefaultLineTypeForPattern*(thePattern: uint16_t): Aspect_TypeOfLine {.
    importcpp: "Graphic3d_Aspects::DefaultLineTypeForPattern(@)",
    header: "Graphic3d_Aspects.hxx".}
proc MarkerType*(this: Graphic3d_Aspects): Aspect_TypeOfMarker {.noSideEffect,
    importcpp: "MarkerType", header: "Graphic3d_Aspects.hxx".}
proc SetMarkerType*(this: var Graphic3d_Aspects; theType: Aspect_TypeOfMarker) {.
    importcpp: "SetMarkerType", header: "Graphic3d_Aspects.hxx".}
proc MarkerScale*(this: Graphic3d_Aspects): Standard_ShortReal {.noSideEffect,
    importcpp: "MarkerScale", header: "Graphic3d_Aspects.hxx".}
proc SetMarkerScale*(this: var Graphic3d_Aspects; theScale: Standard_ShortReal) {.
    importcpp: "SetMarkerScale", header: "Graphic3d_Aspects.hxx".}
proc MarkerImage*(this: Graphic3d_Aspects): handle[Graphic3d_MarkerImage] {.
    noSideEffect, importcpp: "MarkerImage", header: "Graphic3d_Aspects.hxx".}
proc SetMarkerImage*(this: var Graphic3d_Aspects;
                    theImage: handle[Graphic3d_MarkerImage]) {.
    importcpp: "SetMarkerImage", header: "Graphic3d_Aspects.hxx".}
proc IsMarkerSprite*(this: Graphic3d_Aspects): bool {.noSideEffect,
    importcpp: "IsMarkerSprite", header: "Graphic3d_Aspects.hxx".}
proc TextFont*(this: Graphic3d_Aspects): handle[TCollection_HAsciiString] {.
    noSideEffect, importcpp: "TextFont", header: "Graphic3d_Aspects.hxx".}
proc SetTextFont*(this: var Graphic3d_Aspects;
                 theFont: handle[TCollection_HAsciiString]) {.
    importcpp: "SetTextFont", header: "Graphic3d_Aspects.hxx".}
proc TextFontAspect*(this: Graphic3d_Aspects): Font_FontAspect {.noSideEffect,
    importcpp: "TextFontAspect", header: "Graphic3d_Aspects.hxx".}
proc SetTextFontAspect*(this: var Graphic3d_Aspects; theFontAspect: Font_FontAspect) {.
    importcpp: "SetTextFontAspect", header: "Graphic3d_Aspects.hxx".}
proc TextDisplayType*(this: Graphic3d_Aspects): Aspect_TypeOfDisplayText {.
    noSideEffect, importcpp: "TextDisplayType", header: "Graphic3d_Aspects.hxx".}
proc SetTextDisplayType*(this: var Graphic3d_Aspects;
                        theType: Aspect_TypeOfDisplayText) {.
    importcpp: "SetTextDisplayType", header: "Graphic3d_Aspects.hxx".}
proc ColorSubTitleRGBA*(this: Graphic3d_Aspects): Quantity_ColorRGBA {.noSideEffect,
    importcpp: "ColorSubTitleRGBA", header: "Graphic3d_Aspects.hxx".}
proc ColorSubTitle*(this: Graphic3d_Aspects): Quantity_Color {.noSideEffect,
    importcpp: "ColorSubTitle", header: "Graphic3d_Aspects.hxx".}
proc SetColorSubTitle*(this: var Graphic3d_Aspects; theColor: Quantity_Color) {.
    importcpp: "SetColorSubTitle", header: "Graphic3d_Aspects.hxx".}
proc SetColorSubTitle*(this: var Graphic3d_Aspects; theColor: Quantity_ColorRGBA) {.
    importcpp: "SetColorSubTitle", header: "Graphic3d_Aspects.hxx".}
proc IsTextZoomable*(this: Graphic3d_Aspects): bool {.noSideEffect,
    importcpp: "IsTextZoomable", header: "Graphic3d_Aspects.hxx".}
proc SetTextZoomable*(this: var Graphic3d_Aspects; theFlag: bool) {.
    importcpp: "SetTextZoomable", header: "Graphic3d_Aspects.hxx".}
proc TextStyle*(this: Graphic3d_Aspects): Aspect_TypeOfStyleText {.noSideEffect,
    importcpp: "TextStyle", header: "Graphic3d_Aspects.hxx".}
proc SetTextStyle*(this: var Graphic3d_Aspects; theStyle: Aspect_TypeOfStyleText) {.
    importcpp: "SetTextStyle", header: "Graphic3d_Aspects.hxx".}
proc TextAngle*(this: Graphic3d_Aspects): Standard_ShortReal {.noSideEffect,
    importcpp: "TextAngle", header: "Graphic3d_Aspects.hxx".}
proc SetTextAngle*(this: var Graphic3d_Aspects; theAngle: Standard_ShortReal) {.
    importcpp: "SetTextAngle", header: "Graphic3d_Aspects.hxx".}
proc ToDrawEdges*(this: Graphic3d_Aspects): bool {.noSideEffect,
    importcpp: "ToDrawEdges", header: "Graphic3d_Aspects.hxx".}
proc SetDrawEdges*(this: var Graphic3d_Aspects; theToDraw: bool) {.
    importcpp: "SetDrawEdges", header: "Graphic3d_Aspects.hxx".}
proc SetEdgeOn*(this: var Graphic3d_Aspects) {.importcpp: "SetEdgeOn",
    header: "Graphic3d_Aspects.hxx".}
proc SetEdgeOff*(this: var Graphic3d_Aspects) {.importcpp: "SetEdgeOff",
    header: "Graphic3d_Aspects.hxx".}
proc EdgeColor*(this: Graphic3d_Aspects): Quantity_Color {.noSideEffect,
    importcpp: "EdgeColor", header: "Graphic3d_Aspects.hxx".}
proc EdgeColorRGBA*(this: Graphic3d_Aspects): Quantity_ColorRGBA {.noSideEffect,
    importcpp: "EdgeColorRGBA", header: "Graphic3d_Aspects.hxx".}
proc SetEdgeColor*(this: var Graphic3d_Aspects; theColor: Quantity_Color) {.
    importcpp: "SetEdgeColor", header: "Graphic3d_Aspects.hxx".}
proc SetEdgeColor*(this: var Graphic3d_Aspects; theColor: Quantity_ColorRGBA) {.
    importcpp: "SetEdgeColor", header: "Graphic3d_Aspects.hxx".}
proc EdgeLineType*(this: Graphic3d_Aspects): Aspect_TypeOfLine {.noSideEffect,
    importcpp: "EdgeLineType", header: "Graphic3d_Aspects.hxx".}
proc SetEdgeLineType*(this: var Graphic3d_Aspects; theType: Aspect_TypeOfLine) {.
    importcpp: "SetEdgeLineType", header: "Graphic3d_Aspects.hxx".}
proc EdgeWidth*(this: Graphic3d_Aspects): Standard_ShortReal {.noSideEffect,
    importcpp: "EdgeWidth", header: "Graphic3d_Aspects.hxx".}
proc SetEdgeWidth*(this: var Graphic3d_Aspects; theWidth: Standard_Real) {.
    importcpp: "SetEdgeWidth", header: "Graphic3d_Aspects.hxx".}
proc ToSkipFirstEdge*(this: Graphic3d_Aspects): bool {.noSideEffect,
    importcpp: "ToSkipFirstEdge", header: "Graphic3d_Aspects.hxx".}
proc SetSkipFirstEdge*(this: var Graphic3d_Aspects; theToSkipFirstEdge: bool) {.
    importcpp: "SetSkipFirstEdge", header: "Graphic3d_Aspects.hxx".}
proc ToDrawSilhouette*(this: Graphic3d_Aspects): bool {.noSideEffect,
    importcpp: "ToDrawSilhouette", header: "Graphic3d_Aspects.hxx".}
proc SetDrawSilhouette*(this: var Graphic3d_Aspects; theToDraw: bool) {.
    importcpp: "SetDrawSilhouette", header: "Graphic3d_Aspects.hxx".}
proc HatchStyle*(this: Graphic3d_Aspects): handle[Graphic3d_HatchStyle] {.
    noSideEffect, importcpp: "HatchStyle", header: "Graphic3d_Aspects.hxx".}
proc SetHatchStyle*(this: var Graphic3d_Aspects;
                   theStyle: handle[Graphic3d_HatchStyle]) {.
    importcpp: "SetHatchStyle", header: "Graphic3d_Aspects.hxx".}
proc SetHatchStyle*(this: var Graphic3d_Aspects; theStyle: Aspect_HatchStyle) {.
    importcpp: "SetHatchStyle", header: "Graphic3d_Aspects.hxx".}
proc IsEqual*(this: var Graphic3d_Aspects; theOther: Graphic3d_Aspects): bool {.
    importcpp: "IsEqual", header: "Graphic3d_Aspects.hxx".}
proc DumpJson*(this: Graphic3d_Aspects; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "Graphic3d_Aspects.hxx".}
discard "forward decl of Graphic3d_Aspects"
type
  Handle_Graphic3d_Aspects* = handle[Graphic3d_Aspects]
