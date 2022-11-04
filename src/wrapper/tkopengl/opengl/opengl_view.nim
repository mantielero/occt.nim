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
type
  HandleOpenGlView* = Handle[OpenGlView]

## ! Implementation of OpenGl view.

type
  OpenGlView* {.importcpp: "OpenGl_View", header: "OpenGl_View.hxx", bycopy.} = object of Graphic3dCView ##
                                                                                               ## !
                                                                                               ## Constructor.
                                                                                               ##
                                                                                               ## !
                                                                                               ## Returns
                                                                                               ## gradient
                                                                                               ## background
                                                                                               ## fill
                                                                                               ## colors.
                                                                                               ##
                                                                                               ## !
                                                                                               ## Returns
                                                                                               ## background
                                                                                               ## color.
                                                                                               ##
                                                                                               ## !
                                                                                               ## @name
                                                                                               ## obsolete
                                                                                               ## Graduated
                                                                                               ## Trihedron
                                                                                               ## functionality
                                                                                               ##
                                                                                               ## !
                                                                                               ## Displays
                                                                                               ## Graduated
                                                                                               ## Trihedron.
                                                                                               ##
                                                                                               ## !
                                                                                               ## @name
                                                                                               ## Internal
                                                                                               ## methods
                                                                                               ## for
                                                                                               ## managing
                                                                                               ## GL
                                                                                               ## resources
                                                                                               ##
                                                                                               ## !
                                                                                               ## Initializes
                                                                                               ## OpenGl
                                                                                               ## resource
                                                                                               ## for
                                                                                               ## environment
                                                                                               ## texture.
                                                                                               ##
                                                                                               ## !
                                                                                               ## @name
                                                                                               ## low-level
                                                                                               ## redrawing
                                                                                               ## sub-routines
                                                                                               ##
                                                                                               ## !
                                                                                               ## Redraws
                                                                                               ## view
                                                                                               ## for
                                                                                               ## the
                                                                                               ## given
                                                                                               ## monographic
                                                                                               ## camera
                                                                                               ## projection,
                                                                                               ## or
                                                                                               ## left/right
                                                                                               ## eye.
                                                                                               ##
                                                                                               ## !
                                                                                               ## @name
                                                                                               ## Rendering
                                                                                               ## of
                                                                                               ## GL
                                                                                               ## graphics
                                                                                               ## (with
                                                                                               ## prepared
                                                                                               ## drawing
                                                                                               ## buffer).
                                                                                               ##
                                                                                               ## !
                                                                                               ## Renders
                                                                                               ## the
                                                                                               ## graphical
                                                                                               ## contents
                                                                                               ## of
                                                                                               ## the
                                                                                               ## view
                                                                                               ## into
                                                                                               ## the
                                                                                               ## preprepared
                                                                                               ## window
                                                                                               ## or
                                                                                               ## framebuffer.
                                                                                               ##
                                                                                               ## !
                                                                                               ## @param
                                                                                               ## theProjection
                                                                                               ## [in]
                                                                                               ## the
                                                                                               ## projection
                                                                                               ## that
                                                                                               ## should
                                                                                               ## be
                                                                                               ## used
                                                                                               ## for
                                                                                               ## rendering.
                                                                                               ##
                                                                                               ## !
                                                                                               ## @param
                                                                                               ## theReadDrawFbo
                                                                                               ## [in]
                                                                                               ## the
                                                                                               ## framebuffer
                                                                                               ## for
                                                                                               ## rendering
                                                                                               ## graphics.
                                                                                               ##
                                                                                               ## !
                                                                                               ## @param
                                                                                               ## theOitAccumFbo
                                                                                               ## [in]
                                                                                               ## the
                                                                                               ## framebuffer
                                                                                               ## for
                                                                                               ## accumulating
                                                                                               ## color
                                                                                               ## and
                                                                                               ## coverage
                                                                                               ## for
                                                                                               ## OIT
                                                                                               ## process.
                                                                                               ##
                                                                                               ## !
                                                                                               ## @param
                                                                                               ## theToDrawImmediate
                                                                                               ## [in]
                                                                                               ## the
                                                                                               ## flag
                                                                                               ## indicates
                                                                                               ## whether
                                                                                               ## the
                                                                                               ## rendering
                                                                                               ## performs
                                                                                               ## in
                                                                                               ## immediate
                                                                                               ## mode.
                                                                                               ##
                                                                                               ## !
                                                                                               ## Adds
                                                                                               ## the
                                                                                               ## structure
                                                                                               ## to
                                                                                               ## display
                                                                                               ## lists
                                                                                               ## of
                                                                                               ## the
                                                                                               ## view.
                                                                                               ##
                                                                                               ## !
                                                                                               ## Release
                                                                                               ## sRGB
                                                                                               ## resources
                                                                                               ## (frame-buffers,
                                                                                               ## textures,
                                                                                               ## etc.).
                                                                                               ##
                                                                                               ## !
                                                                                               ## @name
                                                                                               ## Rendering
                                                                                               ## properties
                                                                                               ##
                                                                                               ## !
                                                                                               ## Two
                                                                                               ## framebuffers
                                                                                               ## (left
                                                                                               ## and
                                                                                               ## right
                                                                                               ## views)
                                                                                               ## store
                                                                                               ## cached
                                                                                               ## main
                                                                                               ## presentation
                                                                                               ##
                                                                                               ## !
                                                                                               ## of
                                                                                               ## the
                                                                                               ## view
                                                                                               ## (without
                                                                                               ## presentation
                                                                                               ## of
                                                                                               ## immediate
                                                                                               ## layers).
                                                                                               ##
                                                                                               ## !
                                                                                               ## @name
                                                                                               ## Background
                                                                                               ## parameters
                                                                                               ##
                                                                                               ## !
                                                                                               ## @name
                                                                                               ## methods
                                                                                               ## related
                                                                                               ## to
                                                                                               ## PBR
                                                                                               ##
                                                                                               ## !
                                                                                               ## Checks
                                                                                               ## whether
                                                                                               ## PBR
                                                                                               ## is
                                                                                               ## available.
                                                                                               ##
                                                                                               ## !
                                                                                               ## @name
                                                                                               ## fields
                                                                                               ## and
                                                                                               ## types
                                                                                               ## related
                                                                                               ## to
                                                                                               ## PBR
                                                                                               ##
                                                                                               ## !
                                                                                               ## State
                                                                                               ## of
                                                                                               ## PBR
                                                                                               ## environment.
                                                                                               ##
                                                                                               ## !
                                                                                               ## @name
                                                                                               ## data
                                                                                               ## types
                                                                                               ## related
                                                                                               ## to
                                                                                               ## ray-tracing
                                                                                               ##
                                                                                               ## !
                                                                                               ## Result
                                                                                               ## of
                                                                                               ## OpenGL
                                                                                               ## shaders
                                                                                               ## initialization.
                                                                                               ##
                                                                                               ## !
                                                                                               ## @name
                                                                                               ## methods
                                                                                               ## related
                                                                                               ## to
                                                                                               ## ray-tracing
                                                                                               ##
                                                                                               ## !
                                                                                               ## Updates
                                                                                               ## 3D
                                                                                               ## scene
                                                                                               ## geometry
                                                                                               ## for
                                                                                               ## ray-tracing.
                                                                                               ##
                                                                                               ## !
                                                                                               ## @name
                                                                                               ## fields
                                                                                               ## related
                                                                                               ## to
                                                                                               ## ray-tracing
                                                                                               ##
                                                                                               ## !
                                                                                               ## Result
                                                                                               ## of
                                                                                               ## RT/PT
                                                                                               ## shaders
                                                                                               ## initialization.
                                                                                               ##
                                                                                               ## Type
                                                                                               ## definition
    ## !< main list of displayed structure, sorted by layers
    ## !< camera modification state
    ## ! Is needed for selection of overlapping objects and storage of the current view volume
    ## ! Framebuffers for OpenGL output.
    ## !< track sRGB state
    ## !< sized format for color attachments
    ## !< sized format for depth-stencil attachments
    ## !< selected color format configuration for OIT color attachments
    ## !< Additional buffers for transparent draw of main layer.
    ## !< Additional buffers for immediate layer in stereo mode.
    ## !< Additional buffers for transparency draw of immediate layer.
    ## !< additional FBO (without MSAA) for submitting to XR
    ## !< Vertices for full-screen quad rendering.
    ## !< Flag to draw result image upside-down
    ## !< redraw counter, for debugging
    ## !< disable FBOs on failure
    ## !< disable OIT on failure
    ## !< disable OIT with MSAA on failure
    ## !< disable MSAA after failure
    ## !< optimization flag for immediate mode (to render directly to the front buffer)
    ## !< flag indicates that immediate mode buffer contains some data
    ## !< Stores texture and its parameters for textured background
    ## !< Stores cubemap and its parameters for cubemap background
    ## !< Cubemap has been set as background
    ## !< Current type of background
    ## !< Array of primitive arrays of different background types
    ## !< manager of IBL maps used in PBR pipeline
    ## !< state of PBR environment
    ## !< type of action is requested to be done with PBR environment
    ## ! Is ray-tracing geometry data valid?
    ## ! True if warning about missing extension GL_ARB_bindless_texture has been displayed.
    ## ! 3D scene geometry data for ray-tracing.
    ## ! Builder for triangle set.
    ## ! Compile-time ray-tracing parameters.
    ## ! Radius of bounding sphere of the scene.
    ## ! Scene epsilon to prevent self-intersections.
    ## ! OpenGL/GLSL source of ray-tracing fragment shader.
    ## ! OpenGL/GLSL source of adaptive-AA fragment shader.
    ## ! OpenGL/GLSL source of RT/PT display fragment shader.
    ## ! OpenGL/GLSL ray-tracing fragment shader.
    ## ! OpenGL/GLSL adaptive-AA fragment shader.
    ## ! OpenGL/GLSL ray-tracing display fragment shader.
    ## ! OpenGL/GLSL ray-tracing shader program.
    ## ! OpenGL/GLSL adaptive-AA shader program.
    ## ! OpenGL/GLSL program for displaying texture.
    ## ! Texture buffer of data records of bottom-level BVH nodes.
    ## ! Texture buffer of minimum points of bottom-level BVH nodes.
    ## ! Texture buffer of maximum points of bottom-level BVH nodes.
    ## ! Texture buffer of transformations of high-level BVH nodes.
    ## ! Texture buffer of vertex coords.
    ## ! Texture buffer of vertex normals.
    ## ! Texture buffer of vertex UV coords.
    ## ! Texture buffer of triangle indices.
    ## ! Texture buffer of material properties.
    ## ! Texture buffer of light source properties.
    ## ! 1st framebuffer (FBO) to perform adaptive FSAA.
    ## ! Used in compatibility mode (no adaptive sampling).
    ## ! 2nd framebuffer (FBO) to perform adaptive FSAA.
    ## ! Used in compatibility mode (no adaptive sampling).
    ## ! Output textures (2 textures are used in stereo mode).
    ## ! Used if adaptive screen sampling is activated.
    ## ! Texture containing per-tile visual error estimation (2 textures are used in stereo mode).
    ## ! Used if adaptive screen sampling is activated.
    ## ! Texture containing offsets of sampled screen tiles (2 textures are used in stereo mode).
    ## ! Used if adaptive screen sampling is activated.
    ## ! Texture containing amount of extra per-tile samples (2 textures are used in stereo mode).
    ## ! Used if adaptive screen sampling is activated.
    ## ! Vertex buffer (VBO) for drawing dummy quad.
    ## ! Cached locations of frequently used uniform variables.
    ## ! State of OpenGL structures reflected to ray-tracing.
    ## ! PrimitiveArray to TriangleSet map for scene partial update.
    ## ! Set of IDs of non-raytracable elements (to detect updates).
    ## ! Marks if environment map should be updated.
    ## ! State of OpenGL layer list.
    ## ! Number of accumulated frames (for progressive rendering).
    ## ! Stored ray origins used for detection of camera movements.
    ## ! Bullard RNG to produce random sequence.
    ## ! Tool object for sampling screen tiles in PT mode.
    ## ! Camera position used for projective mode
    ## ! Camera view direction used for projective mode
    ## ! Camera's screen vertical direction used for projective mode
    ## ! Camera's screen horizontal direction used for projective mode
    ## ! Camera's screen size used for projective mode
    ## ! Aperture radius of camera on previous frame used for depth-of-field (path tracing)
    ## ! Focal distance of camera on previous frame used for depth-of-field (path tracing)


