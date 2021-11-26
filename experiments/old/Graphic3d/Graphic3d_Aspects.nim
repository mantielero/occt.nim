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

## ! This class defines graphic attributes.

type
  Graphic3dAspects* {.importcpp: "Graphic3d_Aspects",
                     header: "Graphic3d_Aspects.hxx", bycopy.} = object of StandardTransient ##
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

  Graphic3dAspectsbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "Graphic3d_Aspects::get_type_name(@)",
                            header: "Graphic3d_Aspects.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "Graphic3d_Aspects::get_type_descriptor(@)",
    header: "Graphic3d_Aspects.hxx".}
proc dynamicType*(this: Graphic3dAspects): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "Graphic3d_Aspects.hxx".}
proc constructGraphic3dAspects*(): Graphic3dAspects {.constructor,
    importcpp: "Graphic3d_Aspects(@)", header: "Graphic3d_Aspects.hxx".}
proc interiorStyle*(this: Graphic3dAspects): AspectInteriorStyle {.noSideEffect,
    importcpp: "InteriorStyle", header: "Graphic3d_Aspects.hxx".}
proc setInteriorStyle*(this: var Graphic3dAspects; theStyle: AspectInteriorStyle) {.
    importcpp: "SetInteriorStyle", header: "Graphic3d_Aspects.hxx".}
proc shadingModel*(this: Graphic3dAspects): Graphic3dTypeOfShadingModel {.
    noSideEffect, importcpp: "ShadingModel", header: "Graphic3d_Aspects.hxx".}
proc setShadingModel*(this: var Graphic3dAspects;
                     theShadingModel: Graphic3dTypeOfShadingModel) {.
    importcpp: "SetShadingModel", header: "Graphic3d_Aspects.hxx".}
proc alphaMode*(this: Graphic3dAspects): Graphic3dAlphaMode {.noSideEffect,
    importcpp: "AlphaMode", header: "Graphic3d_Aspects.hxx".}
proc alphaCutoff*(this: Graphic3dAspects): StandardShortReal {.noSideEffect,
    importcpp: "AlphaCutoff", header: "Graphic3d_Aspects.hxx".}
proc setAlphaMode*(this: var Graphic3dAspects; theMode: Graphic3dAlphaMode;
                  theAlphaCutoff: StandardShortReal = 0.5f) {.
    importcpp: "SetAlphaMode", header: "Graphic3d_Aspects.hxx".}
proc colorRGBA*(this: Graphic3dAspects): QuantityColorRGBA {.noSideEffect,
    importcpp: "ColorRGBA", header: "Graphic3d_Aspects.hxx".}
proc color*(this: Graphic3dAspects): QuantityColor {.noSideEffect,
    importcpp: "Color", header: "Graphic3d_Aspects.hxx".}
proc setColor*(this: var Graphic3dAspects; theColor: QuantityColor) {.
    importcpp: "SetColor", header: "Graphic3d_Aspects.hxx".}
proc interiorColor*(this: Graphic3dAspects): QuantityColor {.noSideEffect,
    importcpp: "InteriorColor", header: "Graphic3d_Aspects.hxx".}
proc interiorColorRGBA*(this: Graphic3dAspects): QuantityColorRGBA {.noSideEffect,
    importcpp: "InteriorColorRGBA", header: "Graphic3d_Aspects.hxx".}
proc setInteriorColor*(this: var Graphic3dAspects; theColor: QuantityColor) {.
    importcpp: "SetInteriorColor", header: "Graphic3d_Aspects.hxx".}
proc setInteriorColor*(this: var Graphic3dAspects; theColor: QuantityColorRGBA) {.
    importcpp: "SetInteriorColor", header: "Graphic3d_Aspects.hxx".}
proc backInteriorColor*(this: Graphic3dAspects): QuantityColor {.noSideEffect,
    importcpp: "BackInteriorColor", header: "Graphic3d_Aspects.hxx".}
proc backInteriorColorRGBA*(this: Graphic3dAspects): QuantityColorRGBA {.
    noSideEffect, importcpp: "BackInteriorColorRGBA",
    header: "Graphic3d_Aspects.hxx".}
