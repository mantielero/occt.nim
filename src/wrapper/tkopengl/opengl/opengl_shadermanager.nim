##  Created on: 2013-09-26
##  Created by: Denis BOGOLEPOV
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

discard "forward decl of OpenGl_View"
discard "forward decl of OpenGl_VertexBuffer"
type
  OpenGlShaderProgramList* = NCollectionSequence[Handle[OpenGlShaderProgram]]

## ! This class is responsible for managing shader programs.

type
  OpenGlShaderManager* {.importcpp: "OpenGl_ShaderManager",
                        header: "OpenGl_ShaderManager.hxx", bycopy.} = object of StandardTransient ##
                                                                                            ## !
                                                                                            ## Creates
                                                                                            ## new
                                                                                            ## empty
                                                                                            ## shader
                                                                                            ## manager.
                                                                                            ##
                                                                                            ## !
                                                                                            ## Returns
                                                                                            ## current
                                                                                            ## state
                                                                                            ## of
                                                                                            ## OCCT
                                                                                            ## light
                                                                                            ## sources.
                                                                                            ##
                                                                                            ## !
                                                                                            ## Returns
                                                                                            ## current
                                                                                            ## state
                                                                                            ## of
                                                                                            ## OCCT
                                                                                            ## projection
                                                                                            ## transform.
                                                                                            ##
                                                                                            ## !
                                                                                            ## Returns
                                                                                            ## current
                                                                                            ## state
                                                                                            ## of
                                                                                            ## OCCT
                                                                                            ## model-world
                                                                                            ## transform.
                                                                                            ##
                                                                                            ## !
                                                                                            ## Returns
                                                                                            ## current
                                                                                            ## state
                                                                                            ## of
                                                                                            ## OCCT
                                                                                            ## world-view
                                                                                            ## transform.
                                                                                            ##
                                                                                            ## !
                                                                                            ## Updates
                                                                                            ## state
                                                                                            ## of
                                                                                            ## OCCT
                                                                                            ## clipping
                                                                                            ## planes.
                                                                                            ##
                                                                                            ## !
                                                                                            ## Returns
                                                                                            ## current
                                                                                            ## state
                                                                                            ## of
                                                                                            ## material.
                                                                                            ##
                                                                                            ## !
                                                                                            ## Setup
                                                                                            ## interior
                                                                                            ## style
                                                                                            ## line
                                                                                            ## edges
                                                                                            ## variables.
                                                                                            ##
                                                                                            ## !
                                                                                            ## Returns
                                                                                            ## state
                                                                                            ## of
                                                                                            ## OIT
                                                                                            ## uniforms.
                                                                                            ##
                                                                                            ## !
                                                                                            ## Pushes
                                                                                            ## current
                                                                                            ## state
                                                                                            ## of
                                                                                            ## OCCT
                                                                                            ## graphics
                                                                                            ## parameters
                                                                                            ## to
                                                                                            ## specified
                                                                                            ## program.
                                                                                            ##
                                                                                            ## !
                                                                                            ## Overwrites
                                                                                            ## context
                                                                                            ##
                                                                                            ## !
                                                                                            ## Define
                                                                                            ## clipping
                                                                                            ## planes
                                                                                            ## program
                                                                                            ## bits.
                                                                                            ##
                                                                                            ## !
                                                                                            ## Packed
                                                                                            ## properties
                                                                                            ## of
                                                                                            ## light
                                                                                            ## source
                                                                                            ##
                                                                                            ## !
                                                                                            ## Append
                                                                                            ## clipping
                                                                                            ## plane
                                                                                            ## definition
                                                                                            ## to
                                                                                            ## temporary
                                                                                            ## buffers.
    ## !< lighting shading model
    ## !< The list of shader programs
    ## !< pointer to active lighting programs matrix
    ## !< programs matrix without lighting
    ## !< programs matrix without lighting for outline presentation
    ## !< standard program for textured text
    ## !< standard program for FBO blit emulation
    ## !< standard program for bounding box
    ## !< standard program for OIT compositing (default and MSAA).
    ## !< map of lighting programs depending on lights configuration
    ## !< program for IBL maps generation used in PBR pipeline
    ## !< program for background cubemap rendering
    ## !< standard stereo programs
    ## !< bounding box vertex buffer
    ## !< manager of IBL maps used in PBR pipeline
    ## !< OpenGL context
    ## !< track sRGB state
    ## !< State of OCCT projection  transformation
    ## !< State of OCCT model-world transformation
    ## !< State of OCCT world-view  transformation
    ## !< State of OCCT clipping planes
    ## !< State of OCCT light sources
    ## !< State of Front and Back materials
    ## !< State of OIT uniforms
    ## !< local camera transformation
    ## !< flag indicating that local camera transformation has been set
    ## !< Pointer to the last view shader manager used with


