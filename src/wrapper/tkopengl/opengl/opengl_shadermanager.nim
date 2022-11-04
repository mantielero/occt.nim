import ../../tkernel/tcollection/tcollection_types
import ../../tkservice/aspect/aspect_types
import ../../tkernel/standard/standard_types
import ../../tkv3d/graphic3d/graphic3d_types
import opengl_types
import ../../tkmath/gp/gp_types


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





proc newOpenGlShaderManager*(theContext: ptr OpenGlContext): OpenGlShaderManager {.
    cdecl, constructor, importcpp: "OpenGl_ShaderManager(@)", header: "OpenGl_ShaderManager.hxx".}
proc destroyOpenGlShaderManager*(this: var OpenGlShaderManager) {.cdecl,
    importcpp: "#.~OpenGl_ShaderManager()", header: "OpenGl_ShaderManager.hxx".}
proc clear*(this: var OpenGlShaderManager) {.cdecl, importcpp: "clear",
    header: "OpenGl_ShaderManager.hxx".}
proc updateSRgbState*(this: var OpenGlShaderManager) {.cdecl,
    importcpp: "UpdateSRgbState", header: "OpenGl_ShaderManager.hxx".}
proc localOrigin*(this: OpenGlShaderManager): XyzObj {.noSideEffect, cdecl,
    importcpp: "LocalOrigin", header: "OpenGl_ShaderManager.hxx".}
proc setLocalOrigin*(this: var OpenGlShaderManager; theOrigin: XyzObj) {.cdecl,
    importcpp: "SetLocalOrigin", header: "OpenGl_ShaderManager.hxx".}
proc localClippingPlaneW*(this: OpenGlShaderManager; thePlane: Graphic3dClipPlane): cfloat {.
    noSideEffect, cdecl, importcpp: "LocalClippingPlaneW", header: "OpenGl_ShaderManager.hxx".}
proc create*(this: var OpenGlShaderManager;
            theProxy: Handle[Graphic3dShaderProgram];
            theShareKey: var TCollectionAsciiString;
            theProgram: var Handle[OpenGlShaderProgram]): bool {.cdecl,
    importcpp: "Create", header: "OpenGl_ShaderManager.hxx".}
proc unregister*(this: var OpenGlShaderManager;
                theShareKey: var TCollectionAsciiString;
                theProgram: var Handle[OpenGlShaderProgram]) {.cdecl,
    importcpp: "Unregister", header: "OpenGl_ShaderManager.hxx".}
proc shaderPrograms*(this: OpenGlShaderManager): OpenGlShaderProgramList {.
    noSideEffect, cdecl, importcpp: "ShaderPrograms", header: "OpenGl_ShaderManager.hxx".}
proc isEmpty*(this: OpenGlShaderManager): bool {.noSideEffect, cdecl,
    importcpp: "IsEmpty", header: "OpenGl_ShaderManager.hxx".}
proc bindFaceProgram*(this: var OpenGlShaderManager;
                     theTextures: Handle[OpenGlTextureSet];
                     theShadingModel: Graphic3dTypeOfShadingModel;
                     theAlphaMode: Graphic3dAlphaMode; theHasVertColor: bool;
                     theEnableEnvMap: bool;
                     theCustomProgram: Handle[OpenGlShaderProgram]): bool {.cdecl,
    importcpp: "BindFaceProgram", header: "OpenGl_ShaderManager.hxx".}
proc bindFaceProgram*(this: var OpenGlShaderManager;
                     theTextures: Handle[OpenGlTextureSet];
                     theShadingModel: Graphic3dTypeOfShadingModel;
                     theAlphaMode: Graphic3dAlphaMode;
                     theInteriorStyle: AspectInteriorStyle; theHasVertColor: bool;
                     theEnableEnvMap: bool; theEnableMeshEdges: bool;
                     theCustomProgram: Handle[OpenGlShaderProgram]): bool {.cdecl,
    importcpp: "BindFaceProgram", header: "OpenGl_ShaderManager.hxx".}
proc bindLineProgram*(this: var OpenGlShaderManager;
                     theTextures: Handle[OpenGlTextureSet];
                     theLineType: AspectTypeOfLine;
                     theShadingModel: Graphic3dTypeOfShadingModel;
                     theAlphaMode: Graphic3dAlphaMode; theHasVertColor: bool;
                     theCustomProgram: Handle[OpenGlShaderProgram]): bool {.cdecl,
    importcpp: "BindLineProgram", header: "OpenGl_ShaderManager.hxx".}
