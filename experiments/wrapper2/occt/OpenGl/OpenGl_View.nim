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

import
  ../Standard/Standard_Transient, ../Standard/Standard_Type,
  ../TColStd/TColStd_Array2OfReal, ../NCollection/NCollection_List,
  ../math/math_BullardGenerator, ../Quantity/Quantity_NameOfColor,
  ../Aspect/Aspect_FillMethod, ../Aspect/Aspect_GradientFillMethod,
  ../Graphic3d/Graphic3d_CView, ../Graphic3d/Graphic3d_CullingTool,
  ../Graphic3d/Graphic3d_GraduatedTrihedron,
  ../Graphic3d/Graphic3d_SequenceOfHClipPlane,
  ../Graphic3d/Graphic3d_ToneMappingMethod,
  ../Graphic3d/Graphic3d_TypeOfShadingModel,
  ../Graphic3d/Graphic3d_WorldViewProjState,
  ../Graphic3d/Graphic3d_ZLayerSettings, OpenGl_Aspects, OpenGl_BackgroundArray,
  OpenGl_Context, OpenGl_FrameBuffer, OpenGl_FrameStatsPrs,
  OpenGl_GraduatedTrihedron, OpenGl_LayerList, OpenGl_LineAttributes,
  OpenGl_SceneGeometry, OpenGl_Structure, OpenGl_Window, OpenGl_Workspace,
  OpenGl_TileSampler

discard "forward decl of OpenGl_Matrix"
discard "forward decl of Graphic3d_StructureManager"
discard "forward decl of OpenGl_GraphicDriver"
discard "forward decl of OpenGl_PBREnvironment"
discard "forward decl of OpenGl_StateCounter"
discard "forward decl of OpenGl_TriangleSet"
discard "forward decl of OpenGl_Workspace"
discard "forward decl of OpenGl_View"
discard "forward decl of OpenGl_View"
type
  Handle_OpenGl_View* = handle[OpenGl_View]

## ! Implementation of OpenGl view.

type
  OpenGl_View* {.importcpp: "OpenGl_View", header: "OpenGl_View.hxx", bycopy.} = object of Graphic3d_CView ##
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


proc constructOpenGl_View*(theMgr: handle[Graphic3d_StructureManager];
                          theDriver: handle[OpenGl_GraphicDriver];
                          theCaps: handle[OpenGl_Caps];
                          theCounter: ptr OpenGl_StateCounter): OpenGl_View {.
    constructor, importcpp: "OpenGl_View(@)", header: "OpenGl_View.hxx".}
proc destroyOpenGl_View*(this: var OpenGl_View) {.importcpp: "#.~OpenGl_View()",
    header: "OpenGl_View.hxx".}
proc ReleaseGlResources*(this: var OpenGl_View; theCtx: handle[OpenGl_Context]) {.
    importcpp: "ReleaseGlResources", header: "OpenGl_View.hxx".}
proc Remove*(this: var OpenGl_View) {.importcpp: "Remove", header: "OpenGl_View.hxx".}
proc SetImmediateModeDrawToFront*(this: var OpenGl_View;
                                 theDrawToFrontBuffer: Standard_Boolean): Standard_Boolean {.
    importcpp: "SetImmediateModeDrawToFront", header: "OpenGl_View.hxx".}
proc SetWindow*(this: var OpenGl_View; theWindow: handle[Aspect_Window];
               theContext: Aspect_RenderingContext) {.importcpp: "SetWindow",
    header: "OpenGl_View.hxx".}
proc Window*(this: OpenGl_View): handle[Aspect_Window] {.noSideEffect,
    importcpp: "Window", header: "OpenGl_View.hxx".}
proc IsDefined*(this: OpenGl_View): Standard_Boolean {.noSideEffect,
    importcpp: "IsDefined", header: "OpenGl_View.hxx".}
proc Resized*(this: var OpenGl_View) {.importcpp: "Resized", header: "OpenGl_View.hxx".}
proc Redraw*(this: var OpenGl_View) {.importcpp: "Redraw", header: "OpenGl_View.hxx".}
proc RedrawImmediate*(this: var OpenGl_View) {.importcpp: "RedrawImmediate",
    header: "OpenGl_View.hxx".}
