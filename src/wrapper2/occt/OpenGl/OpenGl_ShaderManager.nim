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

  OpenGlShaderManagerbaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "OpenGl_ShaderManager::get_type_name(@)",
                            header: "OpenGl_ShaderManager.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "OpenGl_ShaderManager::get_type_descriptor(@)",
    header: "OpenGl_ShaderManager.hxx".}
proc dynamicType*(this: OpenGlShaderManager): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "OpenGl_ShaderManager.hxx".}
proc constructOpenGlShaderManager*(theContext: ptr OpenGlContext): OpenGlShaderManager {.
    constructor, importcpp: "OpenGl_ShaderManager(@)",
    header: "OpenGl_ShaderManager.hxx".}
proc destroyOpenGlShaderManager*(this: var OpenGlShaderManager) {.
    importcpp: "#.~OpenGl_ShaderManager()", header: "OpenGl_ShaderManager.hxx".}
proc clear*(this: var OpenGlShaderManager) {.importcpp: "clear",
    header: "OpenGl_ShaderManager.hxx".}
proc updateSRgbState*(this: var OpenGlShaderManager) {.importcpp: "UpdateSRgbState",
    header: "OpenGl_ShaderManager.hxx".}
proc localOrigin*(this: OpenGlShaderManager): GpXYZ {.noSideEffect,
    importcpp: "LocalOrigin", header: "OpenGl_ShaderManager.hxx".}
proc setLocalOrigin*(this: var OpenGlShaderManager; theOrigin: GpXYZ) {.
    importcpp: "SetLocalOrigin", header: "OpenGl_ShaderManager.hxx".}
proc localClippingPlaneW*(this: OpenGlShaderManager; thePlane: Graphic3dClipPlane): StandardReal {.
    noSideEffect, importcpp: "LocalClippingPlaneW",
    header: "OpenGl_ShaderManager.hxx".}
proc create*(this: var OpenGlShaderManager;
            theProxy: Handle[Graphic3dShaderProgram];
            theShareKey: var TCollectionAsciiString;
            theProgram: var Handle[OpenGlShaderProgram]): StandardBoolean {.
    importcpp: "Create", header: "OpenGl_ShaderManager.hxx".}
proc unregister*(this: var OpenGlShaderManager;
                theShareKey: var TCollectionAsciiString;
                theProgram: var Handle[OpenGlShaderProgram]) {.
    importcpp: "Unregister", header: "OpenGl_ShaderManager.hxx".}
proc shaderPrograms*(this: OpenGlShaderManager): OpenGlShaderProgramList {.
    noSideEffect, importcpp: "ShaderPrograms", header: "OpenGl_ShaderManager.hxx".}
proc isEmpty*(this: OpenGlShaderManager): StandardBoolean {.noSideEffect,
    importcpp: "IsEmpty", header: "OpenGl_ShaderManager.hxx".}
proc bindFaceProgram*(this: var OpenGlShaderManager;
                     theTextures: Handle[OpenGlTextureSet];
                     theShadingModel: Graphic3dTypeOfShadingModel;
                     theAlphaMode: Graphic3dAlphaMode;
                     theHasVertColor: StandardBoolean;
                     theEnableEnvMap: StandardBoolean;
                     theCustomProgram: Handle[OpenGlShaderProgram]): StandardBoolean {.
    importcpp: "BindFaceProgram", header: "OpenGl_ShaderManager.hxx".}
proc bindFaceProgram*(this: var OpenGlShaderManager;
                     theTextures: Handle[OpenGlTextureSet];
                     theShadingModel: Graphic3dTypeOfShadingModel;
                     theAlphaMode: Graphic3dAlphaMode;
                     theInteriorStyle: AspectInteriorStyle;
                     theHasVertColor: StandardBoolean;
                     theEnableEnvMap: StandardBoolean;
                     theEnableMeshEdges: StandardBoolean;
                     theCustomProgram: Handle[OpenGlShaderProgram]): StandardBoolean {.
    importcpp: "BindFaceProgram", header: "OpenGl_ShaderManager.hxx".}
proc bindLineProgram*(this: var OpenGlShaderManager;
                     theTextures: Handle[OpenGlTextureSet];
                     theLineType: AspectTypeOfLine;
                     theShadingModel: Graphic3dTypeOfShadingModel;
                     theAlphaMode: Graphic3dAlphaMode;
                     theHasVertColor: StandardBoolean;
                     theCustomProgram: Handle[OpenGlShaderProgram]): StandardBoolean {.
    importcpp: "BindLineProgram", header: "OpenGl_ShaderManager.hxx".}