proc newOpenGlView*(theMgr: Handle[Graphic3dStructureManager];
                   theDriver: Handle[OpenGlGraphicDriver];
                   theCaps: Handle[OpenGlCaps]; theCounter: ptr OpenGlStateCounter): OpenGlView {.
    cdecl, constructor, importcpp: "OpenGl_View(@)", dynlib: tkkxbase.}
proc destroyOpenGlView*(this: var OpenGlView) {.cdecl, importcpp: "#.~OpenGl_View()",
    dynlib: tkkxbase.}
proc releaseGlResources*(this: var OpenGlView; theCtx: Handle[OpenGlContext]) {.cdecl,
    importcpp: "ReleaseGlResources", dynlib: tkkxbase.}
proc remove*(this: var OpenGlView) {.cdecl, importcpp: "Remove", dynlib: tkkxbase.}
proc setImmediateModeDrawToFront*(this: var OpenGlView; theDrawToFrontBuffer: bool): bool {.
    cdecl, importcpp: "SetImmediateModeDrawToFront", dynlib: tkkxbase.}
proc setWindow*(this: var OpenGlView; theWindow: Handle[AspectWindow];
               theContext: AspectRenderingContext) {.cdecl, importcpp: "SetWindow",
    dynlib: tkkxbase.}
proc window*(this: OpenGlView): Handle[AspectWindow] {.noSideEffect, cdecl,
    importcpp: "Window", dynlib: tkkxbase.}