proc Invalidate*(this: var OpenGl_View) {.importcpp: "Invalidate",
                                      header: "OpenGl_View.hxx".}
proc IsInvalidated*(this: var OpenGl_View): Standard_Boolean {.
    importcpp: "IsInvalidated", header: "OpenGl_View.hxx".}
proc BufferDump*(this: var OpenGl_View; theImage: var Image_PixMap;
                theBufferType: Graphic3d_BufferType): Standard_Boolean {.
    importcpp: "BufferDump", header: "OpenGl_View.hxx".}
proc InvalidateBVHData*(this: var OpenGl_View; theLayerId: Graphic3d_ZLayerId) {.
    importcpp: "InvalidateBVHData", header: "OpenGl_View.hxx".}
proc InsertLayerBefore*(this: var OpenGl_View; theLayerId: Graphic3d_ZLayerId;
                       theSettings: Graphic3d_ZLayerSettings;
                       theLayerAfter: Graphic3d_ZLayerId) {.
    importcpp: "InsertLayerBefore", header: "OpenGl_View.hxx".}
proc InsertLayerAfter*(this: var OpenGl_View; theNewLayerId: Graphic3d_ZLayerId;
                      theSettings: Graphic3d_ZLayerSettings;
                      theLayerBefore: Graphic3d_ZLayerId) {.
    importcpp: "InsertLayerAfter", header: "OpenGl_View.hxx".}
proc RemoveZLayer*(this: var OpenGl_View; theLayerId: Graphic3d_ZLayerId) {.
    importcpp: "RemoveZLayer", header: "OpenGl_View.hxx".}
proc SetZLayerSettings*(this: var OpenGl_View; theLayerId: Graphic3d_ZLayerId;
                       theSettings: Graphic3d_ZLayerSettings) {.
    importcpp: "SetZLayerSettings", header: "OpenGl_View.hxx".}
proc ZLayerMax*(this: OpenGl_View): Standard_Integer {.noSideEffect,
    importcpp: "ZLayerMax", header: "OpenGl_View.hxx".}
proc Layers*(this: OpenGl_View): NCollection_List[handle[Graphic3d_Layer]] {.
    noSideEffect, importcpp: "Layers", header: "OpenGl_View.hxx".}
proc Layer*(this: OpenGl_View; theLayerId: Graphic3d_ZLayerId): handle[
    Graphic3d_Layer] {.noSideEffect, importcpp: "Layer", header: "OpenGl_View.hxx".}
proc MinMaxValues*(this: OpenGl_View; theToIncludeAuxiliary: Standard_Boolean): Bnd_Box {.
    noSideEffect, importcpp: "MinMaxValues", header: "OpenGl_View.hxx".}
proc FBO*(this: OpenGl_View): handle[Standard_Transient] {.noSideEffect,
    importcpp: "FBO", header: "OpenGl_View.hxx".}
proc SetFBO*(this: var OpenGl_View; theFbo: handle[Standard_Transient]) {.
    importcpp: "SetFBO", header: "OpenGl_View.hxx".}
proc FBOCreate*(this: var OpenGl_View; theWidth: Standard_Integer;
               theHeight: Standard_Integer): handle[Standard_Transient] {.
    importcpp: "FBOCreate", header: "OpenGl_View.hxx".}
proc FBORelease*(this: var OpenGl_View; theFbo: var handle[Standard_Transient]) {.
    importcpp: "FBORelease", header: "OpenGl_View.hxx".}
proc FBOGetDimensions*(this: var OpenGl_View; theFbo: handle[Standard_Transient];
                      theWidth: var Standard_Integer;
                      theHeight: var Standard_Integer;
                      theWidthMax: var Standard_Integer;
                      theHeightMax: var Standard_Integer) {.
    importcpp: "FBOGetDimensions", header: "OpenGl_View.hxx".}
proc FBOChangeViewport*(this: var OpenGl_View; theFbo: handle[Standard_Transient];
                       theWidth: Standard_Integer; theHeight: Standard_Integer) {.
    importcpp: "FBOChangeViewport", header: "OpenGl_View.hxx".}
