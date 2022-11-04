import opengl_types
import ../../tkernel/standard/standard_types
import ../../tkv3d/graphic3d/graphic3d_types
import ../../tkservice/aspect/aspect_types
import ../../tkernel/ncollection/ncollection_types
import ../../tkmath/bnd/bnd_box
import ../../tkmath/gp/gp_types
import ../../tkernel/tcolstd/tcolstd_types
import ../../tkernel/tcollection/tcollection_types
import ../../tkernel/quantity/quantity_types

##  Created on: 2011-09-20
##  Created by: Sergey ZERCHANINOV
##  Copyright (c) 2011-2014 OPEN CASCADE SAS
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

discard "forward decl of OpenGl_Matrix"
discard "forward decl of Graphic3d_StructureManager"
discard "forward decl of OpenGl_GraphicDriver"
discard "forward decl of OpenGl_PBREnvironment"
discard "forward decl of OpenGl_StateCounter"
discard "forward decl of OpenGl_TriangleSet"
discard "forward decl of OpenGl_Workspace"
discard "forward decl of OpenGl_View"




proc newOpenGlView*(theMgr: Handle[Graphic3dStructureManager];
                   theDriver: Handle[OpenGlGraphicDriver];
                   theCaps: Handle[OpenGlCaps]; theCounter: ptr OpenGlStateCounter): OpenGlView {.
    cdecl, constructor, importcpp: "OpenGl_View(@)", header: "OpenGl_View.hxx".}
proc destroyOpenGlView*(this: var OpenGlView) {.cdecl, importcpp: "#.~OpenGl_View()",
    header: "OpenGl_View.hxx".}
proc releaseGlResources*(this: var OpenGlView; theCtx: Handle[OpenGlContext]) {.cdecl,
    importcpp: "ReleaseGlResources", header: "OpenGl_View.hxx".}
proc remove*(this: var OpenGlView) {.cdecl, importcpp: "Remove", header: "OpenGl_View.hxx".}
proc setImmediateModeDrawToFront*(this: var OpenGlView; theDrawToFrontBuffer: bool): bool {.
    cdecl, importcpp: "SetImmediateModeDrawToFront", header: "OpenGl_View.hxx".}
proc setWindow*(this: var OpenGlView; theWindow: Handle[AspectWindow];
               theContext: AspectRenderingContext) {.cdecl, importcpp: "SetWindow",
    header: "OpenGl_View.hxx".}
proc window*(this: OpenGlView): Handle[AspectWindow] {.noSideEffect, cdecl,
    importcpp: "Window", header: "OpenGl_View.hxx".}
proc isDefined*(this: OpenGlView): bool {.noSideEffect, cdecl, importcpp: "IsDefined",
                                      header: "OpenGl_View.hxx".}
proc resized*(this: var OpenGlView) {.cdecl, importcpp: "Resized", header: "OpenGl_View.hxx".}
proc redraw*(this: var OpenGlView) {.cdecl, importcpp: "Redraw", header: "OpenGl_View.hxx".}
proc redrawImmediate*(this: var OpenGlView) {.cdecl, importcpp: "RedrawImmediate",
    header: "OpenGl_View.hxx".}
proc invalidate*(this: var OpenGlView) {.cdecl, importcpp: "Invalidate",
                                     header: "OpenGl_View.hxx".}
proc isInvalidated*(this: var OpenGlView): bool {.cdecl, importcpp: "IsInvalidated",
    header: "OpenGl_View.hxx".}
# proc bufferDump*(this: var OpenGlView; theImage: var ImagePixMap;
#                 theBufferType: Graphic3dBufferType): bool {.cdecl,
#     importcpp: "BufferDump", header: "OpenGl_View.hxx".}
proc invalidateBVHData*(this: var OpenGlView; theLayerId: Graphic3dZLayerId) {.cdecl,
    importcpp: "InvalidateBVHData", header: "OpenGl_View.hxx".}
proc insertLayerBefore*(this: var OpenGlView; theLayerId: Graphic3dZLayerId;
                       theSettings: Graphic3dZLayerSettings;
                       theLayerAfter: Graphic3dZLayerId) {.cdecl,
    importcpp: "InsertLayerBefore", header: "OpenGl_View.hxx".}
proc insertLayerAfter*(this: var OpenGlView; theNewLayerId: Graphic3dZLayerId;
                      theSettings: Graphic3dZLayerSettings;
                      theLayerBefore: Graphic3dZLayerId) {.cdecl,
    importcpp: "InsertLayerAfter", header: "OpenGl_View.hxx".}
proc removeZLayer*(this: var OpenGlView; theLayerId: Graphic3dZLayerId) {.cdecl,
    importcpp: "RemoveZLayer", header: "OpenGl_View.hxx".}
proc setZLayerSettings*(this: var OpenGlView; theLayerId: Graphic3dZLayerId;
                       theSettings: Graphic3dZLayerSettings) {.cdecl,
    importcpp: "SetZLayerSettings", header: "OpenGl_View.hxx".}
