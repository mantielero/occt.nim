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

import
  ../Graphic3d/Graphic3d_ShaderProgram, ../Graphic3d/Graphic3d_StereoMode,
  ../NCollection/NCollection_DataMap, ../NCollection/NCollection_Sequence,
  OpenGl_PBREnvironment, OpenGl_SetOfShaderPrograms, OpenGl_ShaderStates,
  OpenGl_Aspects, OpenGl_MaterialState, OpenGl_Texture

discard "forward decl of OpenGl_View"
discard "forward decl of OpenGl_VertexBuffer"
type
  OpenGl_ShaderProgramList* = NCollection_Sequence[handle[OpenGl_ShaderProgram]]

## ! This class is responsible for managing shader programs.

type
  OpenGl_ShaderManager* {.importcpp: "OpenGl_ShaderManager",
                         header: "OpenGl_ShaderManager.hxx", bycopy.} = object of Standard_Transient ##
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

  OpenGl_ShaderManagerbase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "OpenGl_ShaderManager::get_type_name(@)",
                              header: "OpenGl_ShaderManager.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "OpenGl_ShaderManager::get_type_descriptor(@)",
    header: "OpenGl_ShaderManager.hxx".}
proc DynamicType*(this: OpenGl_ShaderManager): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "OpenGl_ShaderManager.hxx".}
proc constructOpenGl_ShaderManager*(theContext: ptr OpenGl_Context): OpenGl_ShaderManager {.
    constructor, importcpp: "OpenGl_ShaderManager(@)",
    header: "OpenGl_ShaderManager.hxx".}
proc destroyOpenGl_ShaderManager*(this: var OpenGl_ShaderManager) {.
    importcpp: "#.~OpenGl_ShaderManager()", header: "OpenGl_ShaderManager.hxx".}
proc clear*(this: var OpenGl_ShaderManager) {.importcpp: "clear",
    header: "OpenGl_ShaderManager.hxx".}
proc UpdateSRgbState*(this: var OpenGl_ShaderManager) {.
    importcpp: "UpdateSRgbState", header: "OpenGl_ShaderManager.hxx".}
proc LocalOrigin*(this: OpenGl_ShaderManager): gp_XYZ {.noSideEffect,
    importcpp: "LocalOrigin", header: "OpenGl_ShaderManager.hxx".}
proc SetLocalOrigin*(this: var OpenGl_ShaderManager; theOrigin: gp_XYZ) {.
    importcpp: "SetLocalOrigin", header: "OpenGl_ShaderManager.hxx".}
proc LocalClippingPlaneW*(this: OpenGl_ShaderManager; thePlane: Graphic3d_ClipPlane): Standard_Real {.
    noSideEffect, importcpp: "LocalClippingPlaneW",
    header: "OpenGl_ShaderManager.hxx".}
proc Create*(this: var OpenGl_ShaderManager;
            theProxy: handle[Graphic3d_ShaderProgram];
            theShareKey: var TCollection_AsciiString;
            theProgram: var handle[OpenGl_ShaderProgram]): Standard_Boolean {.
    importcpp: "Create", header: "OpenGl_ShaderManager.hxx".}
proc Unregister*(this: var OpenGl_ShaderManager;
                theShareKey: var TCollection_AsciiString;
                theProgram: var handle[OpenGl_ShaderProgram]) {.
    importcpp: "Unregister", header: "OpenGl_ShaderManager.hxx".}
proc ShaderPrograms*(this: OpenGl_ShaderManager): OpenGl_ShaderProgramList {.
    noSideEffect, importcpp: "ShaderPrograms", header: "OpenGl_ShaderManager.hxx".}
proc IsEmpty*(this: OpenGl_ShaderManager): Standard_Boolean {.noSideEffect,
    importcpp: "IsEmpty", header: "OpenGl_ShaderManager.hxx".}
proc BindFaceProgram*(this: var OpenGl_ShaderManager;
                     theTextures: handle[OpenGl_TextureSet];
                     theShadingModel: Graphic3d_TypeOfShadingModel;
                     theAlphaMode: Graphic3d_AlphaMode;
                     theHasVertColor: Standard_Boolean;
                     theEnableEnvMap: Standard_Boolean;
                     theCustomProgram: handle[OpenGl_ShaderProgram]): Standard_Boolean {.
    importcpp: "BindFaceProgram", header: "OpenGl_ShaderManager.hxx".}
proc BindFaceProgram*(this: var OpenGl_ShaderManager;
                     theTextures: handle[OpenGl_TextureSet];
                     theShadingModel: Graphic3d_TypeOfShadingModel;
                     theAlphaMode: Graphic3d_AlphaMode;
                     theInteriorStyle: Aspect_InteriorStyle;
                     theHasVertColor: Standard_Boolean;
                     theEnableEnvMap: Standard_Boolean;
                     theEnableMeshEdges: Standard_Boolean;
                     theCustomProgram: handle[OpenGl_ShaderProgram]): Standard_Boolean {.
    importcpp: "BindFaceProgram", header: "OpenGl_ShaderManager.hxx".}
