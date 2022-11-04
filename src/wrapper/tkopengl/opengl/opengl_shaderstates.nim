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

type
  OpenGlStateInterface* {.importcpp: "OpenGl_StateInterface",
                         header: "OpenGl_ShaderStates.hxx", bycopy.} = object ## ! Creates new state.
    ## !< current state index


proc newOpenGlStateInterface*(): OpenGlStateInterface {.cdecl, constructor,
    importcpp: "OpenGl_StateInterface(@)", dynlib: tkkxbase.}
proc index*(this: OpenGlStateInterface): csize_t {.noSideEffect, cdecl,
    importcpp: "Index", dynlib: tkkxbase.}
proc update*(this: var OpenGlStateInterface) {.cdecl, importcpp: "Update",
    dynlib: tkkxbase.}
## ! Defines state of OCCT projection transformation.

type
  OpenGlProjectionState* {.importcpp: "OpenGl_ProjectionState",
                          header: "OpenGl_ShaderStates.hxx", bycopy.} = object of OpenGlStateInterface ##
                                                                                                ## !
                                                                                                ## Creates
                                                                                                ## uninitialized
                                                                                                ## projection
                                                                                                ## state.
    ## !< OCCT projection matrix
    ## !< Inverse of OCCT projection matrix
    ## !< Is inversed matrix outdated?


proc newOpenGlProjectionState*(): OpenGlProjectionState {.cdecl, constructor,
    importcpp: "OpenGl_ProjectionState(@)", dynlib: tkkxbase.}
proc set*(this: var OpenGlProjectionState; theProjectionMatrix: OpenGlMat4) {.cdecl,
    importcpp: "Set", dynlib: tkkxbase.}
proc projectionMatrix*(this: OpenGlProjectionState): OpenGlMat4 {.noSideEffect,
    cdecl, importcpp: "ProjectionMatrix", dynlib: tkkxbase.}
proc projectionMatrixInverse*(this: OpenGlProjectionState): OpenGlMat4 {.
    noSideEffect, cdecl, importcpp: "ProjectionMatrixInverse", dynlib: tkkxbase.}
## ! Defines state of OCCT model-world transformation.

type
  OpenGlModelWorldState* {.importcpp: "OpenGl_ModelWorldState",
                          header: "OpenGl_ShaderStates.hxx", bycopy.} = object of OpenGlStateInterface ##
                                                                                                ## !
                                                                                                ## Creates
                                                                                                ## uninitialized
                                                                                                ## model-world
                                                                                                ## state.
    ## !< OCCT model-world matrix
    ## !< Inverse of OCCT model-world matrix
    ## !< Is inversed matrix outdated?


proc newOpenGlModelWorldState*(): OpenGlModelWorldState {.cdecl, constructor,
    importcpp: "OpenGl_ModelWorldState(@)", dynlib: tkkxbase.}
proc set*(this: var OpenGlModelWorldState; theModelWorldMatrix: OpenGlMat4) {.cdecl,
    importcpp: "Set", dynlib: tkkxbase.}
proc modelWorldMatrix*(this: OpenGlModelWorldState): OpenGlMat4 {.noSideEffect,
    cdecl, importcpp: "ModelWorldMatrix", dynlib: tkkxbase.}
proc modelWorldMatrixInverse*(this: OpenGlModelWorldState): OpenGlMat4 {.
    noSideEffect, cdecl, importcpp: "ModelWorldMatrixInverse", dynlib: tkkxbase.}
## ! Defines state of OCCT world-view transformation.

type
  OpenGlWorldViewState* {.importcpp: "OpenGl_WorldViewState",
                         header: "OpenGl_ShaderStates.hxx", bycopy.} = object of OpenGlStateInterface ##
                                                                                               ## !
                                                                                               ## Creates
                                                                                               ## uninitialized
                                                                                               ## world-view
                                                                                               ## state.
    ## !< OCCT world-view matrix
    ## !< Inverse of OCCT world-view matrix
    ## !< Is inversed matrix outdated?


proc newOpenGlWorldViewState*(): OpenGlWorldViewState {.cdecl, constructor,
    importcpp: "OpenGl_WorldViewState(@)", dynlib: tkkxbase.}