proc bindMarkerProgram*(this: var OpenGlShaderManager;
                       theTextures: Handle[OpenGlTextureSet];
                       theShadingModel: Graphic3dTypeOfShadingModel;
                       theAlphaMode: Graphic3dAlphaMode; theHasVertColor: bool;
                       theCustomProgram: Handle[OpenGlShaderProgram]): bool {.
    cdecl, importcpp: "BindMarkerProgram", header: "OpenGl_ShaderManager.hxx".}
proc bindFontProgram*(this: var OpenGlShaderManager;
                     theCustomProgram: Handle[OpenGlShaderProgram]): bool {.cdecl,
    importcpp: "BindFontProgram", header: "OpenGl_ShaderManager.hxx".}
proc bindOutlineProgram*(this: var OpenGlShaderManager): bool {.cdecl,
    importcpp: "BindOutlineProgram", header: "OpenGl_ShaderManager.hxx".}
proc bindFboBlitProgram*(this: var OpenGlShaderManager; theNbSamples: cint;
                        theIsFallbackSRGB: bool): bool {.cdecl,
    importcpp: "BindFboBlitProgram", header: "OpenGl_ShaderManager.hxx".}
proc bindOitCompositingProgram*(this: var OpenGlShaderManager;
                               theIsMSAAEnabled: bool): bool {.cdecl,
    importcpp: "BindOitCompositingProgram", header: "OpenGl_ShaderManager.hxx".}
proc bindStereoProgram*(this: var OpenGlShaderManager;
                       theStereoMode: Graphic3dStereoMode): bool {.cdecl,
    importcpp: "BindStereoProgram", header: "OpenGl_ShaderManager.hxx".}
proc bindBoundBoxProgram*(this: var OpenGlShaderManager): bool {.cdecl,
    importcpp: "BindBoundBoxProgram", header: "OpenGl_ShaderManager.hxx".}
proc boundBoxVertBuffer*(this: OpenGlShaderManager): Handle[OpenGlVertexBuffer] {.
    noSideEffect, cdecl, importcpp: "BoundBoxVertBuffer", header: "OpenGl_ShaderManager.hxx".}
proc bindPBREnvBakingProgram*(this: var OpenGlShaderManager): bool {.cdecl,
    importcpp: "BindPBREnvBakingProgram", header: "OpenGl_ShaderManager.hxx".}
proc getBgCubeMapProgram*(this: var OpenGlShaderManager): Handle[
    Graphic3dShaderProgram] {.cdecl, importcpp: "GetBgCubeMapProgram",
                             header: "OpenGl_ShaderManager.hxx".}
proc pBRShadingModelFallback*(theShadingModel: Graphic3dTypeOfShadingModel;
                             theIsPbrAllowed: bool = false): Graphic3dTypeOfShadingModel {.
    cdecl, importcpp: "OpenGl_ShaderManager::PBRShadingModelFallback(@)",
    header: "OpenGl_ShaderManager.hxx".}
proc lightSourceState*(this: OpenGlShaderManager): OpenGlLightSourceState {.
    noSideEffect, cdecl, importcpp: "LightSourceState", header: "OpenGl_ShaderManager.hxx".}
proc updateLightSourceStateTo*(this: var OpenGlShaderManager;
                              theLights: Handle[Graphic3dLightSet];
                              theSpecIBLMapLevels: cint = 0) {.cdecl,
    importcpp: "UpdateLightSourceStateTo", header: "OpenGl_ShaderManager.hxx".}
proc updateLightSourceState*(this: var OpenGlShaderManager) {.cdecl,
    importcpp: "UpdateLightSourceState", header: "OpenGl_ShaderManager.hxx".}
proc pushLightSourceState*(this: OpenGlShaderManager;
                          theProgram: Handle[OpenGlShaderProgram]) {.noSideEffect,
    cdecl, importcpp: "PushLightSourceState", header: "OpenGl_ShaderManager.hxx".}
# proc pushLightSourceState*(this: OpenGlShaderManager;
#                           theProgram: Handle[OpenGlShaderProgram]) {.noSideEffect,
#     cdecl, importcpp: "pushLightSourceState", header: "OpenGl_ShaderManager.hxx".}
proc projectionState*(this: OpenGlShaderManager): OpenGlProjectionState {.
    noSideEffect, cdecl, importcpp: "ProjectionState", header: "OpenGl_ShaderManager.hxx".}