proc isDefined*(this: OpenGlView): bool {.noSideEffect, cdecl, importcpp: "IsDefined",
                                      dynlib: tkkxbase.}
proc resized*(this: var OpenGlView) {.cdecl, importcpp: "Resized", dynlib: tkkxbase.}
proc redraw*(this: var OpenGlView) {.cdecl, importcpp: "Redraw", dynlib: tkkxbase.}
proc redrawImmediate*(this: var OpenGlView) {.cdecl, importcpp: "RedrawImmediate",
    dynlib: tkkxbase.}
proc invalidate*(this: var OpenGlView) {.cdecl, importcpp: "Invalidate",
                                     dynlib: tkkxbase.}
proc isInvalidated*(this: var OpenGlView): bool {.cdecl, importcpp: "IsInvalidated",
    dynlib: tkkxbase.}
proc bufferDump*(this: var OpenGlView; theImage: var ImagePixMap;
                theBufferType: Graphic3dBufferType): bool {.cdecl,
    importcpp: "BufferDump", dynlib: tkkxbase.}
proc invalidateBVHData*(this: var OpenGlView; theLayerId: Graphic3dZLayerId) {.cdecl,
    importcpp: "InvalidateBVHData", dynlib: tkkxbase.}
proc insertLayerBefore*(this: var OpenGlView; theLayerId: Graphic3dZLayerId;
                       theSettings: Graphic3dZLayerSettings;
                       theLayerAfter: Graphic3dZLayerId) {.cdecl,
    importcpp: "InsertLayerBefore", dynlib: tkkxbase.}