proc zLayerMax*(this: OpenGlView): cint {.noSideEffect, cdecl, importcpp: "ZLayerMax",
                                      header: "OpenGl_View.hxx".}
proc layers*(this: OpenGlView): NCollectionList[Handle[Graphic3dLayer]] {.
    noSideEffect, cdecl, importcpp: "Layers", header: "OpenGl_View.hxx".}
proc layer*(this: OpenGlView; theLayerId: Graphic3dZLayerId): Handle[Graphic3dLayer] {.
    noSideEffect, cdecl, importcpp: "Layer", header: "OpenGl_View.hxx".}
# proc minMaxValues*(this: OpenGlView; theToIncludeAuxiliary: bool): BndBox {.
#     noSideEffect, cdecl, importcpp: "MinMaxValues", header: "OpenGl_View.hxx".}
proc fbo*(this: OpenGlView): Handle[StandardTransient] {.noSideEffect, cdecl,
    importcpp: "FBO", header: "OpenGl_View.hxx".}
proc setFBO*(this: var OpenGlView; theFbo: Handle[StandardTransient]) {.cdecl,
    importcpp: "SetFBO", header: "OpenGl_View.hxx".}
proc fBOCreate*(this: var OpenGlView; theWidth: cint; theHeight: cint): Handle[
    StandardTransient] {.cdecl, importcpp: "FBOCreate", header: "OpenGl_View.hxx".}
proc fBORelease*(this: var OpenGlView; theFbo: var Handle[StandardTransient]) {.cdecl,
    importcpp: "FBORelease", header: "OpenGl_View.hxx".}
proc fBOGetDimensions*(this: var OpenGlView; theFbo: Handle[StandardTransient];
                      theWidth: var cint; theHeight: var cint; theWidthMax: var cint;
                      theHeightMax: var cint) {.cdecl,
    importcpp: "FBOGetDimensions", header: "OpenGl_View.hxx".}
proc fBOChangeViewport*(this: var OpenGlView; theFbo: Handle[StandardTransient];
                       theWidth: cint; theHeight: cint) {.cdecl,
    importcpp: "FBOChangeViewport", header: "OpenGl_View.hxx".}
proc gradientBackground*(this: OpenGlView): AspectGradientBackground {.noSideEffect,
    cdecl, importcpp: "GradientBackground", header: "OpenGl_View.hxx".}
proc setGradientBackground*(this: var OpenGlView;
                           theBackground: AspectGradientBackground) {.cdecl,
    importcpp: "SetGradientBackground", header: "OpenGl_View.hxx".}
proc backgroundImage*(this: var OpenGlView): Handle[Graphic3dTextureMap] {.cdecl,
    importcpp: "BackgroundImage", header: "OpenGl_View.hxx".}
proc setBackgroundImage*(this: var OpenGlView;
                        theTextureMap: Handle[Graphic3dTextureMap];
                        theToUpdatePBREnv: bool = true) {.cdecl,
    importcpp: "SetBackgroundImage", header: "OpenGl_View.hxx".}
proc backgroundImageStyle*(this: OpenGlView): AspectFillMethod {.noSideEffect, cdecl,
    importcpp: "BackgroundImageStyle", header: "OpenGl_View.hxx".}
proc setBackgroundImageStyle*(this: var OpenGlView; theFillStyle: AspectFillMethod) {.
    cdecl, importcpp: "SetBackgroundImageStyle", header: "OpenGl_View.hxx".}
proc backgroundCubeMap*(this: OpenGlView): Handle[Graphic3dCubeMap] {.noSideEffect,
    cdecl, importcpp: "BackgroundCubeMap", header: "OpenGl_View.hxx".}
proc generatePBREnvironment*(this: var OpenGlView) {.cdecl,
    importcpp: "GeneratePBREnvironment", header: "OpenGl_View.hxx".}
proc clearPBREnvironment*(this: var OpenGlView) {.cdecl,
    importcpp: "ClearPBREnvironment", header: "OpenGl_View.hxx".}
proc specIBLMapLevels*(this: OpenGlView): cuint {.noSideEffect, cdecl,
    importcpp: "SpecIBLMapLevels", header: "OpenGl_View.hxx".}
proc textureEnv*(this: OpenGlView): Handle[Graphic3dTextureEnv] {.noSideEffect,
    cdecl, importcpp: "TextureEnv", header: "OpenGl_View.hxx".}
proc setTextureEnv*(this: var OpenGlView; theTextureEnv: Handle[Graphic3dTextureEnv]) {.
    cdecl, importcpp: "SetTextureEnv", header: "OpenGl_View.hxx".}
proc backfacingModel*(this: OpenGlView): Graphic3dTypeOfBackfacingModel {.
    noSideEffect, cdecl, importcpp: "BackfacingModel", header: "OpenGl_View.hxx".}
proc setBackfacingModel*(this: var OpenGlView;
                        theModel: Graphic3dTypeOfBackfacingModel) {.cdecl,
    importcpp: "SetBackfacingModel", header: "OpenGl_View.hxx".}
