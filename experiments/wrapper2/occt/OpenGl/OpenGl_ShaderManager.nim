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

## !!!Ignored construct:  # _OpenGl_ShaderManager_HeaderFile [NewLine] # _OpenGl_ShaderManager_HeaderFile [NewLine] # < Graphic3d_ShaderProgram . hxx > [NewLine] # < Graphic3d_StereoMode . hxx > [NewLine] # < NCollection_DataMap . hxx > [NewLine] # < NCollection_Sequence . hxx > [NewLine] # < OpenGl_PBREnvironment . hxx > [NewLine] # < OpenGl_SetOfShaderPrograms . hxx > [NewLine] # < OpenGl_ShaderStates . hxx > [NewLine] # < OpenGl_Aspects . hxx > [NewLine] # < OpenGl_MaterialState . hxx > [NewLine] # < OpenGl_Texture . hxx > [NewLine] class OpenGl_View ;
## Error: expected ';'!!!

discard "forward decl of OpenGl_VertexBuffer"
type
  OpenGlShaderProgramList* = NCollectionSequence[
      proc (a1: OpenGlShaderProgram): Handle]

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
    standardType* {.importc: "Standard_Type".}: Handle
    openGlVertexBuffer* {.importc: "OpenGl_VertexBuffer".}: Handle
    ## !< lighting shading model
    ## !< The list of shader programs
    ## !< standard program for FBO blit emulation
    ## !< map of lighting programs depending on lights configuration
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
## !!!Ignored construct:  & get_type_descriptor ( ) ;
## Error: identifier expected, but got: &!!!

## !!!Ignored construct:  & DynamicType ( ) const ;
## Error: identifier expected, but got: &!!!

proc constructOpenGlShaderManager*(theContext: ptr OpenGlContext): OpenGlShaderManager {.
    constructor, importcpp: "OpenGl_ShaderManager(@)",
    header: "OpenGl_ShaderManager.hxx".}
proc destroyOpenGlShaderManager*(this: var OpenGlShaderManager) {.
    importcpp: "#.~OpenGl_ShaderManager()", header: "OpenGl_ShaderManager.hxx".}
proc clear*(this: var OpenGlShaderManager) {.importcpp: "clear",
    header: "OpenGl_ShaderManager.hxx".}
proc updateSRgbState*(this: var OpenGlShaderManager) {.importcpp: "UpdateSRgbState",
    header: "OpenGl_ShaderManager.hxx".}
proc localOrigin*(this: OpenGlShaderManager): Xyz {.noSideEffect,
    importcpp: "LocalOrigin", header: "OpenGl_ShaderManager.hxx".}
proc setLocalOrigin*(this: var OpenGlShaderManager; theOrigin: Xyz) {.
    importcpp: "SetLocalOrigin", header: "OpenGl_ShaderManager.hxx".}
proc localClippingPlaneW*(this: OpenGlShaderManager; thePlane: Graphic3dClipPlane): float {.
    noSideEffect, importcpp: "LocalClippingPlaneW",
    header: "OpenGl_ShaderManager.hxx".}
## !!!Ignored construct:  ! Creates new shader program or re-use shared instance.
## ! @param theProxy    [IN]  program definition
## ! @param theShareKey [OUT] sharing key
## ! @param theProgram  [OUT] OpenGL program
## ! @return true on success Standard_Boolean Create ( const Handle ( Graphic3d_ShaderProgram ) & theProxy , TCollection_AsciiString & theShareKey , Handle ( OpenGl_ShaderProgram ) & theProgram ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! Unregisters specified shader program. void Unregister ( TCollection_AsciiString & theShareKey , Handle ( OpenGl_ShaderProgram ) & theProgram ) ;
## Error: token expected: ) but got: &!!!

proc shaderPrograms*(this: OpenGlShaderManager): OpenGlShaderProgramList {.
    noSideEffect, importcpp: "ShaderPrograms", header: "OpenGl_ShaderManager.hxx".}
proc isEmpty*(this: OpenGlShaderManager): bool {.noSideEffect, importcpp: "IsEmpty",
    header: "OpenGl_ShaderManager.hxx".}