proc insertLayerAfter*(this: var OpenGlView; theNewLayerId: Graphic3dZLayerId;
                      theSettings: Graphic3dZLayerSettings;
                      theLayerBefore: Graphic3dZLayerId) {.cdecl,
    importcpp: "InsertLayerAfter", dynlib: tkkxbase.}
proc removeZLayer*(this: var OpenGlView; theLayerId: Graphic3dZLayerId) {.cdecl,
    importcpp: "RemoveZLayer", dynlib: tkkxbase.}
proc setZLayerSettings*(this: var OpenGlView; theLayerId: Graphic3dZLayerId;
                       theSettings: Graphic3dZLayerSettings) {.cdecl,
    importcpp: "SetZLayerSettings", dynlib: tkkxbase.}
proc zLayerMax*(this: OpenGlView): cint {.noSideEffect, cdecl, importcpp: "ZLayerMax",
                                      dynlib: tkkxbase.}
proc layers*(this: OpenGlView): NCollectionList[Handle[Graphic3dLayer]] {.
    noSideEffect, cdecl, importcpp: "Layers", dynlib: tkkxbase.}
proc layer*(this: OpenGlView; theLayerId: Graphic3dZLayerId): Handle[Graphic3dLayer] {.
    noSideEffect, cdecl, importcpp: "Layer", dynlib: tkkxbase.}
proc minMaxValues*(this: OpenGlView; theToIncludeAuxiliary: bool): BndBox {.
    noSideEffect, cdecl, importcpp: "MinMaxValues", dynlib: tkkxbase.}
proc fbo*(this: OpenGlView): Handle[StandardTransient] {.noSideEffect, cdecl,
    importcpp: "FBO", dynlib: tkkxbase.}