proc setBackInteriorColor*(this: var Graphic3dAspects; theColor: QuantityColor) {.
    importcpp: "SetBackInteriorColor", header: "Graphic3d_Aspects.hxx".}
proc setBackInteriorColor*(this: var Graphic3dAspects; theColor: QuantityColorRGBA) {.
    importcpp: "SetBackInteriorColor", header: "Graphic3d_Aspects.hxx".}
proc frontMaterial*(this: Graphic3dAspects): Graphic3dMaterialAspect {.noSideEffect,
    importcpp: "FrontMaterial", header: "Graphic3d_Aspects.hxx".}
proc changeFrontMaterial*(this: var Graphic3dAspects): var Graphic3dMaterialAspect {.
    importcpp: "ChangeFrontMaterial", header: "Graphic3d_Aspects.hxx".}
proc setFrontMaterial*(this: var Graphic3dAspects;
                      theMaterial: Graphic3dMaterialAspect) {.
    importcpp: "SetFrontMaterial", header: "Graphic3d_Aspects.hxx".}
proc backMaterial*(this: Graphic3dAspects): Graphic3dMaterialAspect {.noSideEffect,
    importcpp: "BackMaterial", header: "Graphic3d_Aspects.hxx".}
proc changeBackMaterial*(this: var Graphic3dAspects): var Graphic3dMaterialAspect {.
    importcpp: "ChangeBackMaterial", header: "Graphic3d_Aspects.hxx".}
proc setBackMaterial*(this: var Graphic3dAspects;
                     theMaterial: Graphic3dMaterialAspect) {.
    importcpp: "SetBackMaterial", header: "Graphic3d_Aspects.hxx".}
proc toSuppressBackFaces*(this: Graphic3dAspects): bool {.noSideEffect,
    importcpp: "ToSuppressBackFaces", header: "Graphic3d_Aspects.hxx".}
proc setSuppressBackFaces*(this: var Graphic3dAspects; theToSuppress: bool) {.
    importcpp: "SetSuppressBackFaces", header: "Graphic3d_Aspects.hxx".}
proc backFace*(this: Graphic3dAspects): bool {.noSideEffect, importcpp: "BackFace",
    header: "Graphic3d_Aspects.hxx".}
proc allowBackFace*(this: var Graphic3dAspects) {.importcpp: "AllowBackFace",
    header: "Graphic3d_Aspects.hxx".}
proc suppressBackFace*(this: var Graphic3dAspects) {.importcpp: "SuppressBackFace",
    header: "Graphic3d_Aspects.hxx".}
proc distinguish*(this: Graphic3dAspects): bool {.noSideEffect,
    importcpp: "Distinguish", header: "Graphic3d_Aspects.hxx".}
proc setDistinguish*(this: var Graphic3dAspects; toDistinguish: bool) {.
    importcpp: "SetDistinguish", header: "Graphic3d_Aspects.hxx".}
proc setDistinguishOn*(this: var Graphic3dAspects) {.importcpp: "SetDistinguishOn",
    header: "Graphic3d_Aspects.hxx".}
proc setDistinguishOff*(this: var Graphic3dAspects) {.
    importcpp: "SetDistinguishOff", header: "Graphic3d_Aspects.hxx".}
proc shaderProgram*(this: Graphic3dAspects): Handle[Graphic3dShaderProgram] {.
    noSideEffect, importcpp: "ShaderProgram", header: "Graphic3d_Aspects.hxx".}
proc setShaderProgram*(this: var Graphic3dAspects;
                      theProgram: Handle[Graphic3dShaderProgram]) {.
    importcpp: "SetShaderProgram", header: "Graphic3d_Aspects.hxx".}
proc textureSet*(this: Graphic3dAspects): Handle[Graphic3dTextureSet] {.
    noSideEffect, importcpp: "TextureSet", header: "Graphic3d_Aspects.hxx".}
proc setTextureSet*(this: var Graphic3dAspects;
                   theTextures: Handle[Graphic3dTextureSet]) {.
    importcpp: "SetTextureSet", header: "Graphic3d_Aspects.hxx".}
proc textureMap*(this: Graphic3dAspects): Handle[Graphic3dTextureMap] {.
    noSideEffect, importcpp: "TextureMap", header: "Graphic3d_Aspects.hxx".}