proc newOpenGlShaderManager*(theContext: ptr OpenGlContext): OpenGlShaderManager {.
    cdecl, constructor, importcpp: "OpenGl_ShaderManager(@)", dynlib: tkkxbase.}
proc destroyOpenGlShaderManager*(this: var OpenGlShaderManager) {.cdecl,
    importcpp: "#.~OpenGl_ShaderManager()", dynlib: tkkxbase.}
proc clear*(this: var OpenGlShaderManager) {.cdecl, importcpp: "clear",
    dynlib: tkkxbase.}
proc updateSRgbState*(this: var OpenGlShaderManager) {.cdecl,
    importcpp: "UpdateSRgbState", dynlib: tkkxbase.}
proc localOrigin*(this: OpenGlShaderManager): Xyz {.noSideEffect, cdecl,
    importcpp: "LocalOrigin", dynlib: tkkxbase.}
proc setLocalOrigin*(this: var OpenGlShaderManager; theOrigin: Xyz) {.cdecl,
    importcpp: "SetLocalOrigin", dynlib: tkkxbase.}
proc localClippingPlaneW*(this: OpenGlShaderManager; thePlane: Graphic3dClipPlane): cfloat {.
    noSideEffect, cdecl, importcpp: "LocalClippingPlaneW", dynlib: tkkxbase.}
proc create*(this: var OpenGlShaderManager;
            theProxy: Handle[Graphic3dShaderProgram];
            theShareKey: var TCollectionAsciiString;
            theProgram: var Handle[OpenGlShaderProgram]): bool {.cdecl,
    importcpp: "Create", dynlib: tkkxbase.}
proc unregister*(this: var OpenGlShaderManager;
                theShareKey: var TCollectionAsciiString;
                theProgram: var Handle[OpenGlShaderProgram]) {.cdecl,
    importcpp: "Unregister", dynlib: tkkxbase.}
proc shaderPrograms*(this: OpenGlShaderManager): OpenGlShaderProgramList {.
    noSideEffect, cdecl, importcpp: "ShaderPrograms", dynlib: tkkxbase.}
proc isEmpty*(this: OpenGlShaderManager): bool {.noSideEffect, cdecl,
    importcpp: "IsEmpty", dynlib: tkkxbase.}
proc bindFaceProgram*(this: var OpenGlShaderManager;
                     theTextures: Handle[OpenGlTextureSet];
                     theShadingModel: Graphic3dTypeOfShadingModel;
                     theAlphaMode: Graphic3dAlphaMode; theHasVertColor: bool;
                     theEnableEnvMap: bool;
                     theCustomProgram: Handle[OpenGlShaderProgram]): bool {.cdecl,
    importcpp: "BindFaceProgram", dynlib: tkkxbase.}
proc bindFaceProgram*(this: var OpenGlShaderManager;
                     theTextures: Handle[OpenGlTextureSet];
                     theShadingModel: Graphic3dTypeOfShadingModel;
                     theAlphaMode: Graphic3dAlphaMode;
                     theInteriorStyle: AspectInteriorStyle; theHasVertColor: bool;
                     theEnableEnvMap: bool; theEnableMeshEdges: bool;
                     theCustomProgram: Handle[OpenGlShaderProgram]): bool {.cdecl,
    importcpp: "BindFaceProgram", dynlib: tkkxbase.}