proc BindLineProgram*(this: var OpenGl_ShaderManager;
                     theTextures: handle[OpenGl_TextureSet];
                     theLineType: Aspect_TypeOfLine;
                     theShadingModel: Graphic3d_TypeOfShadingModel;
                     theAlphaMode: Graphic3d_AlphaMode;
                     theHasVertColor: Standard_Boolean;
                     theCustomProgram: handle[OpenGl_ShaderProgram]): Standard_Boolean {.
    importcpp: "BindLineProgram", header: "OpenGl_ShaderManager.hxx".}
proc BindMarkerProgram*(this: var OpenGl_ShaderManager;
                       theTextures: handle[OpenGl_TextureSet];
                       theShadingModel: Graphic3d_TypeOfShadingModel;
                       theAlphaMode: Graphic3d_AlphaMode;
                       theHasVertColor: Standard_Boolean;
                       theCustomProgram: handle[OpenGl_ShaderProgram]): Standard_Boolean {.
    importcpp: "BindMarkerProgram", header: "OpenGl_ShaderManager.hxx".}
proc BindFontProgram*(this: var OpenGl_ShaderManager;
                     theCustomProgram: handle[OpenGl_ShaderProgram]): Standard_Boolean {.
    importcpp: "BindFontProgram", header: "OpenGl_ShaderManager.hxx".}
proc BindOutlineProgram*(this: var OpenGl_ShaderManager): Standard_Boolean {.
    importcpp: "BindOutlineProgram", header: "OpenGl_ShaderManager.hxx".}
proc BindFboBlitProgram*(this: var OpenGl_ShaderManager;
                        theNbSamples: Standard_Integer;
                        theIsFallback_sRGB: Standard_Boolean): Standard_Boolean {.
    importcpp: "BindFboBlitProgram", header: "OpenGl_ShaderManager.hxx".}
proc BindOitCompositingProgram*(this: var OpenGl_ShaderManager;
                               theIsMSAAEnabled: Standard_Boolean): Standard_Boolean {.
    importcpp: "BindOitCompositingProgram", header: "OpenGl_ShaderManager.hxx".}
proc BindStereoProgram*(this: var OpenGl_ShaderManager;
                       theStereoMode: Graphic3d_StereoMode): Standard_Boolean {.
    importcpp: "BindStereoProgram", header: "OpenGl_ShaderManager.hxx".}
proc BindBoundBoxProgram*(this: var OpenGl_ShaderManager): Standard_Boolean {.
    importcpp: "BindBoundBoxProgram", header: "OpenGl_ShaderManager.hxx".}
proc BoundBoxVertBuffer*(this: OpenGl_ShaderManager): handle[OpenGl_VertexBuffer] {.
    noSideEffect, importcpp: "BoundBoxVertBuffer",
    header: "OpenGl_ShaderManager.hxx".}
proc BindPBREnvBakingProgram*(this: var OpenGl_ShaderManager): Standard_Boolean {.
    importcpp: "BindPBREnvBakingProgram", header: "OpenGl_ShaderManager.hxx".}
proc GetBgCubeMapProgram*(this: var OpenGl_ShaderManager): handle[
    Graphic3d_ShaderProgram] {.importcpp: "GetBgCubeMapProgram",
                              header: "OpenGl_ShaderManager.hxx".}
proc PBRShadingModelFallback*(theShadingModel: Graphic3d_TypeOfShadingModel;
                             theIsPbrAllowed: Standard_Boolean = Standard_False): Graphic3d_TypeOfShadingModel {.
    importcpp: "OpenGl_ShaderManager::PBRShadingModelFallback(@)",
    header: "OpenGl_ShaderManager.hxx".}
proc LightSourceState*(this: OpenGl_ShaderManager): OpenGl_LightSourceState {.
    noSideEffect, importcpp: "LightSourceState", header: "OpenGl_ShaderManager.hxx".}
proc UpdateLightSourceStateTo*(this: var OpenGl_ShaderManager;
                              theLights: handle[Graphic3d_LightSet];
                              theSpecIBLMapLevels: Standard_Integer = 0) {.
    importcpp: "UpdateLightSourceStateTo", header: "OpenGl_ShaderManager.hxx".}
proc UpdateLightSourceState*(this: var OpenGl_ShaderManager) {.
    importcpp: "UpdateLightSourceState", header: "OpenGl_ShaderManager.hxx".}