## !!!Ignored construct:  ! Bind program for filled primitives rendering Standard_Boolean BindFaceProgram ( const Handle ( OpenGl_TextureSet ) & theTextures , Graphic3d_TypeOfShadingModel theShadingModel , Graphic3d_AlphaMode theAlphaMode , Standard_Boolean theHasVertColor , Standard_Boolean theEnableEnvMap , const Handle ( OpenGl_ShaderProgram ) & theCustomProgram ) { return BindFaceProgram ( theTextures , theShadingModel , theAlphaMode , Aspect_IS_SOLID , theHasVertColor , theEnableEnvMap , false , theCustomProgram ) ; } ! Bind program for filled primitives rendering Standard_Boolean BindFaceProgram ( const Handle ( OpenGl_TextureSet ) & theTextures , Graphic3d_TypeOfShadingModel theShadingModel , Graphic3d_AlphaMode theAlphaMode , Aspect_InteriorStyle theInteriorStyle , Standard_Boolean theHasVertColor , Standard_Boolean theEnableEnvMap , Standard_Boolean theEnableMeshEdges , const Handle ( OpenGl_ShaderProgram ) & theCustomProgram ) { const Graphic3d_TypeOfShadingModel aShadeModelOnFace = theShadingModel != Graphic3d_TOSM_UNLIT && ( theTextures . IsNull ( ) || theTextures -> IsModulate ( ) ) ? theShadingModel : Graphic3d_TOSM_UNLIT ; if ( ! theCustomProgram . IsNull ( ) || myContext -> caps -> ffpEnable ) { return bindProgramWithState ( theCustomProgram , aShadeModelOnFace ) ; } const Standard_Integer aBits = getProgramBits ( theTextures , theAlphaMode , theInteriorStyle , theHasVertColor , theEnableEnvMap , theEnableMeshEdges ) ; Handle ( OpenGl_ShaderProgram ) & aProgram = getStdProgram ( aShadeModelOnFace , aBits ) ; return bindProgramWithState ( aProgram , aShadeModelOnFace ) ; } ! Bind program for line rendering Standard_Boolean BindLineProgram ( const Handle ( OpenGl_TextureSet ) & theTextures , const Aspect_TypeOfLine theLineType , const Graphic3d_TypeOfShadingModel theShadingModel , const Graphic3d_AlphaMode theAlphaMode , const Standard_Boolean theHasVertColor , const Handle ( OpenGl_ShaderProgram ) & theCustomProgram ) { if ( ! theCustomProgram . IsNull ( ) || myContext -> caps -> ffpEnable ) { return bindProgramWithState ( theCustomProgram , theShadingModel ) ; } Standard_Integer aBits = getProgramBits ( theTextures , theAlphaMode , Aspect_IS_SOLID , theHasVertColor , false , false ) ; if ( theLineType != Aspect_TOL_SOLID ) { aBits |= OpenGl_PO_StippleLine ; } Handle ( OpenGl_ShaderProgram ) & aProgram = getStdProgram ( theShadingModel , aBits ) ; return bindProgramWithState ( aProgram , theShadingModel ) ; } ! Bind program for point rendering Standard_Boolean BindMarkerProgram ( const Handle ( OpenGl_TextureSet ) & theTextures , Graphic3d_TypeOfShadingModel theShadingModel , Graphic3d_AlphaMode theAlphaMode , Standard_Boolean theHasVertColor , const Handle ( OpenGl_ShaderProgram ) & theCustomProgram ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! Bind program for rendering alpha-textured font. Standard_Boolean BindFontProgram ( const Handle ( OpenGl_ShaderProgram ) & theCustomProgram ) { if ( ! theCustomProgram . IsNull ( ) || myContext -> caps -> ffpEnable ) { return bindProgramWithState ( theCustomProgram , Graphic3d_TOSM_UNLIT ) ; } if ( myFontProgram . IsNull ( ) ) { prepareStdProgramFont ( ) ; } return bindProgramWithState ( myFontProgram , Graphic3d_TOSM_UNLIT ) ; } ! Bind program for outline rendering Standard_Boolean BindOutlineProgram ( ) { if ( myContext -> caps -> ffpEnable ) { return false ; } const Standard_Integer aBits = getProgramBits ( Handle ( OpenGl_TextureSet ) ( ) , Graphic3d_AlphaMode_Opaque , Aspect_IS_SOLID , false , false , false ) ; if ( myOutlinePrograms . IsNull ( ) ) { myOutlinePrograms = new OpenGl_SetOfPrograms ( ) ; } Handle ( OpenGl_ShaderProgram ) & aProgram = myOutlinePrograms -> ChangeValue ( aBits ) ; if ( aProgram . IsNull ( ) ) { prepareStdProgramUnlit ( aProgram , aBits , true ) ; } return bindProgramWithState ( aProgram , Graphic3d_TOSM_UNLIT ) ; } ! Bind program for FBO blit operation.
## ! @param theNbSamples       [in] number of samples within source MSAA texture
## ! @param theIsFallback_sRGB [in] flag indicating that destination buffer is not sRGB-ready Standard_Boolean BindFboBlitProgram ( Standard_Integer theNbSamples , Standard_Boolean theIsFallback_sRGB ) ;
## Error: token expected: ) but got: &!!!