proc bindLineProgram*(this: var OpenGlShaderManager;
                     theTextures: Handle[OpenGlTextureSet];
                     theLineType: AspectTypeOfLine;
                     theShadingModel: Graphic3dTypeOfShadingModel;
                     theAlphaMode: Graphic3dAlphaMode; theHasVertColor: bool;
                     theCustomProgram: Handle[OpenGlShaderProgram]): bool {.cdecl,
    importcpp: "BindLineProgram", dynlib: tkkxbase.}
proc bindMarkerProgram*(this: var OpenGlShaderManager;
                       theTextures: Handle[OpenGlTextureSet];
                       theShadingModel: Graphic3dTypeOfShadingModel;
                       theAlphaMode: Graphic3dAlphaMode; theHasVertColor: bool;
                       theCustomProgram: Handle[OpenGlShaderProgram]): bool {.
    cdecl, importcpp: "BindMarkerProgram", dynlib: tkkxbase.}
proc bindFontProgram*(this: var OpenGlShaderManager;
                     theCustomProgram: Handle[OpenGlShaderProgram]): bool {.cdecl,
    importcpp: "BindFontProgram", dynlib: tkkxbase.}
proc bindOutlineProgram*(this: var OpenGlShaderManager): bool {.cdecl,
    importcpp: "BindOutlineProgram", dynlib: tkkxbase.}
proc bindFboBlitProgram*(this: var OpenGlShaderManager; theNbSamples: cint;
                        theIsFallbackSRGB: bool): bool {.cdecl,
    importcpp: "BindFboBlitProgram", dynlib: tkkxbase.}
proc bindOitCompositingProgram*(this: var OpenGlShaderManager;
                               theIsMSAAEnabled: bool): bool {.cdecl,
    importcpp: "BindOitCompositingProgram", dynlib: tkkxbase.}
proc bindStereoProgram*(this: var OpenGlShaderManager;
                       theStereoMode: Graphic3dStereoMode): bool {.cdecl,
    importcpp: "BindStereoProgram", dynlib: tkkxbase.}
proc bindBoundBoxProgram*(this: var OpenGlShaderManager): bool {.cdecl,
    importcpp: "BindBoundBoxProgram", dynlib: tkkxbase.}
proc boundBoxVertBuffer*(this: OpenGlShaderManager): Handle[OpenGlVertexBuffer] {.
    noSideEffect, cdecl, importcpp: "BoundBoxVertBuffer", dynlib: tkkxbase.}
proc bindPBREnvBakingProgram*(this: var OpenGlShaderManager): bool {.cdecl,
    importcpp: "BindPBREnvBakingProgram", dynlib: tkkxbase.}
proc getBgCubeMapProgram*(this: var OpenGlShaderManager): Handle[
    Graphic3dShaderProgram] {.cdecl, importcpp: "GetBgCubeMapProgram",
                             dynlib: tkkxbase.}
proc pBRShadingModelFallback*(theShadingModel: Graphic3dTypeOfShadingModel;
                             theIsPbrAllowed: bool = false): Graphic3dTypeOfShadingModel {.
    cdecl, importcpp: "OpenGl_ShaderManager::PBRShadingModelFallback(@)",
    dynlib: tkkxbase.}
proc lightSourceState*(this: OpenGlShaderManager): OpenGlLightSourceState {.
    noSideEffect, cdecl, importcpp: "LightSourceState", dynlib: tkkxbase.}
proc updateLightSourceStateTo*(this: var OpenGlShaderManager;
                              theLights: Handle[Graphic3dLightSet];
                              theSpecIBLMapLevels: cint = 0) {.cdecl,
    importcpp: "UpdateLightSourceStateTo", dynlib: tkkxbase.}
proc updateLightSourceState*(this: var OpenGlShaderManager) {.cdecl,
    importcpp: "UpdateLightSourceState", dynlib: tkkxbase.}
proc pushLightSourceState*(this: OpenGlShaderManager;
                          theProgram: Handle[OpenGlShaderProgram]) {.noSideEffect,
    cdecl, importcpp: "PushLightSourceState", dynlib: tkkxbase.}
proc pushLightSourceState*(this: OpenGlShaderManager;
                          theProgram: Handle[OpenGlShaderProgram]) {.noSideEffect,
    cdecl, importcpp: "pushLightSourceState", dynlib: tkkxbase.}