proc PushLightSourceState*(this: OpenGl_ShaderManager;
                          theProgram: handle[OpenGl_ShaderProgram]) {.
    noSideEffect, importcpp: "PushLightSourceState",
    header: "OpenGl_ShaderManager.hxx".}
proc pushLightSourceState*(this: OpenGl_ShaderManager;
                          theProgram: handle[OpenGl_ShaderProgram]) {.
    noSideEffect, importcpp: "pushLightSourceState",
    header: "OpenGl_ShaderManager.hxx".}
proc ProjectionState*(this: OpenGl_ShaderManager): OpenGl_ProjectionState {.
    noSideEffect, importcpp: "ProjectionState", header: "OpenGl_ShaderManager.hxx".}
proc UpdateProjectionStateTo*(this: var OpenGl_ShaderManager;
                             theProjectionMatrix: OpenGl_Mat4) {.
    importcpp: "UpdateProjectionStateTo", header: "OpenGl_ShaderManager.hxx".}
proc PushProjectionState*(this: OpenGl_ShaderManager;
                         theProgram: handle[OpenGl_ShaderProgram]) {.noSideEffect,
    importcpp: "PushProjectionState", header: "OpenGl_ShaderManager.hxx".}
proc pushProjectionState*(this: OpenGl_ShaderManager;
                         theProgram: handle[OpenGl_ShaderProgram]) {.noSideEffect,
    importcpp: "pushProjectionState", header: "OpenGl_ShaderManager.hxx".}
proc ModelWorldState*(this: OpenGl_ShaderManager): OpenGl_ModelWorldState {.
    noSideEffect, importcpp: "ModelWorldState", header: "OpenGl_ShaderManager.hxx".}
proc UpdateModelWorldStateTo*(this: var OpenGl_ShaderManager;
                             theModelWorldMatrix: OpenGl_Mat4) {.
    importcpp: "UpdateModelWorldStateTo", header: "OpenGl_ShaderManager.hxx".}
proc PushModelWorldState*(this: OpenGl_ShaderManager;
                         theProgram: handle[OpenGl_ShaderProgram]) {.noSideEffect,
    importcpp: "PushModelWorldState", header: "OpenGl_ShaderManager.hxx".}
proc pushModelWorldState*(this: OpenGl_ShaderManager;
                         theProgram: handle[OpenGl_ShaderProgram]) {.noSideEffect,
    importcpp: "pushModelWorldState", header: "OpenGl_ShaderManager.hxx".}
proc WorldViewState*(this: OpenGl_ShaderManager): OpenGl_WorldViewState {.
    noSideEffect, importcpp: "WorldViewState", header: "OpenGl_ShaderManager.hxx".}
proc UpdateWorldViewStateTo*(this: var OpenGl_ShaderManager;
                            theWorldViewMatrix: OpenGl_Mat4) {.
    importcpp: "UpdateWorldViewStateTo", header: "OpenGl_ShaderManager.hxx".}
proc PushWorldViewState*(this: OpenGl_ShaderManager;
                        theProgram: handle[OpenGl_ShaderProgram]) {.noSideEffect,
    importcpp: "PushWorldViewState", header: "OpenGl_ShaderManager.hxx".}
proc pushWorldViewState*(this: OpenGl_ShaderManager;
                        theProgram: handle[OpenGl_ShaderProgram]) {.noSideEffect,
    importcpp: "pushWorldViewState", header: "OpenGl_ShaderManager.hxx".}
proc UpdateClippingState*(this: var OpenGl_ShaderManager) {.
    importcpp: "UpdateClippingState", header: "OpenGl_ShaderManager.hxx".}
proc RevertClippingState*(this: var OpenGl_ShaderManager) {.
    importcpp: "RevertClippingState", header: "OpenGl_ShaderManager.hxx".}
proc PushClippingState*(this: OpenGl_ShaderManager;
                       theProgram: handle[OpenGl_ShaderProgram]) {.noSideEffect,
    importcpp: "PushClippingState", header: "OpenGl_ShaderManager.hxx".}
proc pushClippingState*(this: OpenGl_ShaderManager;
                       theProgram: handle[OpenGl_ShaderProgram]) {.noSideEffect,
    importcpp: "pushClippingState", header: "OpenGl_ShaderManager.hxx".}
proc MaterialState*(this: OpenGl_ShaderManager): OpenGl_MaterialState {.
    noSideEffect, importcpp: "MaterialState", header: "OpenGl_ShaderManager.hxx".}
proc UpdateMaterialStateTo*(this: var OpenGl_ShaderManager;
                           theFrontMat: OpenGl_Material;
                           theBackMat: OpenGl_Material; theAlphaCutoff: cfloat;
                           theToDistinguish: bool; theToMapTexture: bool) {.
    importcpp: "UpdateMaterialStateTo", header: "OpenGl_ShaderManager.hxx".}