proc bindOitCompositingProgram*(this: var OpenGlShaderManager;
                               theIsMSAAEnabled: bool): bool {.
    importcpp: "BindOitCompositingProgram", header: "OpenGl_ShaderManager.hxx".}
proc bindStereoProgram*(this: var OpenGlShaderManager;
                       theStereoMode: Graphic3dStereoMode): bool {.
    importcpp: "BindStereoProgram", header: "OpenGl_ShaderManager.hxx".}
proc bindBoundBoxProgram*(this: var OpenGlShaderManager): bool {.
    importcpp: "BindBoundBoxProgram", header: "OpenGl_ShaderManager.hxx".}
## !!!Ignored construct:  & BoundBoxVertBuffer ( ) const { return myBoundBoxVertBuffer ; } ! Bind program for IBL maps generation in PBR pipeline. Standard_Boolean BindPBREnvBakingProgram ( ) { if ( myPBREnvBakingProgram . IsNull ( ) ) { preparePBREnvBakingProgram ( ) ; } return myContext -> BindProgram ( myPBREnvBakingProgram ) ; } ! Generates shader program to render environment cubemap as background. const Handle ( Graphic3d_ShaderProgram ) & GetBgCubeMapProgram ( ) ;
## Error: identifier expected, but got: &!!!

proc pBRShadingModelFallback*(theShadingModel: Graphic3dTypeOfShadingModel;
                             theIsPbrAllowed: bool = false): Graphic3dTypeOfShadingModel {.
    importcpp: "OpenGl_ShaderManager::PBRShadingModelFallback(@)",
    header: "OpenGl_ShaderManager.hxx".}
proc lightSourceState*(this: OpenGlShaderManager): OpenGlLightSourceState {.
    noSideEffect, importcpp: "LightSourceState", header: "OpenGl_ShaderManager.hxx".}
## !!!Ignored construct:  ! Updates state of OCCT light sources. void UpdateLightSourceStateTo ( const Handle ( Graphic3d_LightSet ) & theLights , Standard_Integer theSpecIBLMapLevels = 0 ) ;
## Error: token expected: ) but got: &!!!

proc updateLightSourceState*(this: var OpenGlShaderManager) {.
    importcpp: "UpdateLightSourceState", header: "OpenGl_ShaderManager.hxx".}
## !!!Ignored construct:  ! Pushes current state of OCCT light sources to specified program (only on state change). void PushLightSourceState ( const Handle ( OpenGl_ShaderProgram ) & theProgram ) const { if ( myLightSourceState . Index ( ) != theProgram -> ActiveState ( OpenGl_LIGHT_SOURCES_STATE ) ) { pushLightSourceState ( theProgram ) ; } } ! Pushes current state of OCCT light sources to specified program. void pushLightSourceState ( const Handle ( OpenGl_ShaderProgram ) & theProgram ) const ;
## Error: token expected: ) but got: &!!!

proc projectionState*(this: OpenGlShaderManager): OpenGlProjectionState {.
    noSideEffect, importcpp: "ProjectionState", header: "OpenGl_ShaderManager.hxx".}
proc updateProjectionStateTo*(this: var OpenGlShaderManager;
                             theProjectionMatrix: OpenGlMat4) {.
    importcpp: "UpdateProjectionStateTo", header: "OpenGl_ShaderManager.hxx".}
## !!!Ignored construct:  ! Pushes current state of OCCT projection transform to specified program (only on state change). void PushProjectionState ( const Handle ( OpenGl_ShaderProgram ) & theProgram ) const { if ( myProjectionState . Index ( ) != theProgram -> ActiveState ( OpenGl_PROJECTION_STATE ) ) { pushProjectionState ( theProgram ) ; } } ! Pushes current state of OCCT projection transform to specified program. void pushProjectionState ( const Handle ( OpenGl_ShaderProgram ) & theProgram ) const ;
## Error: token expected: ) but got: &!!!