proc setTextureMap*(this: var Graphic3dAspects;
                   theTexture: Handle[Graphic3dTextureMap]) {.
    importcpp: "SetTextureMap", header: "Graphic3d_Aspects.hxx".}
proc toMapTexture*(this: Graphic3dAspects): bool {.noSideEffect,
    importcpp: "ToMapTexture", header: "Graphic3d_Aspects.hxx".}
proc textureMapState*(this: Graphic3dAspects): bool {.noSideEffect,
    importcpp: "TextureMapState", header: "Graphic3d_Aspects.hxx".}
proc setTextureMapOn*(this: var Graphic3dAspects; theToMap: bool) {.
    importcpp: "SetTextureMapOn", header: "Graphic3d_Aspects.hxx".}
proc setTextureMapOn*(this: var Graphic3dAspects) {.importcpp: "SetTextureMapOn",
    header: "Graphic3d_Aspects.hxx".}
proc setTextureMapOff*(this: var Graphic3dAspects) {.importcpp: "SetTextureMapOff",
    header: "Graphic3d_Aspects.hxx".}
proc polygonOffset*(this: Graphic3dAspects): Graphic3dPolygonOffset {.noSideEffect,
    importcpp: "PolygonOffset", header: "Graphic3d_Aspects.hxx".}
proc setPolygonOffset*(this: var Graphic3dAspects; theOffset: Graphic3dPolygonOffset) {.
    importcpp: "SetPolygonOffset", header: "Graphic3d_Aspects.hxx".}
proc polygonOffsets*(this: Graphic3dAspects; theMode: var cint;
                    theFactor: var StandardShortReal;
                    theUnits: var StandardShortReal) {.noSideEffect,
    importcpp: "PolygonOffsets", header: "Graphic3d_Aspects.hxx".}
proc setPolygonOffsets*(this: var Graphic3dAspects; theMode: cint;
                       theFactor: StandardShortReal = 1.0f;
                       theUnits: StandardShortReal = 0.0f) {.
    importcpp: "SetPolygonOffsets", header: "Graphic3d_Aspects.hxx".}
proc lineType*(this: Graphic3dAspects): AspectTypeOfLine {.noSideEffect,
    importcpp: "LineType", header: "Graphic3d_Aspects.hxx".}
proc setLineType*(this: var Graphic3dAspects; theType: AspectTypeOfLine) {.
    importcpp: "SetLineType", header: "Graphic3d_Aspects.hxx".}
proc linePattern*(this: Graphic3dAspects): uint16T {.noSideEffect,
    importcpp: "LinePattern", header: "Graphic3d_Aspects.hxx".}
proc setLinePattern*(this: var Graphic3dAspects; thePattern: uint16T) {.
    importcpp: "SetLinePattern", header: "Graphic3d_Aspects.hxx".}
proc lineStippleFactor*(this: Graphic3dAspects): uint16T {.noSideEffect,
    importcpp: "LineStippleFactor", header: "Graphic3d_Aspects.hxx".}
proc setLineStippleFactor*(this: var Graphic3dAspects; theFactor: uint16T) {.
    importcpp: "SetLineStippleFactor", header: "Graphic3d_Aspects.hxx".}
proc lineWidth*(this: Graphic3dAspects): StandardShortReal {.noSideEffect,
    importcpp: "LineWidth", header: "Graphic3d_Aspects.hxx".}
proc setLineWidth*(this: var Graphic3dAspects; theWidth: StandardShortReal) {.
    importcpp: "SetLineWidth", header: "Graphic3d_Aspects.hxx".}
proc defaultLinePatternForType*(theType: AspectTypeOfLine): uint16T {.
    importcpp: "Graphic3d_Aspects::DefaultLinePatternForType(@)",
    header: "Graphic3d_Aspects.hxx".}
proc defaultLineTypeForPattern*(thePattern: uint16T): AspectTypeOfLine {.
    importcpp: "Graphic3d_Aspects::DefaultLineTypeForPattern(@)",
    header: "Graphic3d_Aspects.hxx".}
proc markerType*(this: Graphic3dAspects): AspectTypeOfMarker {.noSideEffect,
    importcpp: "MarkerType", header: "Graphic3d_Aspects.hxx".}