proc bindMarkerProgram*(this: var OpenGlShaderManager;
                       theTextures: Handle[OpenGlTextureSet];
                       theShadingModel: Graphic3dTypeOfShadingModel;
                       theAlphaMode: Graphic3dAlphaMode;
                       theHasVertColor: StandardBoolean;
                       theCustomProgram: Handle[OpenGlShaderProgram]): StandardBoolean {.
    importcpp: "BindMarkerProgram", header: "OpenGl_ShaderManager.hxx".}
proc bindFontProgram*(this: var OpenGlShaderManager;
                     theCustomProgram: Handle[OpenGlShaderProgram]): StandardBoolean {.
    importcpp: "BindFontProgram", header: "OpenGl_ShaderManager.hxx".}
proc bindOutlineProgram*(this: var OpenGlShaderManager): StandardBoolean {.
    importcpp: "BindOutlineProgram", header: "OpenGl_ShaderManager.hxx".}
proc bindFboBlitProgram*(this: var OpenGlShaderManager;
                        theNbSamples: StandardInteger;
                        theIsFallbackSRGB: StandardBoolean): StandardBoolean {.
    importcpp: "BindFboBlitProgram", header: "OpenGl_ShaderManager.hxx".}
proc bindOitCompositingProgram*(this: var OpenGlShaderManager;
                               theIsMSAAEnabled: StandardBoolean): StandardBoolean {.
    importcpp: "BindOitCompositingProgram", header: "OpenGl_ShaderManager.hxx".}
proc bindStereoProgram*(this: var OpenGlShaderManager;
                       theStereoMode: Graphic3dStereoMode): StandardBoolean {.
    importcpp: "BindStereoProgram", header: "OpenGl_ShaderManager.hxx".}
proc bindBoundBoxProgram*(this: var OpenGlShaderManager): StandardBoolean {.
    importcpp: "BindBoundBoxProgram", header: "OpenGl_ShaderManager.hxx".}
proc boundBoxVertBuffer*(this: OpenGlShaderManager): Handle[OpenGlVertexBuffer] {.
    noSideEffect, importcpp: "BoundBoxVertBuffer",
    header: "OpenGl_ShaderManager.hxx".}
proc bindPBREnvBakingProgram*(this: var OpenGlShaderManager): StandardBoolean {.
    importcpp: "BindPBREnvBakingProgram", header: "OpenGl_ShaderManager.hxx".}
proc getBgCubeMapProgram*(this: var OpenGlShaderManager): Handle[
    Graphic3dShaderProgram] {.importcpp: "GetBgCubeMapProgram",
                             header: "OpenGl_ShaderManager.hxx".}
proc pBRShadingModelFallback*(theShadingModel: Graphic3dTypeOfShadingModel;
                             theIsPbrAllowed: StandardBoolean = standardFalse): Graphic3dTypeOfShadingModel {.
    importcpp: "OpenGl_ShaderManager::PBRShadingModelFallback(@)",
    header: "OpenGl_ShaderManager.hxx".}
proc lightSourceState*(this: OpenGlShaderManager): OpenGlLightSourceState {.
    noSideEffect, importcpp: "LightSourceState", header: "OpenGl_ShaderManager.hxx".}
proc updateLightSourceStateTo*(this: var OpenGlShaderManager;
                              theLights: Handle[Graphic3dLightSet];
                              theSpecIBLMapLevels: StandardInteger = 0) {.
    importcpp: "UpdateLightSourceStateTo", header: "OpenGl_ShaderManager.hxx".}
proc updateLightSourceState*(this: var OpenGlShaderManager) {.
    importcpp: "UpdateLightSourceState", header: "OpenGl_ShaderManager.hxx".}
proc pushLightSourceState*(this: OpenGlShaderManager;
                          theProgram: Handle[OpenGlShaderProgram]) {.noSideEffect,
    importcpp: "PushLightSourceState", header: "OpenGl_ShaderManager.hxx".}
proc pushLightSourceState*(this: OpenGlShaderManager;
                          theProgram: Handle[OpenGlShaderProgram]) {.noSideEffect,
    importcpp: "pushLightSourceState", header: "OpenGl_ShaderManager.hxx".}