proc modelWorldState*(this: OpenGlShaderManager): OpenGlModelWorldState {.
    noSideEffect, importcpp: "ModelWorldState", header: "OpenGl_ShaderManager.hxx".}
proc updateModelWorldStateTo*(this: var OpenGlShaderManager;
                             theModelWorldMatrix: OpenGlMat4) {.
    importcpp: "UpdateModelWorldStateTo", header: "OpenGl_ShaderManager.hxx".}
## !!!Ignored construct:  ! Pushes current state of OCCT model-world transform to specified program (only on state change). void PushModelWorldState ( const Handle ( OpenGl_ShaderProgram ) & theProgram ) const { if ( myModelWorldState . Index ( ) != theProgram -> ActiveState ( OpenGl_MODEL_WORLD_STATE ) ) { pushModelWorldState ( theProgram ) ; } } ! Pushes current state of OCCT model-world transform to specified program. void pushModelWorldState ( const Handle ( OpenGl_ShaderProgram ) & theProgram ) const ;
## Error: token expected: ) but got: &!!!

proc worldViewState*(this: OpenGlShaderManager): OpenGlWorldViewState {.
    noSideEffect, importcpp: "WorldViewState", header: "OpenGl_ShaderManager.hxx".}
proc updateWorldViewStateTo*(this: var OpenGlShaderManager;
                            theWorldViewMatrix: OpenGlMat4) {.
    importcpp: "UpdateWorldViewStateTo", header: "OpenGl_ShaderManager.hxx".}
## !!!Ignored construct:  ! Pushes current state of OCCT world-view transform to specified program (only on state change). void PushWorldViewState ( const Handle ( OpenGl_ShaderProgram ) & theProgram ) const { if ( myWorldViewState . Index ( ) != theProgram -> ActiveState ( OpenGl_WORLD_VIEW_STATE ) ) { pushWorldViewState ( theProgram ) ; } } ! Pushes current state of OCCT world-view transform to specified program. void pushWorldViewState ( const Handle ( OpenGl_ShaderProgram ) & theProgram ) const ;
## Error: token expected: ) but got: &!!!

proc updateClippingState*(this: var OpenGlShaderManager) {.
    importcpp: "UpdateClippingState", header: "OpenGl_ShaderManager.hxx".}
proc revertClippingState*(this: var OpenGlShaderManager) {.
    importcpp: "RevertClippingState", header: "OpenGl_ShaderManager.hxx".}
## !!!Ignored construct:  ! Pushes current state of OCCT clipping planes to specified program (only on state change). void PushClippingState ( const Handle ( OpenGl_ShaderProgram ) & theProgram ) const { if ( myClippingState . Index ( ) != theProgram -> ActiveState ( OpenGl_CLIP_PLANES_STATE ) ) { pushClippingState ( theProgram ) ; } } ! Pushes current state of OCCT clipping planes to specified program. void pushClippingState ( const Handle ( OpenGl_ShaderProgram ) & theProgram ) const ;
## Error: token expected: ) but got: &!!!

proc materialState*(this: OpenGlShaderManager): OpenGlMaterialState {.noSideEffect,
    importcpp: "MaterialState", header: "OpenGl_ShaderManager.hxx".}
proc updateMaterialStateTo*(this: var OpenGlShaderManager;
                           theFrontMat: OpenGlMaterial;
                           theBackMat: OpenGlMaterial; theAlphaCutoff: cfloat;
                           theToDistinguish: bool; theToMapTexture: bool) {.
    importcpp: "UpdateMaterialStateTo", header: "OpenGl_ShaderManager.hxx".}
proc updateMaterialState*(this: var OpenGlShaderManager) {.
    importcpp: "UpdateMaterialState", header: "OpenGl_ShaderManager.hxx".}
## !!!Ignored construct:  ! Pushes current state of material to specified program (only on state change). void PushMaterialState ( const Handle ( OpenGl_ShaderProgram ) & theProgram ) const { if ( myMaterialState . Index ( ) != theProgram -> ActiveState ( OpenGl_MATERIAL_STATE ) ) { pushMaterialState ( theProgram ) ; } } ! Pushes current state of material to specified program. void pushMaterialState ( const Handle ( OpenGl_ShaderProgram ) & theProgram ) const ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  public : ! Setup interior style line edges variables. void PushInteriorState ( const Handle ( OpenGl_ShaderProgram ) & theProgram , const Handle ( Graphic3d_Aspects ) & theAspect ) const ;
## Error: token expected: ) but got: &!!!