proc setMarkerType*(this: var Graphic3dAspects; theType: AspectTypeOfMarker) {.
    importcpp: "SetMarkerType", header: "Graphic3d_Aspects.hxx".}
proc markerScale*(this: Graphic3dAspects): StandardShortReal {.noSideEffect,
    importcpp: "MarkerScale", header: "Graphic3d_Aspects.hxx".}
proc setMarkerScale*(this: var Graphic3dAspects; theScale: StandardShortReal) {.
    importcpp: "SetMarkerScale", header: "Graphic3d_Aspects.hxx".}
proc markerImage*(this: Graphic3dAspects): Handle[Graphic3dMarkerImage] {.
    noSideEffect, importcpp: "MarkerImage", header: "Graphic3d_Aspects.hxx".}
proc setMarkerImage*(this: var Graphic3dAspects;
                    theImage: Handle[Graphic3dMarkerImage]) {.
    importcpp: "SetMarkerImage", header: "Graphic3d_Aspects.hxx".}
proc isMarkerSprite*(this: Graphic3dAspects): bool {.noSideEffect,
    importcpp: "IsMarkerSprite", header: "Graphic3d_Aspects.hxx".}
proc textFont*(this: Graphic3dAspects): Handle[TCollectionHAsciiString] {.
    noSideEffect, importcpp: "TextFont", header: "Graphic3d_Aspects.hxx".}
proc setTextFont*(this: var Graphic3dAspects;
                 theFont: Handle[TCollectionHAsciiString]) {.
    importcpp: "SetTextFont", header: "Graphic3d_Aspects.hxx".}
proc textFontAspect*(this: Graphic3dAspects): FontFontAspect {.noSideEffect,
    importcpp: "TextFontAspect", header: "Graphic3d_Aspects.hxx".}
proc setTextFontAspect*(this: var Graphic3dAspects; theFontAspect: FontFontAspect) {.
    importcpp: "SetTextFontAspect", header: "Graphic3d_Aspects.hxx".}
proc textDisplayType*(this: Graphic3dAspects): AspectTypeOfDisplayText {.
    noSideEffect, importcpp: "TextDisplayType", header: "Graphic3d_Aspects.hxx".}
proc setTextDisplayType*(this: var Graphic3dAspects;
                        theType: AspectTypeOfDisplayText) {.
    importcpp: "SetTextDisplayType", header: "Graphic3d_Aspects.hxx".}
proc colorSubTitleRGBA*(this: Graphic3dAspects): QuantityColorRGBA {.noSideEffect,
    importcpp: "ColorSubTitleRGBA", header: "Graphic3d_Aspects.hxx".}
proc colorSubTitle*(this: Graphic3dAspects): QuantityColor {.noSideEffect,
    importcpp: "ColorSubTitle", header: "Graphic3d_Aspects.hxx".}
proc setColorSubTitle*(this: var Graphic3dAspects; theColor: QuantityColor) {.
    importcpp: "SetColorSubTitle", header: "Graphic3d_Aspects.hxx".}
proc setColorSubTitle*(this: var Graphic3dAspects; theColor: QuantityColorRGBA) {.
    importcpp: "SetColorSubTitle", header: "Graphic3d_Aspects.hxx".}
proc isTextZoomable*(this: Graphic3dAspects): bool {.noSideEffect,
    importcpp: "IsTextZoomable", header: "Graphic3d_Aspects.hxx".}
proc setTextZoomable*(this: var Graphic3dAspects; theFlag: bool) {.
    importcpp: "SetTextZoomable", header: "Graphic3d_Aspects.hxx".}
proc textStyle*(this: Graphic3dAspects): AspectTypeOfStyleText {.noSideEffect,
    importcpp: "TextStyle", header: "Graphic3d_Aspects.hxx".}
proc setTextStyle*(this: var Graphic3dAspects; theStyle: AspectTypeOfStyleText) {.
    importcpp: "SetTextStyle", header: "Graphic3d_Aspects.hxx".}
proc textAngle*(this: Graphic3dAspects): StandardShortReal {.noSideEffect,
    importcpp: "TextAngle", header: "Graphic3d_Aspects.hxx".}
proc setTextAngle*(this: var Graphic3dAspects; theAngle: StandardShortReal) {.
    importcpp: "SetTextAngle", header: "Graphic3d_Aspects.hxx".}