proc setFBO*(this: var OpenGlView; theFbo: Handle[StandardTransient]) {.cdecl,
    importcpp: "SetFBO", dynlib: tkkxbase.}
proc fBOCreate*(this: var OpenGlView; theWidth: cint; theHeight: cint): Handle[
    StandardTransient] {.cdecl, importcpp: "FBOCreate", dynlib: tkkxbase.}
proc fBORelease*(this: var OpenGlView; theFbo: var Handle[StandardTransient]) {.cdecl,
    importcpp: "FBORelease", dynlib: tkkxbase.}
proc fBOGetDimensions*(this: var OpenGlView; theFbo: Handle[StandardTransient];
                      theWidth: var cint; theHeight: var cint; theWidthMax: var cint;
                      theHeightMax: var cint) {.cdecl,
    importcpp: "FBOGetDimensions", dynlib: tkkxbase.}
proc fBOChangeViewport*(this: var OpenGlView; theFbo: Handle[StandardTransient];
                       theWidth: cint; theHeight: cint) {.cdecl,
    importcpp: "FBOChangeViewport", dynlib: tkkxbase.}
proc gradientBackground*(this: OpenGlView): AspectGradientBackground {.noSideEffect,
    cdecl, importcpp: "GradientBackground", dynlib: tkkxbase.}
proc setGradientBackground*(this: var OpenGlView;
                           theBackground: AspectGradientBackground) {.cdecl,
    importcpp: "SetGradientBackground", dynlib: tkkxbase.}
proc backgroundImage*(this: var OpenGlView): Handle[Graphic3dTextureMap] {.cdecl,
    importcpp: "BackgroundImage", dynlib: tkkxbase.}
proc setBackgroundImage*(this: var OpenGlView;
                        theTextureMap: Handle[Graphic3dTextureMap];
                        theToUpdatePBREnv: bool = true) {.cdecl,
    importcpp: "SetBackgroundImage", dynlib: tkkxbase.}
proc backgroundImageStyle*(this: OpenGlView): AspectFillMethod {.noSideEffect, cdecl,
    importcpp: "BackgroundImageStyle", dynlib: tkkxbase.}
proc setBackgroundImageStyle*(this: var OpenGlView; theFillStyle: AspectFillMethod) {.
    cdecl, importcpp: "SetBackgroundImageStyle", dynlib: tkkxbase.}
proc backgroundCubeMap*(this: OpenGlView): Handle[Graphic3dCubeMap] {.noSideEffect,
    cdecl, importcpp: "BackgroundCubeMap", dynlib: tkkxbase.}
proc generatePBREnvironment*(this: var OpenGlView) {.cdecl,
    importcpp: "GeneratePBREnvironment", dynlib: tkkxbase.}
proc clearPBREnvironment*(this: var OpenGlView) {.cdecl,
    importcpp: "ClearPBREnvironment", dynlib: tkkxbase.}
proc specIBLMapLevels*(this: OpenGlView): cuint {.noSideEffect, cdecl,
    importcpp: "SpecIBLMapLevels", dynlib: tkkxbase.}
proc textureEnv*(this: OpenGlView): Handle[Graphic3dTextureEnv] {.noSideEffect,
    cdecl, importcpp: "TextureEnv", dynlib: tkkxbase.}
proc setTextureEnv*(this: var OpenGlView; theTextureEnv: Handle[Graphic3dTextureEnv]) {.
    cdecl, importcpp: "SetTextureEnv", dynlib: tkkxbase.}
proc backfacingModel*(this: OpenGlView): Graphic3dTypeOfBackfacingModel {.
    noSideEffect, cdecl, importcpp: "BackfacingModel", dynlib: tkkxbase.}
proc setBackfacingModel*(this: var OpenGlView;
                        theModel: Graphic3dTypeOfBackfacingModel) {.cdecl,
    importcpp: "SetBackfacingModel", dynlib: tkkxbase.}
proc localOrigin*(this: OpenGlView): Xyz {.noSideEffect, cdecl,
                                       importcpp: "LocalOrigin", dynlib: tkkxbase.}
proc setLocalOrigin*(this: var OpenGlView; theOrigin: Xyz) {.cdecl,
    importcpp: "SetLocalOrigin", dynlib: tkkxbase.}
proc lights*(this: OpenGlView): Handle[Graphic3dLightSet] {.noSideEffect, cdecl,
    importcpp: "Lights", dynlib: tkkxbase.}