proc GradientBackground*(this: OpenGl_View): Aspect_GradientBackground {.
    noSideEffect, importcpp: "GradientBackground", header: "OpenGl_View.hxx".}
proc SetGradientBackground*(this: var OpenGl_View;
                           theBackground: Aspect_GradientBackground) {.
    importcpp: "SetGradientBackground", header: "OpenGl_View.hxx".}
proc BackgroundImage*(this: var OpenGl_View): handle[Graphic3d_TextureMap] {.
    importcpp: "BackgroundImage", header: "OpenGl_View.hxx".}
proc SetBackgroundImage*(this: var OpenGl_View;
                        theTextureMap: handle[Graphic3d_TextureMap];
                        theToUpdatePBREnv: Standard_Boolean = Standard_True) {.
    importcpp: "SetBackgroundImage", header: "OpenGl_View.hxx".}
proc BackgroundImageStyle*(this: OpenGl_View): Aspect_FillMethod {.noSideEffect,
    importcpp: "BackgroundImageStyle", header: "OpenGl_View.hxx".}
proc SetBackgroundImageStyle*(this: var OpenGl_View; theFillStyle: Aspect_FillMethod) {.
    importcpp: "SetBackgroundImageStyle", header: "OpenGl_View.hxx".}
proc BackgroundCubeMap*(this: OpenGl_View): handle[Graphic3d_CubeMap] {.
    noSideEffect, importcpp: "BackgroundCubeMap", header: "OpenGl_View.hxx".}
proc GeneratePBREnvironment*(this: var OpenGl_View) {.
    importcpp: "GeneratePBREnvironment", header: "OpenGl_View.hxx".}
proc ClearPBREnvironment*(this: var OpenGl_View) {.importcpp: "ClearPBREnvironment",
    header: "OpenGl_View.hxx".}
proc SpecIBLMapLevels*(this: OpenGl_View): cuint {.noSideEffect,
    importcpp: "SpecIBLMapLevels", header: "OpenGl_View.hxx".}
proc TextureEnv*(this: OpenGl_View): handle[Graphic3d_TextureEnv] {.noSideEffect,
    importcpp: "TextureEnv", header: "OpenGl_View.hxx".}
proc SetTextureEnv*(this: var OpenGl_View;
                   theTextureEnv: handle[Graphic3d_TextureEnv]) {.
    importcpp: "SetTextureEnv", header: "OpenGl_View.hxx".}
proc BackfacingModel*(this: OpenGl_View): Graphic3d_TypeOfBackfacingModel {.
    noSideEffect, importcpp: "BackfacingModel", header: "OpenGl_View.hxx".}
proc SetBackfacingModel*(this: var OpenGl_View;
                        theModel: Graphic3d_TypeOfBackfacingModel) {.
    importcpp: "SetBackfacingModel", header: "OpenGl_View.hxx".}
proc LocalOrigin*(this: OpenGl_View): gp_XYZ {.noSideEffect,
    importcpp: "LocalOrigin", header: "OpenGl_View.hxx".}
proc SetLocalOrigin*(this: var OpenGl_View; theOrigin: gp_XYZ) {.
    importcpp: "SetLocalOrigin", header: "OpenGl_View.hxx".}
proc Lights*(this: OpenGl_View): handle[Graphic3d_LightSet] {.noSideEffect,
    importcpp: "Lights", header: "OpenGl_View.hxx".}
proc SetLights*(this: var OpenGl_View; theLights: handle[Graphic3d_LightSet]) {.
    importcpp: "SetLights", header: "OpenGl_View.hxx".}
proc ClipPlanes*(this: OpenGl_View): handle[Graphic3d_SequenceOfHClipPlane] {.
    noSideEffect, importcpp: "ClipPlanes", header: "OpenGl_View.hxx".}
proc SetClipPlanes*(this: var OpenGl_View;
                   thePlanes: handle[Graphic3d_SequenceOfHClipPlane]) {.
    importcpp: "SetClipPlanes", header: "OpenGl_View.hxx".}