proc toDrawEdges*(this: Graphic3dAspects): bool {.noSideEffect,
    importcpp: "ToDrawEdges", header: "Graphic3d_Aspects.hxx".}
proc setDrawEdges*(this: var Graphic3dAspects; theToDraw: bool) {.
    importcpp: "SetDrawEdges", header: "Graphic3d_Aspects.hxx".}
proc setEdgeOn*(this: var Graphic3dAspects) {.importcpp: "SetEdgeOn",
    header: "Graphic3d_Aspects.hxx".}
proc setEdgeOff*(this: var Graphic3dAspects) {.importcpp: "SetEdgeOff",
    header: "Graphic3d_Aspects.hxx".}
proc edgeColor*(this: Graphic3dAspects): QuantityColor {.noSideEffect,
    importcpp: "EdgeColor", header: "Graphic3d_Aspects.hxx".}
proc edgeColorRGBA*(this: Graphic3dAspects): QuantityColorRGBA {.noSideEffect,
    importcpp: "EdgeColorRGBA", header: "Graphic3d_Aspects.hxx".}
proc setEdgeColor*(this: var Graphic3dAspects; theColor: QuantityColor) {.
    importcpp: "SetEdgeColor", header: "Graphic3d_Aspects.hxx".}
proc setEdgeColor*(this: var Graphic3dAspects; theColor: QuantityColorRGBA) {.
    importcpp: "SetEdgeColor", header: "Graphic3d_Aspects.hxx".}
proc edgeLineType*(this: Graphic3dAspects): AspectTypeOfLine {.noSideEffect,
    importcpp: "EdgeLineType", header: "Graphic3d_Aspects.hxx".}
proc setEdgeLineType*(this: var Graphic3dAspects; theType: AspectTypeOfLine) {.
    importcpp: "SetEdgeLineType", header: "Graphic3d_Aspects.hxx".}
proc edgeWidth*(this: Graphic3dAspects): StandardShortReal {.noSideEffect,
    importcpp: "EdgeWidth", header: "Graphic3d_Aspects.hxx".}
proc setEdgeWidth*(this: var Graphic3dAspects; theWidth: cfloat) {.
    importcpp: "SetEdgeWidth", header: "Graphic3d_Aspects.hxx".}
proc toSkipFirstEdge*(this: Graphic3dAspects): bool {.noSideEffect,
    importcpp: "ToSkipFirstEdge", header: "Graphic3d_Aspects.hxx".}
proc setSkipFirstEdge*(this: var Graphic3dAspects; theToSkipFirstEdge: bool) {.
    importcpp: "SetSkipFirstEdge", header: "Graphic3d_Aspects.hxx".}
proc toDrawSilhouette*(this: Graphic3dAspects): bool {.noSideEffect,
    importcpp: "ToDrawSilhouette", header: "Graphic3d_Aspects.hxx".}
proc setDrawSilhouette*(this: var Graphic3dAspects; theToDraw: bool) {.
    importcpp: "SetDrawSilhouette", header: "Graphic3d_Aspects.hxx".}
proc hatchStyle*(this: Graphic3dAspects): Handle[Graphic3dHatchStyle] {.
    noSideEffect, importcpp: "HatchStyle", header: "Graphic3d_Aspects.hxx".}
proc setHatchStyle*(this: var Graphic3dAspects;
                   theStyle: Handle[Graphic3dHatchStyle]) {.
    importcpp: "SetHatchStyle", header: "Graphic3d_Aspects.hxx".}
proc setHatchStyle*(this: var Graphic3dAspects; theStyle: AspectHatchStyle) {.
    importcpp: "SetHatchStyle", header: "Graphic3d_Aspects.hxx".}
proc isEqual*(this: var Graphic3dAspects; theOther: Graphic3dAspects): bool {.
    importcpp: "IsEqual", header: "Graphic3d_Aspects.hxx".}
proc dumpJson*(this: Graphic3dAspects; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, importcpp: "DumpJson",
                                 header: "Graphic3d_Aspects.hxx".}
discard "forward decl of Graphic3d_Aspects"
type
  HandleC1C1* = Handle[Graphic3dAspects]


