proc UpdateMaterialState*(this: var OpenGl_ShaderManager) {.
    importcpp: "UpdateMaterialState", header: "OpenGl_ShaderManager.hxx".}
proc PushMaterialState*(this: OpenGl_ShaderManager;
                       theProgram: handle[OpenGl_ShaderProgram]) {.noSideEffect,
    importcpp: "PushMaterialState", header: "OpenGl_ShaderManager.hxx".}
proc pushMaterialState*(this: OpenGl_ShaderManager;
                       theProgram: handle[OpenGl_ShaderProgram]) {.noSideEffect,
    importcpp: "pushMaterialState", header: "OpenGl_ShaderManager.hxx".}
proc PushInteriorState*(this: OpenGl_ShaderManager;
                       theProgram: handle[OpenGl_ShaderProgram];
                       theAspect: handle[Graphic3d_Aspects]) {.noSideEffect,
    importcpp: "PushInteriorState", header: "OpenGl_ShaderManager.hxx".}
proc OitState*(this: OpenGl_ShaderManager): OpenGl_OitState {.noSideEffect,
    importcpp: "OitState", header: "OpenGl_ShaderManager.hxx".}
proc SetOitState*(this: var OpenGl_ShaderManager; theToEnableOitWrite: bool;
                 theDepthFactor: cfloat) {.importcpp: "SetOitState",
    header: "OpenGl_ShaderManager.hxx".}
proc PushOitState*(this: OpenGl_ShaderManager;
                  theProgram: handle[OpenGl_ShaderProgram]) {.noSideEffect,
    importcpp: "PushOitState", header: "OpenGl_ShaderManager.hxx".}
proc pushOitState*(this: OpenGl_ShaderManager;
                  theProgram: handle[OpenGl_ShaderProgram]) {.noSideEffect,
    importcpp: "pushOitState", header: "OpenGl_ShaderManager.hxx".}
proc PushState*(this: OpenGl_ShaderManager;
               theProgram: handle[OpenGl_ShaderProgram]; theShadingModel: Graphic3d_TypeOfShadingModel = Graphic3d_TOSM_UNLIT) {.
    noSideEffect, importcpp: "PushState", header: "OpenGl_ShaderManager.hxx".}
proc SetContext*(this: var OpenGl_ShaderManager; theCtx: ptr OpenGl_Context) {.
    importcpp: "SetContext", header: "OpenGl_ShaderManager.hxx".}
proc IsSameContext*(this: OpenGl_ShaderManager; theCtx: ptr OpenGl_Context): bool {.
    noSideEffect, importcpp: "IsSameContext", header: "OpenGl_ShaderManager.hxx".}
proc ChooseFaceShadingModel*(this: OpenGl_ShaderManager;
                            theCustomModel: Graphic3d_TypeOfShadingModel;
                            theHasNodalNormals: bool): Graphic3d_TypeOfShadingModel {.
    noSideEffect, importcpp: "ChooseFaceShadingModel",
    header: "OpenGl_ShaderManager.hxx".}
proc ChooseLineShadingModel*(this: OpenGl_ShaderManager;
                            theCustomModel: Graphic3d_TypeOfShadingModel;
                            theHasNodalNormals: bool): Graphic3d_TypeOfShadingModel {.
    noSideEffect, importcpp: "ChooseLineShadingModel",
    header: "OpenGl_ShaderManager.hxx".}
proc ChooseMarkerShadingModel*(this: OpenGl_ShaderManager;
                              theCustomModel: Graphic3d_TypeOfShadingModel;
                              theHasNodalNormals: bool): Graphic3d_TypeOfShadingModel {.
    noSideEffect, importcpp: "ChooseMarkerShadingModel",
    header: "OpenGl_ShaderManager.hxx".}
proc ShadingModel*(this: OpenGl_ShaderManager): Graphic3d_TypeOfShadingModel {.
    noSideEffect, importcpp: "ShadingModel", header: "OpenGl_ShaderManager.hxx".}
proc SetShadingModel*(this: var OpenGl_ShaderManager;
                     theModel: Graphic3d_TypeOfShadingModel) {.
    importcpp: "SetShadingModel", header: "OpenGl_ShaderManager.hxx".}
proc SetLastView*(this: var OpenGl_ShaderManager; theLastView: ptr OpenGl_View) {.
    importcpp: "SetLastView", header: "OpenGl_ShaderManager.hxx".}
proc IsSameView*(this: OpenGl_ShaderManager; theView: ptr OpenGl_View): bool {.
    noSideEffect, importcpp: "IsSameView", header: "OpenGl_ShaderManager.hxx".}
discard "forward decl of OpenGl_ShaderManager"
type
  Handle_OpenGl_ShaderManager* = handle[OpenGl_ShaderManager]