proc set*(this: var OpenGlWorldViewState; theWorldViewMatrix: OpenGlMat4) {.cdecl,
    importcpp: "Set", dynlib: tkkxbase.}
proc worldViewMatrix*(this: OpenGlWorldViewState): OpenGlMat4 {.noSideEffect, cdecl,
    importcpp: "WorldViewMatrix", dynlib: tkkxbase.}
proc worldViewMatrixInverse*(this: OpenGlWorldViewState): OpenGlMat4 {.noSideEffect,
    cdecl, importcpp: "WorldViewMatrixInverse", dynlib: tkkxbase.}
## ! Defines state of OCCT light sources.

type
  OpenGlLightSourceState* {.importcpp: "OpenGl_LightSourceState",
                           header: "OpenGl_ShaderStates.hxx", bycopy.} = object of OpenGlStateInterface ##
                                                                                                 ## !
                                                                                                 ## Creates
                                                                                                 ## uninitialized
                                                                                                 ## state
                                                                                                 ## of
                                                                                                 ## light
                                                                                                 ## sources.
    ## !< List of OCCT light sources
    ## !< Number of mipmap levels used in specular IBL map (0 by default or in case of using non-PBR shading model)


proc newOpenGlLightSourceState*(): OpenGlLightSourceState {.cdecl, constructor,
    importcpp: "OpenGl_LightSourceState(@)", dynlib: tkkxbase.}
proc set*(this: var OpenGlLightSourceState;
         theLightSources: Handle[Graphic3dLightSet]) {.cdecl, importcpp: "Set",
    dynlib: tkkxbase.}
proc lightSources*(this: OpenGlLightSourceState): Handle[Graphic3dLightSet] {.
    noSideEffect, cdecl, importcpp: "LightSources", dynlib: tkkxbase.}
proc specIBLMapLevels*(this: OpenGlLightSourceState): cint {.noSideEffect, cdecl,
    importcpp: "SpecIBLMapLevels", dynlib: tkkxbase.}
proc setSpecIBLMapLevels*(this: var OpenGlLightSourceState;
                         theSpecIBLMapLevels: cint) {.cdecl,
    importcpp: "SetSpecIBLMapLevels", dynlib: tkkxbase.}
## ! Defines generic state of OCCT clipping state.

type
  OpenGlClippingState* {.importcpp: "OpenGl_ClippingState",
                        header: "OpenGl_ShaderStates.hxx", bycopy.} = object ## ! Creates new clipping state.
    ## !< Current state index
    ## !< Next    state index
    ## !< Stack of previous states


proc newOpenGlClippingState*(): OpenGlClippingState {.cdecl, constructor,
    importcpp: "OpenGl_ClippingState(@)", dynlib: tkkxbase.}
proc index*(this: OpenGlClippingState): csize_t {.noSideEffect, cdecl,
    importcpp: "Index", dynlib: tkkxbase.}
proc update*(this: var OpenGlClippingState) {.cdecl, importcpp: "Update",
    dynlib: tkkxbase.}
proc revert*(this: var OpenGlClippingState) {.cdecl, importcpp: "Revert",
    dynlib: tkkxbase.}
## ! Defines generic state of order-independent transparency rendering properties.

type
  OpenGlOitState* {.importcpp: "OpenGl_OitState",
                   header: "OpenGl_ShaderStates.hxx", bycopy.} = object of OpenGlStateInterface ##
                                                                                         ## !
                                                                                         ## Creates
                                                                                         ## new
                                                                                         ## uniform
                                                                                         ## state.
    ## !< writing color and coverage.
    ## !< factor of depth influence to coverage.


proc newOpenGlOitState*(): OpenGlOitState {.cdecl, constructor,
    importcpp: "OpenGl_OitState(@)", dynlib: tkkxbase.}
proc set*(this: var OpenGlOitState; theToEnableWrite: bool; theDepthFactor: cfloat) {.
    cdecl, importcpp: "Set", dynlib: tkkxbase.}
proc toEnableWrite*(this: OpenGlOitState): bool {.noSideEffect, cdecl,
    importcpp: "ToEnableWrite", dynlib: tkkxbase.}
proc depthFactor*(this: OpenGlOitState): cfloat {.noSideEffect, cdecl,
    importcpp: "DepthFactor", dynlib: tkkxbase.}