proc projectionState*(this: OpenGlShaderManager): OpenGlProjectionState {.
    noSideEffect, importcpp: "ProjectionState", header: "OpenGl_ShaderManager.hxx".}
proc updateProjectionStateTo*(this: var OpenGlShaderManager;
                             theProjectionMatrix: OpenGlMat4) {.
    importcpp: "UpdateProjectionStateTo", header: "OpenGl_ShaderManager.hxx".}
proc pushProjectionState*(this: OpenGlShaderManager;
                         theProgram: Handle[OpenGlShaderProgram]) {.noSideEffect,
    importcpp: "PushProjectionState", header: "OpenGl_ShaderManager.hxx".}
proc pushProjectionState*(this: OpenGlShaderManager;
                         theProgram: Handle[OpenGlShaderProgram]) {.noSideEffect,
    importcpp: "pushProjectionState", header: "OpenGl_ShaderManager.hxx".}
proc modelWorldState*(this: OpenGlShaderManager): OpenGlModelWorldState {.
    noSideEffect, importcpp: "ModelWorldState", header: "OpenGl_ShaderManager.hxx".}
proc updateModelWorldStateTo*(this: var OpenGlShaderManager;
                             theModelWorldMatrix: OpenGlMat4) {.
    importcpp: "UpdateModelWorldStateTo", header: "OpenGl_ShaderManager.hxx".}
proc pushModelWorldState*(this: OpenGlShaderManager;
                         theProgram: Handle[OpenGlShaderProgram]) {.noSideEffect,
    importcpp: "PushModelWorldState", header: "OpenGl_ShaderManager.hxx".}
proc pushModelWorldState*(this: OpenGlShaderManager;
                         theProgram: Handle[OpenGlShaderProgram]) {.noSideEffect,
    importcpp: "pushModelWorldState", header: "OpenGl_ShaderManager.hxx".}
proc worldViewState*(this: OpenGlShaderManager): OpenGlWorldViewState {.
    noSideEffect, importcpp: "WorldViewState", header: "OpenGl_ShaderManager.hxx".}
proc updateWorldViewStateTo*(this: var OpenGlShaderManager;
                            theWorldViewMatrix: OpenGlMat4) {.
    importcpp: "UpdateWorldViewStateTo", header: "OpenGl_ShaderManager.hxx".}
proc pushWorldViewState*(this: OpenGlShaderManager;
                        theProgram: Handle[OpenGlShaderProgram]) {.noSideEffect,
    importcpp: "PushWorldViewState", header: "OpenGl_ShaderManager.hxx".}
proc pushWorldViewState*(this: OpenGlShaderManager;
                        theProgram: Handle[OpenGlShaderProgram]) {.noSideEffect,
    importcpp: "pushWorldViewState", header: "OpenGl_ShaderManager.hxx".}
proc updateClippingState*(this: var OpenGlShaderManager) {.
    importcpp: "UpdateClippingState", header: "OpenGl_ShaderManager.hxx".}
proc revertClippingState*(this: var OpenGlShaderManager) {.
    importcpp: "RevertClippingState", header: "OpenGl_ShaderManager.hxx".}
proc pushClippingState*(this: OpenGlShaderManager;
                       theProgram: Handle[OpenGlShaderProgram]) {.noSideEffect,
    importcpp: "PushClippingState", header: "OpenGl_ShaderManager.hxx".}
proc pushClippingState*(this: OpenGlShaderManager;
                       theProgram: Handle[OpenGlShaderProgram]) {.noSideEffect,
    importcpp: "pushClippingState", header: "OpenGl_ShaderManager.hxx".}
proc materialState*(this: OpenGlShaderManager): OpenGlMaterialState {.noSideEffect,
    importcpp: "MaterialState", header: "OpenGl_ShaderManager.hxx".}
proc updateMaterialStateTo*(this: var OpenGlShaderManager;
                           theFrontMat: OpenGlMaterial;
                           theBackMat: OpenGlMaterial; theAlphaCutoff: cfloat;
                           theToDistinguish: bool; theToMapTexture: bool) {.
    importcpp: "UpdateMaterialStateTo", header: "OpenGl_ShaderManager.hxx".}
proc updateMaterialState*(this: var OpenGlShaderManager) {.
    importcpp: "UpdateMaterialState", header: "OpenGl_ShaderManager.hxx".}