proc setLights*(this: var OpenGlView; theLights: Handle[Graphic3dLightSet]) {.cdecl,
    importcpp: "SetLights", dynlib: tkkxbase.}
proc clipPlanes*(this: OpenGlView): Handle[Graphic3dSequenceOfHClipPlane] {.
    noSideEffect, cdecl, importcpp: "ClipPlanes", dynlib: tkkxbase.}
proc setClipPlanes*(this: var OpenGlView;
                   thePlanes: Handle[Graphic3dSequenceOfHClipPlane]) {.cdecl,
    importcpp: "SetClipPlanes", dynlib: tkkxbase.}
proc diagnosticInformation*(this: OpenGlView;
                           theDict: var TColStdIndexedDataMapOfStringString;
                           theFlags: Graphic3dDiagnosticInfo) {.noSideEffect,
    cdecl, importcpp: "DiagnosticInformation", dynlib: tkkxbase.}
proc statisticInformation*(this: OpenGlView): TCollectionAsciiString {.noSideEffect,
    cdecl, importcpp: "StatisticInformation", dynlib: tkkxbase.}
proc statisticInformation*(this: OpenGlView;
                          theDict: var TColStdIndexedDataMapOfStringString) {.
    noSideEffect, cdecl, importcpp: "StatisticInformation", dynlib: tkkxbase.}
proc backgroundColor*(this: OpenGlView): QuantityColorRGBA {.noSideEffect, cdecl,
    importcpp: "BackgroundColor", dynlib: tkkxbase.}
proc changeGraduatedTrihedron*(this: var OpenGlView): var OpenGlGraduatedTrihedron {.
    cdecl, importcpp: "ChangeGraduatedTrihedron", dynlib: tkkxbase.}
proc setTextureEnv*(this: var OpenGlView; theCtx: Handle[OpenGlContext];
                   theTexture: Handle[Graphic3dTextureEnv]) {.cdecl,
    importcpp: "SetTextureEnv", dynlib: tkkxbase.}
proc setBackgroundTextureStyle*(this: var OpenGlView; fillStyle: AspectFillMethod) {.
    cdecl, importcpp: "SetBackgroundTextureStyle", dynlib: tkkxbase.}
proc setBackgroundGradient*(this: var OpenGlView; aColor1: QuantityColor;
                           aColor2: QuantityColor; aType: AspectGradientFillMethod) {.
    cdecl, importcpp: "SetBackgroundGradient", dynlib: tkkxbase.}
proc setBackgroundGradientType*(this: var OpenGlView;
                               aType: AspectGradientFillMethod) {.cdecl,
    importcpp: "SetBackgroundGradientType", dynlib: tkkxbase.}
proc layerList*(this: OpenGlView): OpenGlLayerList {.noSideEffect, cdecl,
    importcpp: "LayerList", dynlib: tkkxbase.}
proc glWindow*(this: OpenGlView): Handle[OpenGlWindow] {.noSideEffect, cdecl,
    importcpp: "GlWindow", dynlib: tkkxbase.}
proc glTextureEnv*(this: OpenGlView): Handle[OpenGlTextureSet] {.noSideEffect, cdecl,
    importcpp: "GlTextureEnv", dynlib: tkkxbase.}
proc bVHTreeSelector*(this: OpenGlView): Graphic3dCullingTool {.noSideEffect, cdecl,
    importcpp: "BVHTreeSelector", dynlib: tkkxbase.}
proc hasImmediateStructures*(this: OpenGlView): bool {.noSideEffect, cdecl,
    importcpp: "HasImmediateStructures", dynlib: tkkxbase.}
proc graduatedTrihedronDisplay*(this: var OpenGlView;
                               theTrihedronData: Graphic3dGraduatedTrihedron) {.
    cdecl, importcpp: "GraduatedTrihedronDisplay", dynlib: tkkxbase.}
proc graduatedTrihedronErase*(this: var OpenGlView) {.cdecl,
    importcpp: "GraduatedTrihedronErase", dynlib: tkkxbase.}
proc graduatedTrihedronMinMaxValues*(this: var OpenGlView; theMin: Graphic3dVec3;
                                    theMax: Graphic3dVec3) {.cdecl,
    importcpp: "GraduatedTrihedronMinMaxValues", dynlib: tkkxbase.}