proc projectionState*(this: OpenGlShaderManager): OpenGlProjectionState {.
    noSideEffect, cdecl, importcpp: "ProjectionState", dynlib: tkkxbase.}
proc updateProjectionStateTo*(this: var OpenGlShaderManager;
                             theProjectionMatrix: OpenGlMat4) {.cdecl,
    importcpp: "UpdateProjectionStateTo", dynlib: tkkxbase.}
proc pushProjectionState*(this: OpenGlShaderManager;
                         theProgram: Handle[OpenGlShaderProgram]) {.noSideEffect,
    cdecl, importcpp: "PushProjectionState", dynlib: tkkxbase.}
proc pushProjectionState*(this: OpenGlShaderManager;
                         theProgram: Handle[OpenGlShaderProgram]) {.noSideEffect,
    cdecl, importcpp: "pushProjectionState", dynlib: tkkxbase.}
proc modelWorldState*(this: OpenGlShaderManager): OpenGlModelWorldState {.
    noSideEffect, cdecl, importcpp: "ModelWorldState", dynlib: tkkxbase.}
proc updateModelWorldStateTo*(this: var OpenGlShaderManager;
                             theModelWorldMatrix: OpenGlMat4) {.cdecl,
    importcpp: "UpdateModelWorldStateTo", dynlib: tkkxbase.}
proc pushModelWorldState*(this: OpenGlShaderManager;
                         theProgram: Handle[OpenGlShaderProgram]) {.noSideEffect,
    cdecl, importcpp: "PushModelWorldState", dynlib: tkkxbase.}
proc pushModelWorldState*(this: OpenGlShaderManager;
                         theProgram: Handle[OpenGlShaderProgram]) {.noSideEffect,
    cdecl, importcpp: "pushModelWorldState", dynlib: tkkxbase.}
proc worldViewState*(this: OpenGlShaderManager): OpenGlWorldViewState {.
    noSideEffect, cdecl, importcpp: "WorldViewState", dynlib: tkkxbase.}
proc updateWorldViewStateTo*(this: var OpenGlShaderManager;
                            theWorldViewMatrix: OpenGlMat4) {.cdecl,
    importcpp: "UpdateWorldViewStateTo", dynlib: tkkxbase.}
proc pushWorldViewState*(this: OpenGlShaderManager;
                        theProgram: Handle[OpenGlShaderProgram]) {.noSideEffect,
    cdecl, importcpp: "PushWorldViewState", dynlib: tkkxbase.}
proc pushWorldViewState*(this: OpenGlShaderManager;
                        theProgram: Handle[OpenGlShaderProgram]) {.noSideEffect,
    cdecl, importcpp: "pushWorldViewState", dynlib: tkkxbase.}
proc updateClippingState*(this: var OpenGlShaderManager) {.cdecl,
    importcpp: "UpdateClippingState", dynlib: tkkxbase.}
proc revertClippingState*(this: var OpenGlShaderManager) {.cdecl,
    importcpp: "RevertClippingState", dynlib: tkkxbase.}
proc pushClippingState*(this: OpenGlShaderManager;
                       theProgram: Handle[OpenGlShaderProgram]) {.noSideEffect,
    cdecl, importcpp: "PushClippingState", dynlib: tkkxbase.}
proc pushClippingState*(this: OpenGlShaderManager;
                       theProgram: Handle[OpenGlShaderProgram]) {.noSideEffect,
    cdecl, importcpp: "pushClippingState", dynlib: tkkxbase.}
proc materialState*(this: OpenGlShaderManager): OpenGlMaterialState {.noSideEffect,
    cdecl, importcpp: "MaterialState", dynlib: tkkxbase.}
proc updateMaterialStateTo*(this: var OpenGlShaderManager;
                           theFrontMat: OpenGlMaterial;
                           theBackMat: OpenGlMaterial; theAlphaCutoff: cfloat;
                           theToDistinguish: bool; theToMapTexture: bool) {.cdecl,
    importcpp: "UpdateMaterialStateTo", dynlib: tkkxbase.}
proc updateMaterialState*(this: var OpenGlShaderManager) {.cdecl,
    importcpp: "UpdateMaterialState", dynlib: tkkxbase.}