proc updateProjectionStateTo*(this: var OpenGlShaderManager;
                             theProjectionMatrix: OpenGlMat4) {.cdecl,
    importcpp: "UpdateProjectionStateTo", header: "OpenGl_ShaderManager.hxx".}
proc pushProjectionState*(this: OpenGlShaderManager;
                         theProgram: Handle[OpenGlShaderProgram]) {.noSideEffect,
    cdecl, importcpp: "PushProjectionState", header: "OpenGl_ShaderManager.hxx".}
# proc pushProjectionState*(this: OpenGlShaderManager;
#                          theProgram: Handle[OpenGlShaderProgram]) {.noSideEffect,
#     cdecl, importcpp: "pushProjectionState", header: "OpenGl_ShaderManager.hxx".}
proc modelWorldState*(this: OpenGlShaderManager): OpenGlModelWorldState {.
    noSideEffect, cdecl, importcpp: "ModelWorldState", header: "OpenGl_ShaderManager.hxx".}
proc updateModelWorldStateTo*(this: var OpenGlShaderManager;
                             theModelWorldMatrix: OpenGlMat4) {.cdecl,
    importcpp: "UpdateModelWorldStateTo", header: "OpenGl_ShaderManager.hxx".}
proc pushModelWorldState*(this: OpenGlShaderManager;
                         theProgram: Handle[OpenGlShaderProgram]) {.noSideEffect,
    cdecl, importcpp: "PushModelWorldState", header: "OpenGl_ShaderManager.hxx".}
# proc pushModelWorldState*(this: OpenGlShaderManager;
#                          theProgram: Handle[OpenGlShaderProgram]) {.noSideEffect,
#     cdecl, importcpp: "pushModelWorldState", header: "OpenGl_ShaderManager.hxx".}
proc worldViewState*(this: OpenGlShaderManager): OpenGlWorldViewState {.
    noSideEffect, cdecl, importcpp: "WorldViewState", header: "OpenGl_ShaderManager.hxx".}
proc updateWorldViewStateTo*(this: var OpenGlShaderManager;
                            theWorldViewMatrix: OpenGlMat4) {.cdecl,
    importcpp: "UpdateWorldViewStateTo", header: "OpenGl_ShaderManager.hxx".}
proc pushWorldViewState*(this: OpenGlShaderManager;
                        theProgram: Handle[OpenGlShaderProgram]) {.noSideEffect,
    cdecl, importcpp: "PushWorldViewState", header: "OpenGl_ShaderManager.hxx".}
# proc pushWorldViewState*(this: OpenGlShaderManager;
#                         theProgram: Handle[OpenGlShaderProgram]) {.noSideEffect,
#     cdecl, importcpp: "pushWorldViewState", header: "OpenGl_ShaderManager.hxx".}
proc updateClippingState*(this: var OpenGlShaderManager) {.cdecl,
    importcpp: "UpdateClippingState", header: "OpenGl_ShaderManager.hxx".}
proc revertClippingState*(this: var OpenGlShaderManager) {.cdecl,
    importcpp: "RevertClippingState", header: "OpenGl_ShaderManager.hxx".}
proc pushClippingState*(this: OpenGlShaderManager;
                       theProgram: Handle[OpenGlShaderProgram]) {.noSideEffect,
    cdecl, importcpp: "PushClippingState", header: "OpenGl_ShaderManager.hxx".}
# proc pushClippingState*(this: OpenGlShaderManager;
#                        theProgram: Handle[OpenGlShaderProgram]) {.noSideEffect,
#     cdecl, importcpp: "pushClippingState", header: "OpenGl_ShaderManager.hxx".}
proc materialState*(this: OpenGlShaderManager): OpenGlMaterialState {.noSideEffect,
    cdecl, importcpp: "MaterialState", header: "OpenGl_ShaderManager.hxx".}
proc updateMaterialStateTo*(this: var OpenGlShaderManager;
                           theFrontMat: OpenGlMaterial;
                           theBackMat: OpenGlMaterial; theAlphaCutoff: cfloat;
                           theToDistinguish: bool; theToMapTexture: bool) {.cdecl,
    importcpp: "UpdateMaterialStateTo", header: "OpenGl_ShaderManager.hxx".}
proc updateMaterialState*(this: var OpenGlShaderManager) {.cdecl,
    importcpp: "UpdateMaterialState", header: "OpenGl_ShaderManager.hxx".}
