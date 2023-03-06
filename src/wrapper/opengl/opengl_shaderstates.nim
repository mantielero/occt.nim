import opengl_types
import ../standard/standard_types
import ../graphic3d/graphic3d_types

##  Created on: 2013-10-02
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

## ! Defines interface for OpenGL state.



proc newOpenGlStateInterface*(): OpenGlStateInterface {.cdecl, constructor,
    importcpp: "OpenGl_StateInterface(@)", header: "OpenGl_ShaderStates.hxx".}
proc index*(this: OpenGlStateInterface): csize_t {.noSideEffect, cdecl,
    importcpp: "Index", header: "OpenGl_ShaderStates.hxx".}
proc update*(this: var OpenGlStateInterface) {.cdecl, importcpp: "Update",
    header: "OpenGl_ShaderStates.hxx".}
## ! Defines state of OCCT projection transformation.



proc newOpenGlProjectionState*(): OpenGlProjectionState {.cdecl, constructor,
    importcpp: "OpenGl_ProjectionState(@)", header: "OpenGl_ShaderStates.hxx".}
proc set*(this: var OpenGlProjectionState; theProjectionMatrix: OpenGlMat4) {.cdecl,
    importcpp: "Set", header: "OpenGl_ShaderStates.hxx".}
proc projectionMatrix*(this: OpenGlProjectionState): OpenGlMat4 {.noSideEffect,
    cdecl, importcpp: "ProjectionMatrix", header: "OpenGl_ShaderStates.hxx".}
proc projectionMatrixInverse*(this: OpenGlProjectionState): OpenGlMat4 {.
    noSideEffect, cdecl, importcpp: "ProjectionMatrixInverse", header: "OpenGl_ShaderStates.hxx".}
## ! Defines state of OCCT model-world transformation.



proc newOpenGlModelWorldState*(): OpenGlModelWorldState {.cdecl, constructor,
    importcpp: "OpenGl_ModelWorldState(@)", header: "OpenGl_ShaderStates.hxx".}
proc set*(this: var OpenGlModelWorldState; theModelWorldMatrix: OpenGlMat4) {.cdecl,
    importcpp: "Set", header: "OpenGl_ShaderStates.hxx".}
proc modelWorldMatrix*(this: OpenGlModelWorldState): OpenGlMat4 {.noSideEffect,
    cdecl, importcpp: "ModelWorldMatrix", header: "OpenGl_ShaderStates.hxx".}
proc modelWorldMatrixInverse*(this: OpenGlModelWorldState): OpenGlMat4 {.
    noSideEffect, cdecl, importcpp: "ModelWorldMatrixInverse", header: "OpenGl_ShaderStates.hxx".}
## ! Defines state of OCCT world-view transformation.



proc newOpenGlWorldViewState*(): OpenGlWorldViewState {.cdecl, constructor,
    importcpp: "OpenGl_WorldViewState(@)", header: "OpenGl_ShaderStates.hxx".}
proc set*(this: var OpenGlWorldViewState; theWorldViewMatrix: OpenGlMat4) {.cdecl,
    importcpp: "Set", header: "OpenGl_ShaderStates.hxx".}
proc worldViewMatrix*(this: OpenGlWorldViewState): OpenGlMat4 {.noSideEffect, cdecl,
    importcpp: "WorldViewMatrix", header: "OpenGl_ShaderStates.hxx".}
proc worldViewMatrixInverse*(this: OpenGlWorldViewState): OpenGlMat4 {.noSideEffect,
    cdecl, importcpp: "WorldViewMatrixInverse", header: "OpenGl_ShaderStates.hxx".}
## ! Defines state of OCCT light sources.



proc newOpenGlLightSourceState*(): OpenGlLightSourceState {.cdecl, constructor,
    importcpp: "OpenGl_LightSourceState(@)", header: "OpenGl_ShaderStates.hxx".}
proc set*(this: var OpenGlLightSourceState;
         theLightSources: Handle[Graphic3dLightSet]) {.cdecl, importcpp: "Set",
    header: "OpenGl_ShaderStates.hxx".}
proc lightSources*(this: OpenGlLightSourceState): Handle[Graphic3dLightSet] {.
    noSideEffect, cdecl, importcpp: "LightSources", header: "OpenGl_ShaderStates.hxx".}
proc specIBLMapLevels*(this: OpenGlLightSourceState): cint {.noSideEffect, cdecl,
    importcpp: "SpecIBLMapLevels", header: "OpenGl_ShaderStates.hxx".}
proc setSpecIBLMapLevels*(this: var OpenGlLightSourceState;
                         theSpecIBLMapLevels: cint) {.cdecl,
    importcpp: "SetSpecIBLMapLevels", header: "OpenGl_ShaderStates.hxx".}
## ! Defines generic state of OCCT clipping state.



proc newOpenGlClippingState*(): OpenGlClippingState {.cdecl, constructor,
    importcpp: "OpenGl_ClippingState(@)", header: "OpenGl_ShaderStates.hxx".}
proc index*(this: OpenGlClippingState): csize_t {.noSideEffect, cdecl,
    importcpp: "Index", header: "OpenGl_ShaderStates.hxx".}
proc update*(this: var OpenGlClippingState) {.cdecl, importcpp: "Update",
    header: "OpenGl_ShaderStates.hxx".}
proc revert*(this: var OpenGlClippingState) {.cdecl, importcpp: "Revert",
    header: "OpenGl_ShaderStates.hxx".}
## ! Defines generic state of order-independent transparency rendering properties.



proc newOpenGlOitState*(): OpenGlOitState {.cdecl, constructor,
    importcpp: "OpenGl_OitState(@)", header: "OpenGl_ShaderStates.hxx".}
proc set*(this: var OpenGlOitState; theToEnableWrite: bool; theDepthFactor: cfloat) {.
    cdecl, importcpp: "Set", header: "OpenGl_ShaderStates.hxx".}
proc toEnableWrite*(this: OpenGlOitState): bool {.noSideEffect, cdecl,
    importcpp: "ToEnableWrite", header: "OpenGl_ShaderStates.hxx".}
proc depthFactor*(this: OpenGlOitState): cfloat {.noSideEffect, cdecl,
    importcpp: "DepthFactor", header: "OpenGl_ShaderStates.hxx".}