proc oitState*(this: OpenGlShaderManager): OpenGlOitState {.noSideEffect,
    importcpp: "OitState", header: "OpenGl_ShaderManager.hxx".}
proc setOitState*(this: var OpenGlShaderManager; theToEnableOitWrite: bool;
                 theDepthFactor: cfloat) {.importcpp: "SetOitState",
    header: "OpenGl_ShaderManager.hxx".}
## !!!Ignored construct:  ! Pushes state of OIT uniforms to the specified program. void PushOitState ( const Handle ( OpenGl_ShaderProgram ) & theProgram ) const { if ( theProgram -> IsValid ( ) && myOitState . Index ( ) != theProgram -> ActiveState ( OpenGL_OIT_STATE ) ) { pushOitState ( theProgram ) ; } } ! Pushes state of OIT uniforms to the specified program. void pushOitState ( const Handle ( OpenGl_ShaderProgram ) & theProgram ) const ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  public : ! Pushes current state of OCCT graphics parameters to specified program. void PushState ( const Handle ( OpenGl_ShaderProgram ) & theProgram , Graphic3d_TypeOfShadingModel theShadingModel = Graphic3d_TOSM_UNLIT ) const ;
## Error: token expected: ) but got: &!!!

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
## !!!Ignored construct:  ! Define program bits. Standard_Integer getProgramBits ( const Handle ( OpenGl_TextureSet ) & theTextures , Graphic3d_AlphaMode theAlphaMode , Aspect_InteriorStyle theInteriorStyle , Standard_Boolean theHasVertColor , Standard_Boolean theEnableEnvMap , Standard_Boolean theEnableMeshEdges ) const { Standard_Integer aBits = 0 ; if ( theAlphaMode == Graphic3d_AlphaMode_Mask ) { aBits |= OpenGl_PO_AlphaTest ; } aBits |= getClipPlaneBits ( ) ; if ( theEnableMeshEdges && myContext -> hasGeometryStage != OpenGl_FeatureNotAvailable ) { aBits |= OpenGl_PO_MeshEdges ; if ( theInteriorStyle == Aspect_IS_HOLLOW ) { aBits |= OpenGl_PO_AlphaTest ; } } if ( theEnableEnvMap ) {  Environment map overwrites material texture aBits |= OpenGl_PO_TextureEnv ; } else if ( ! theTextures . IsNull ( ) && theTextures -> HasNonPointSprite ( ) ) { aBits |= OpenGl_PO_TextureRGB ; if ( ( theTextures -> TextureSetBits ( ) & Graphic3d_TextureSetBits_Normal ) != 0 ) { aBits |= OpenGl_PO_TextureNormal ; } } if ( theHasVertColor && theInteriorStyle != Aspect_IS_HIDDENLINE ) { aBits |= OpenGl_PO_VertColor ; } if ( myOitState . ToEnableWrite ( ) ) { aBits |= OpenGl_PO_WriteOit ; } return aBits ; } ! Prepare standard GLSL program. Handle ( OpenGl_ShaderProgram ) & getStdProgram ( Graphic3d_TypeOfShadingModel theShadingModel , Standard_Integer theBits ) { if ( theShadingModel == Graphic3d_TOSM_UNLIT || ( theBits & OpenGl_PO_HasTextures ) == OpenGl_PO_TextureEnv ) {  If environment map is enabled lighting calculations are
##  not needed (in accordance with default OCCT behavior) Handle ( OpenGl_ShaderProgram ) & aProgram = myUnlitPrograms -> ChangeValue ( theBits ) ; if ( aProgram . IsNull ( ) ) { prepareStdProgramUnlit ( aProgram , theBits , false ) ; } return aProgram ; } Handle ( OpenGl_ShaderProgram ) & aProgram = myLightPrograms -> ChangeValue ( theShadingModel , theBits ) ; if ( aProgram . IsNull ( ) ) { prepareStdProgramLight ( aProgram , theShadingModel , theBits ) ; } return aProgram ; } ! Prepare standard GLSL program for accessing point sprite alpha. TCollection_AsciiString pointSpriteAlphaSrc ( Standard_Integer theBits ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! Prepare standard GLSL program for FBO blit operation. Standard_Boolean prepareStdProgramFboBlit ( Handle ( OpenGl_ShaderProgram ) & theProgram , Standard_Integer theNbSamples , Standard_Boolean theIsFallback_sRGB ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! Prepare standard GLSL program without lighting. Standard_Boolean prepareStdProgramUnlit ( Handle ( OpenGl_ShaderProgram ) & theProgram , Standard_Integer theBits , Standard_Boolean theIsOutline = false ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! Prepare standard GLSL program with lighting. Standard_Boolean prepareStdProgramLight ( Handle ( OpenGl_ShaderProgram ) & theProgram , Graphic3d_TypeOfShadingModel theShadingModel , Standard_Integer theBits ) { switch ( theShadingModel ) { case Graphic3d_TOSM_UNLIT : return prepareStdProgramUnlit ( theProgram , theBits , false ) ; case Graphic3d_TOSM_FACET : return prepareStdProgramPhong ( theProgram , theBits , true ) ; case Graphic3d_TOSM_VERTEX : return prepareStdProgramGouraud ( theProgram , theBits ) ; case Graphic3d_TOSM_DEFAULT : case Graphic3d_TOSM_FRAGMENT : return prepareStdProgramPhong ( theProgram , theBits , false ) ; case Graphic3d_TOSM_PBR : return prepareStdProgramPhong ( theProgram , theBits , false , true ) ; case Graphic3d_TOSM_PBR_FACET : return prepareStdProgramPhong ( theProgram , theBits , true , true ) ; } return false ; } ! Prepare standard GLSL program with per-vertex lighting. Standard_Boolean prepareStdProgramGouraud ( Handle ( OpenGl_ShaderProgram ) & theProgram , const Standard_Integer theBits ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! Prepare standard GLSL program with per-pixel lighting.
## ! @param theIsFlatNormal when TRUE, the Vertex normals will be ignored and Face normal will be computed instead
## ! @param theIsPBR when TRUE, the PBR pipeline will be activated Standard_Boolean prepareStdProgramPhong ( Handle ( OpenGl_ShaderProgram ) & theProgram , const Standard_Integer theBits , const Standard_Boolean theIsFlatNormal = false , const Standard_Boolean theIsPBR = false ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! Bind specified program to current context and apply state. Standard_Boolean bindProgramWithState ( const Handle ( OpenGl_ShaderProgram ) & theProgram , Graphic3d_TypeOfShadingModel theShadingModel ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! Prepare standard GLSL program for stereoscopic image. Standard_Boolean prepareStdProgramStereo ( Handle ( OpenGl_ShaderProgram ) & theProgram , const Graphic3d_StereoMode theStereoMode ) ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  ! Prepare GLSL version header. Standard_Integer defaultGlslVersion ( const Handle ( Graphic3d_ShaderProgram ) & theProgram , const TCollection_AsciiString & theName , Standard_Integer theBits , bool theUsesDerivates = false ) const ;
## Error: token expected: ) but got: &!!!