proc pushMaterialState*(this: OpenGlShaderManager;
                       theProgram: Handle[OpenGlShaderProgram]) {.noSideEffect,
    cdecl, importcpp: "PushMaterialState", header: "OpenGl_ShaderManager.hxx".}
# proc pushMaterialState*(this: OpenGlShaderManager;
#                        theProgram: Handle[OpenGlShaderProgram]) {.noSideEffect,
#     cdecl, importcpp: "pushMaterialState", header: "OpenGl_ShaderManager.hxx".}
proc pushInteriorState*(this: OpenGlShaderManager;
                       theProgram: Handle[OpenGlShaderProgram];
                       theAspect: Handle[Graphic3dAspects]) {.noSideEffect, cdecl,
    importcpp: "PushInteriorState", header: "OpenGl_ShaderManager.hxx".}
proc oitState*(this: OpenGlShaderManager): OpenGlOitState {.noSideEffect, cdecl,
    importcpp: "OitState", header: "OpenGl_ShaderManager.hxx".}
proc setOitState*(this: var OpenGlShaderManager; theToEnableOitWrite: bool;
                 theDepthFactor: cfloat) {.cdecl, importcpp: "SetOitState",
    header: "OpenGl_ShaderManager.hxx".}
proc pushOitState*(this: OpenGlShaderManager;
                  theProgram: Handle[OpenGlShaderProgram]) {.noSideEffect, cdecl,
    importcpp: "PushOitState", header: "OpenGl_ShaderManager.hxx".}
# proc pushOitState*(this: OpenGlShaderManager;
#                   theProgram: Handle[OpenGlShaderProgram]) {.noSideEffect, cdecl,
#     importcpp: "pushOitState", header: "OpenGl_ShaderManager.hxx".}
proc pushState*(this: OpenGlShaderManager; theProgram: Handle[OpenGlShaderProgram];
    theShadingModel: Graphic3dTypeOfShadingModel = graphic3dTOSM_UNLIT) {.
    noSideEffect, cdecl, importcpp: "PushState", header: "OpenGl_ShaderManager.hxx".}
proc setContext*(this: var OpenGlShaderManager; theCtx: ptr OpenGlContext) {.cdecl,
    importcpp: "SetContext", header: "OpenGl_ShaderManager.hxx".}
proc isSameContext*(this: OpenGlShaderManager; theCtx: ptr OpenGlContext): bool {.
    noSideEffect, cdecl, importcpp: "IsSameContext", header: "OpenGl_ShaderManager.hxx".}
proc chooseFaceShadingModel*(this: OpenGlShaderManager;
                            theCustomModel: Graphic3dTypeOfShadingModel;
                            theHasNodalNormals: bool): Graphic3dTypeOfShadingModel {.
    noSideEffect, cdecl, importcpp: "ChooseFaceShadingModel", header: "OpenGl_ShaderManager.hxx".}
proc chooseLineShadingModel*(this: OpenGlShaderManager;
                            theCustomModel: Graphic3dTypeOfShadingModel;
                            theHasNodalNormals: bool): Graphic3dTypeOfShadingModel {.
    noSideEffect, cdecl, importcpp: "ChooseLineShadingModel", header: "OpenGl_ShaderManager.hxx".}
proc chooseMarkerShadingModel*(this: OpenGlShaderManager;
                              theCustomModel: Graphic3dTypeOfShadingModel;
                              theHasNodalNormals: bool): Graphic3dTypeOfShadingModel {.
    noSideEffect, cdecl, importcpp: "ChooseMarkerShadingModel", header: "OpenGl_ShaderManager.hxx".}
proc shadingModel*(this: OpenGlShaderManager): Graphic3dTypeOfShadingModel {.
    noSideEffect, cdecl, importcpp: "ShadingModel", header: "OpenGl_ShaderManager.hxx".}
proc setShadingModel*(this: var OpenGlShaderManager;
                     theModel: Graphic3dTypeOfShadingModel) {.cdecl,
    importcpp: "SetShadingModel", header: "OpenGl_ShaderManager.hxx".}
proc setLastView*(this: var OpenGlShaderManager; theLastView: ptr OpenGlView) {.cdecl,
    importcpp: "SetLastView", header: "OpenGl_ShaderManager.hxx".}
proc isSameView*(this: OpenGlShaderManager; theView: ptr OpenGlView): bool {.
    noSideEffect, cdecl, importcpp: "IsSameView", header: "OpenGl_ShaderManager.hxx".}