proc localOrigin*(this: OpenGlView): XyzObj {.noSideEffect, cdecl,
                                       importcpp: "LocalOrigin", header: "OpenGl_View.hxx".}
proc setLocalOrigin*(this: var OpenGlView; theOrigin: XyzObj) {.cdecl,
    importcpp: "SetLocalOrigin", header: "OpenGl_View.hxx".}
proc lights*(this: OpenGlView): Handle[Graphic3dLightSet] {.noSideEffect, cdecl,
    importcpp: "Lights", header: "OpenGl_View.hxx".}
proc setLights*(this: var OpenGlView; theLights: Handle[Graphic3dLightSet]) {.cdecl,
    importcpp: "SetLights", header: "OpenGl_View.hxx".}
proc clipPlanes*(this: OpenGlView): Handle[Graphic3dSequenceOfHClipPlane] {.
    noSideEffect, cdecl, importcpp: "ClipPlanes", header: "OpenGl_View.hxx".}
proc setClipPlanes*(this: var OpenGlView;
                   thePlanes: Handle[Graphic3dSequenceOfHClipPlane]) {.cdecl,
    importcpp: "SetClipPlanes", header: "OpenGl_View.hxx".}
proc diagnosticInformation*(this: OpenGlView;
                           theDict: var TColStdIndexedDataMapOfStringString;
                           theFlags: Graphic3dDiagnosticInfo) {.noSideEffect,
    cdecl, importcpp: "DiagnosticInformation", header: "OpenGl_View.hxx".}
proc statisticInformation*(this: OpenGlView): TCollectionAsciiString {.noSideEffect,
    cdecl, importcpp: "StatisticInformation", header: "OpenGl_View.hxx".}
proc statisticInformation*(this: OpenGlView;
                          theDict: var TColStdIndexedDataMapOfStringString) {.
    noSideEffect, cdecl, importcpp: "StatisticInformation", header: "OpenGl_View.hxx".}
proc backgroundColor*(this: OpenGlView): QuantityColorRGBA {.noSideEffect, cdecl,
    importcpp: "BackgroundColor", header: "OpenGl_View.hxx".}
proc changeGraduatedTrihedron*(this: var OpenGlView): var OpenGlGraduatedTrihedron {.
    cdecl, importcpp: "ChangeGraduatedTrihedron", header: "OpenGl_View.hxx".}
proc setTextureEnv*(this: var OpenGlView; theCtx: Handle[OpenGlContext];
                   theTexture: Handle[Graphic3dTextureEnv]) {.cdecl,
    importcpp: "SetTextureEnv", header: "OpenGl_View.hxx".}
proc setBackgroundTextureStyle*(this: var OpenGlView; fillStyle: AspectFillMethod) {.
    cdecl, importcpp: "SetBackgroundTextureStyle", header: "OpenGl_View.hxx".}
proc setBackgroundGradient*(this: var OpenGlView; aColor1: QuantityColor;
                           aColor2: QuantityColor; aType: AspectGradientFillMethod) {.
    cdecl, importcpp: "SetBackgroundGradient", header: "OpenGl_View.hxx".}
proc setBackgroundGradientType*(this: var OpenGlView;
                               aType: AspectGradientFillMethod) {.cdecl,
    importcpp: "SetBackgroundGradientType", header: "OpenGl_View.hxx".}
proc layerList*(this: OpenGlView): OpenGlLayerList {.noSideEffect, cdecl,
    importcpp: "LayerList", header: "OpenGl_View.hxx".}
proc glWindow*(this: OpenGlView): Handle[OpenGlWindow] {.noSideEffect, cdecl,
    importcpp: "GlWindow", header: "OpenGl_View.hxx".}
proc glTextureEnv*(this: OpenGlView): Handle[OpenGlTextureSet] {.noSideEffect, cdecl,
    importcpp: "GlTextureEnv", header: "OpenGl_View.hxx".}
proc bVHTreeSelector*(this: OpenGlView): Graphic3dCullingTool {.noSideEffect, cdecl,
    importcpp: "BVHTreeSelector", header: "OpenGl_View.hxx".}
proc hasImmediateStructures*(this: OpenGlView): bool {.noSideEffect, cdecl,
    importcpp: "HasImmediateStructures", header: "OpenGl_View.hxx".}
proc graduatedTrihedronDisplay*(this: var OpenGlView;
                               theTrihedronData: Graphic3dGraduatedTrihedron) {.
    cdecl, importcpp: "GraduatedTrihedronDisplay", header: "OpenGl_View.hxx".}
proc graduatedTrihedronErase*(this: var OpenGlView) {.cdecl,
    importcpp: "GraduatedTrihedronErase", header: "OpenGl_View.hxx".}
proc graduatedTrihedronMinMaxValues*(this: var OpenGlView; theMin: Graphic3dVec3;
                                    theMax: Graphic3dVec3) {.cdecl,
    importcpp: "GraduatedTrihedronMinMaxValues", header: "OpenGl_View.hxx".}