proc pushMaterialState*(this: OpenGlShaderManager;
                       theProgram: Handle[OpenGlShaderProgram]) {.noSideEffect,
    cdecl, importcpp: "PushMaterialState", dynlib: tkkxbase.}
proc pushMaterialState*(this: OpenGlShaderManager;
                       theProgram: Handle[OpenGlShaderProgram]) {.noSideEffect,
    cdecl, importcpp: "pushMaterialState", dynlib: tkkxbase.}
proc pushInteriorState*(this: OpenGlShaderManager;
                       theProgram: Handle[OpenGlShaderProgram];
                       theAspect: Handle[Graphic3dAspects]) {.noSideEffect, cdecl,
    importcpp: "PushInteriorState", dynlib: tkkxbase.}
proc oitState*(this: OpenGlShaderManager): OpenGlOitState {.noSideEffect, cdecl,
    importcpp: "OitState", dynlib: tkkxbase.}
proc setOitState*(this: var OpenGlShaderManager; theToEnableOitWrite: bool;
                 theDepthFactor: cfloat) {.cdecl, importcpp: "SetOitState",
    dynlib: tkkxbase.}
proc pushOitState*(this: OpenGlShaderManager;
                  theProgram: Handle[OpenGlShaderProgram]) {.noSideEffect, cdecl,
    importcpp: "PushOitState", dynlib: tkkxbase.}
proc pushOitState*(this: OpenGlShaderManager;
                  theProgram: Handle[OpenGlShaderProgram]) {.noSideEffect, cdecl,
    importcpp: "pushOitState", dynlib: tkkxbase.}
proc pushState*(this: OpenGlShaderManager; theProgram: Handle[OpenGlShaderProgram];
    theShadingModel: Graphic3dTypeOfShadingModel = graphic3dTOSM_UNLIT) {.
    noSideEffect, cdecl, importcpp: "PushState", dynlib: tkkxbase.}
proc setContext*(this: var OpenGlShaderManager; theCtx: ptr OpenGlContext) {.cdecl,
    importcpp: "SetContext", dynlib: tkkxbase.}
proc isSameContext*(this: OpenGlShaderManager; theCtx: ptr OpenGlContext): bool {.
    noSideEffect, cdecl, importcpp: "IsSameContext", dynlib: tkkxbase.}
proc chooseFaceShadingModel*(this: OpenGlShaderManager;
                            theCustomModel: Graphic3dTypeOfShadingModel;
                            theHasNodalNormals: bool): Graphic3dTypeOfShadingModel {.
    noSideEffect, cdecl, importcpp: "ChooseFaceShadingModel", dynlib: tkkxbase.}
proc chooseLineShadingModel*(this: OpenGlShaderManager;
                            theCustomModel: Graphic3dTypeOfShadingModel;
                            theHasNodalNormals: bool): Graphic3dTypeOfShadingModel {.
    noSideEffect, cdecl, importcpp: "ChooseLineShadingModel", dynlib: tkkxbase.}
proc chooseMarkerShadingModel*(this: OpenGlShaderManager;
                              theCustomModel: Graphic3dTypeOfShadingModel;
                              theHasNodalNormals: bool): Graphic3dTypeOfShadingModel {.
    noSideEffect, cdecl, importcpp: "ChooseMarkerShadingModel", dynlib: tkkxbase.}
proc shadingModel*(this: OpenGlShaderManager): Graphic3dTypeOfShadingModel {.
    noSideEffect, cdecl, importcpp: "ShadingModel", dynlib: tkkxbase.}
proc setShadingModel*(this: var OpenGlShaderManager;
                     theModel: Graphic3dTypeOfShadingModel) {.cdecl,
    importcpp: "SetShadingModel", dynlib: tkkxbase.}
proc setLastView*(this: var OpenGlShaderManager; theLastView: ptr OpenGlView) {.cdecl,
    importcpp: "SetLastView", dynlib: tkkxbase.}
proc isSameView*(this: OpenGlShaderManager; theView: ptr OpenGlView): bool {.
    noSideEffect, cdecl, importcpp: "IsSameView", dynlib: tkkxbase.}
type
  HandleOpenGlShaderManager* = Handle[OpenGlShaderManager]