proc DiagnosticInformation*(this: OpenGl_View;
                           theDict: var TColStd_IndexedDataMapOfStringString;
                           theFlags: Graphic3d_DiagnosticInfo) {.noSideEffect,
    importcpp: "DiagnosticInformation", header: "OpenGl_View.hxx".}
proc StatisticInformation*(this: OpenGl_View): TCollection_AsciiString {.
    noSideEffect, importcpp: "StatisticInformation", header: "OpenGl_View.hxx".}
proc StatisticInformation*(this: OpenGl_View;
                          theDict: var TColStd_IndexedDataMapOfStringString) {.
    noSideEffect, importcpp: "StatisticInformation", header: "OpenGl_View.hxx".}
proc BackgroundColor*(this: OpenGl_View): Quantity_ColorRGBA {.noSideEffect,
    importcpp: "BackgroundColor", header: "OpenGl_View.hxx".}
proc ChangeGraduatedTrihedron*(this: var OpenGl_View): var OpenGl_GraduatedTrihedron {.
    importcpp: "ChangeGraduatedTrihedron", header: "OpenGl_View.hxx".}
proc SetTextureEnv*(this: var OpenGl_View; theCtx: handle[OpenGl_Context];
                   theTexture: handle[Graphic3d_TextureEnv]) {.
    importcpp: "SetTextureEnv", header: "OpenGl_View.hxx".}
proc SetBackgroundTextureStyle*(this: var OpenGl_View; FillStyle: Aspect_FillMethod) {.
    importcpp: "SetBackgroundTextureStyle", header: "OpenGl_View.hxx".}
proc SetBackgroundGradient*(this: var OpenGl_View; AColor1: Quantity_Color;
                           AColor2: Quantity_Color;
                           AType: Aspect_GradientFillMethod) {.
    importcpp: "SetBackgroundGradient", header: "OpenGl_View.hxx".}
proc SetBackgroundGradientType*(this: var OpenGl_View;
                               AType: Aspect_GradientFillMethod) {.
    importcpp: "SetBackgroundGradientType", header: "OpenGl_View.hxx".}
proc LayerList*(this: OpenGl_View): OpenGl_LayerList {.noSideEffect,
    importcpp: "LayerList", header: "OpenGl_View.hxx".}
proc GlWindow*(this: OpenGl_View): handle[OpenGl_Window] {.noSideEffect,
    importcpp: "GlWindow", header: "OpenGl_View.hxx".}
proc GlTextureEnv*(this: OpenGl_View): handle[OpenGl_TextureSet] {.noSideEffect,
    importcpp: "GlTextureEnv", header: "OpenGl_View.hxx".}
proc BVHTreeSelector*(this: OpenGl_View): Graphic3d_CullingTool {.noSideEffect,
    importcpp: "BVHTreeSelector", header: "OpenGl_View.hxx".}
proc HasImmediateStructures*(this: OpenGl_View): bool {.noSideEffect,
    importcpp: "HasImmediateStructures", header: "OpenGl_View.hxx".}
proc GraduatedTrihedronDisplay*(this: var OpenGl_View;
                               theTrihedronData: Graphic3d_GraduatedTrihedron) {.
    importcpp: "GraduatedTrihedronDisplay", header: "OpenGl_View.hxx".}
proc GraduatedTrihedronErase*(this: var OpenGl_View) {.
    importcpp: "GraduatedTrihedronErase", header: "OpenGl_View.hxx".}
proc GraduatedTrihedronMinMaxValues*(this: var OpenGl_View; theMin: Graphic3d_Vec3;
                                    theMax: Graphic3d_Vec3) {.
    importcpp: "GraduatedTrihedronMinMaxValues", header: "OpenGl_View.hxx".}
type
  OpenGl_Viewbase_type* = Graphic3d_CView

proc get_type_name*(): cstring {.importcpp: "OpenGl_View::get_type_name(@)",
                              header: "OpenGl_View.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "OpenGl_View::get_type_descriptor(@)", header: "OpenGl_View.hxx".}
proc DynamicType*(this: OpenGl_View): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "OpenGl_View.hxx".}