## !!!Ignored construct:  myFfpProgram ;
## Error: identifier expected, but got: ;!!!

## !!!Ignored construct:  myLightPrograms ;
## Error: identifier expected, but got: ;!!!

## !!!Ignored construct:  myUnlitPrograms ;
## Error: identifier expected, but got: ;!!!

## !!!Ignored construct:  myOutlinePrograms ;
## Error: identifier expected, but got: ;!!!

## !!!Ignored construct:  myFontProgram ;
## Error: identifier expected, but got: ;!!!

## !!!Ignored construct:  myBoundBoxProgram ;
## Error: identifier expected, but got: ;!!!

## !!!Ignored construct:  myOitCompositingProgram [ 2 ] ;
## Error: identifier expected, but got: [!!!

## !!!Ignored construct:  myPBREnvBakingProgram ;
## Error: identifier expected, but got: ;!!!

## !!!Ignored construct:  myBgCubeMapProgram ;
## Error: identifier expected, but got: ;!!!

## !!!Ignored construct:  myStereoPrograms [ Graphic3d_StereoMode_NB ] ;
## Error: identifier expected, but got: [!!!

## !!!Ignored construct:  myBoundBoxVertBuffer ;
## Error: identifier expected, but got: ;!!!

## !!!Ignored construct:  myPBREnvironment ;
## Error: identifier expected, but got: ;!!!

## !!!Ignored construct:  DEFINE_STANDARD_HANDLE ( OpenGl_ShaderManager , Standard_Transient ) #  _OpenGl_ShaderManager_HeaderFile
## Error: expected ';'!!!














