proc pushMaterialState*(this: OpenGlShaderManager;
                       theProgram: Handle[OpenGlShaderProgram]) {.noSideEffect,
    importcpp: "PushMaterialState", header: "OpenGl_ShaderManager.hxx".}
proc pushMaterialState*(this: OpenGlShaderManager;
                       theProgram: Handle[OpenGlShaderProgram]) {.noSideEffect,
    importcpp: "pushMaterialState", header: "OpenGl_ShaderManager.hxx".}
proc pushInteriorState*(this: OpenGlShaderManager;
                       theProgram: Handle[OpenGlShaderProgram];
                       theAspect: Handle[Graphic3dAspects]) {.noSideEffect,
    importcpp: "PushInteriorState", header: "OpenGl_ShaderManager.hxx".}
proc oitState*(this: OpenGlShaderManager): OpenGlOitState {.noSideEffect,
    importcpp: "OitState", header: "OpenGl_ShaderManager.hxx".}
proc setOitState*(this: var OpenGlShaderManager; theToEnableOitWrite: bool;
                 theDepthFactor: cfloat) {.importcpp: "SetOitState",
    header: "OpenGl_ShaderManager.hxx".}
proc pushOitState*(this: OpenGlShaderManager;
                  theProgram: Handle[OpenGlShaderProgram]) {.noSideEffect,
    importcpp: "PushOitState", header: "OpenGl_ShaderManager.hxx".}
proc pushOitState*(this: OpenGlShaderManager;
                  theProgram: Handle[OpenGlShaderProgram]) {.noSideEffect,
    importcpp: "pushOitState", header: "OpenGl_ShaderManager.hxx".}
proc pushState*(this: OpenGlShaderManager; theProgram: Handle[OpenGlShaderProgram];
    theShadingModel: Graphic3dTypeOfShadingModel = graphic3dTOSM_UNLIT) {.
    noSideEffect, importcpp: "PushState", header: "OpenGl_ShaderManager.hxx".}
proc setContext*(this: var OpenGlShaderManager; theCtx: ptr OpenGlContext) {.
    importcpp: "SetContext", header: "OpenGl_ShaderManager.hxx".}
proc isSameContext*(this: OpenGlShaderManager; theCtx: ptr OpenGlContext): bool {.
    noSideEffect, importcpp: "IsSameContext", header: "OpenGl_ShaderManager.hxx".}
proc chooseFaceShadingModel*(this: OpenGlShaderManager;
                            theCustomModel: Graphic3dTypeOfShadingModel;
                            theHasNodalNormals: bool): Graphic3dTypeOfShadingModel {.
    noSideEffect, importcpp: "ChooseFaceShadingModel",
    header: "OpenGl_ShaderManager.hxx".}
proc chooseLineShadingModel*(this: OpenGlShaderManager;
                            theCustomModel: Graphic3dTypeOfShadingModel;
                            theHasNodalNormals: bool): Graphic3dTypeOfShadingModel {.
    noSideEffect, importcpp: "ChooseLineShadingModel",
    header: "OpenGl_ShaderManager.hxx".}
proc chooseMarkerShadingModel*(this: OpenGlShaderManager;
                              theCustomModel: Graphic3dTypeOfShadingModel;
                              theHasNodalNormals: bool): Graphic3dTypeOfShadingModel {.
    noSideEffect, importcpp: "ChooseMarkerShadingModel",
    header: "OpenGl_ShaderManager.hxx".}
proc shadingModel*(this: OpenGlShaderManager): Graphic3dTypeOfShadingModel {.
    noSideEffect, importcpp: "ShadingModel", header: "OpenGl_ShaderManager.hxx".}
proc setShadingModel*(this: var OpenGlShaderManager;
                     theModel: Graphic3dTypeOfShadingModel) {.
    importcpp: "SetShadingModel", header: "OpenGl_ShaderManager.hxx".}
proc setLastView*(this: var OpenGlShaderManager; theLastView: ptr OpenGlView) {.
    importcpp: "SetLastView", header: "OpenGl_ShaderManager.hxx".}
proc isSameView*(this: OpenGlShaderManager; theView: ptr OpenGlView): bool {.
    noSideEffect, importcpp: "IsSameView", header: "OpenGl_ShaderManager.hxx".}
discard "forward decl of OpenGl_ShaderManager"
type
  HandleOpenGlShaderManager* = Handle[OpenGlShaderManager]


