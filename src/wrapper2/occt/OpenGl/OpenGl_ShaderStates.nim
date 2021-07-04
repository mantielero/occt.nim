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

import
  ../NCollection/NCollection_List, ../Graphic3d/Graphic3d_LightSet,
  OpenGl_Element, OpenGl_Vec

## ! Defines interface for OpenGL state.

type
  OpenGl_StateInterface* {.importcpp: "OpenGl_StateInterface",
                          header: "OpenGl_ShaderStates.hxx", bycopy.} = object ## !
                                                                          ## Creates new state.
    ## !< current state index


proc constructOpenGl_StateInterface*(): OpenGl_StateInterface {.constructor,
    importcpp: "OpenGl_StateInterface(@)", header: "OpenGl_ShaderStates.hxx".}
proc Index*(this: OpenGl_StateInterface): Standard_Size {.noSideEffect,
    importcpp: "Index", header: "OpenGl_ShaderStates.hxx".}
proc Update*(this: var OpenGl_StateInterface) {.importcpp: "Update",
    header: "OpenGl_ShaderStates.hxx".}
## ! Defines state of OCCT projection transformation.

type
  OpenGl_ProjectionState* {.importcpp: "OpenGl_ProjectionState",
                           header: "OpenGl_ShaderStates.hxx", bycopy.} = object of OpenGl_StateInterface ##
                                                                                                  ## !
                                                                                                  ## Creates
                                                                                                  ## uninitialized
                                                                                                  ## projection
                                                                                                  ## state.
    ## !< OCCT projection matrix
    ## !< Inverse of OCCT projection matrix
    ## !< Is inversed matrix outdated?


proc constructOpenGl_ProjectionState*(): OpenGl_ProjectionState {.constructor,
    importcpp: "OpenGl_ProjectionState(@)", header: "OpenGl_ShaderStates.hxx".}
proc Set*(this: var OpenGl_ProjectionState; theProjectionMatrix: OpenGl_Mat4) {.
    importcpp: "Set", header: "OpenGl_ShaderStates.hxx".}
proc ProjectionMatrix*(this: OpenGl_ProjectionState): OpenGl_Mat4 {.noSideEffect,
    importcpp: "ProjectionMatrix", header: "OpenGl_ShaderStates.hxx".}
proc ProjectionMatrixInverse*(this: OpenGl_ProjectionState): OpenGl_Mat4 {.
    noSideEffect, importcpp: "ProjectionMatrixInverse",
    header: "OpenGl_ShaderStates.hxx".}
## ! Defines state of OCCT model-world transformation.

type
  OpenGl_ModelWorldState* {.importcpp: "OpenGl_ModelWorldState",
                           header: "OpenGl_ShaderStates.hxx", bycopy.} = object of OpenGl_StateInterface ##
                                                                                                  ## !
                                                                                                  ## Creates
                                                                                                  ## uninitialized
                                                                                                  ## model-world
                                                                                                  ## state.
    ## !< OCCT model-world matrix
    ## !< Inverse of OCCT model-world matrix
    ## !< Is inversed matrix outdated?


proc constructOpenGl_ModelWorldState*(): OpenGl_ModelWorldState {.constructor,
    importcpp: "OpenGl_ModelWorldState(@)", header: "OpenGl_ShaderStates.hxx".}
proc Set*(this: var OpenGl_ModelWorldState; theModelWorldMatrix: OpenGl_Mat4) {.
    importcpp: "Set", header: "OpenGl_ShaderStates.hxx".}
proc ModelWorldMatrix*(this: OpenGl_ModelWorldState): OpenGl_Mat4 {.noSideEffect,
    importcpp: "ModelWorldMatrix", header: "OpenGl_ShaderStates.hxx".}
proc ModelWorldMatrixInverse*(this: OpenGl_ModelWorldState): OpenGl_Mat4 {.
    noSideEffect, importcpp: "ModelWorldMatrixInverse",
    header: "OpenGl_ShaderStates.hxx".}
## ! Defines state of OCCT world-view transformation.

type
  OpenGl_WorldViewState* {.importcpp: "OpenGl_WorldViewState",
                          header: "OpenGl_ShaderStates.hxx", bycopy.} = object of OpenGl_StateInterface ##
                                                                                                 ## !
                                                                                                 ## Creates
                                                                                                 ## uninitialized
                                                                                                 ## world-view
                                                                                                 ## state.
    ## !< OCCT world-view matrix
    ## !< Inverse of OCCT world-view matrix
    ## !< Is inversed matrix outdated?


proc constructOpenGl_WorldViewState*(): OpenGl_WorldViewState {.constructor,
    importcpp: "OpenGl_WorldViewState(@)", header: "OpenGl_ShaderStates.hxx".}
proc Set*(this: var OpenGl_WorldViewState; theWorldViewMatrix: OpenGl_Mat4) {.
    importcpp: "Set", header: "OpenGl_ShaderStates.hxx".}
proc WorldViewMatrix*(this: OpenGl_WorldViewState): OpenGl_Mat4 {.noSideEffect,
    importcpp: "WorldViewMatrix", header: "OpenGl_ShaderStates.hxx".}
proc WorldViewMatrixInverse*(this: OpenGl_WorldViewState): OpenGl_Mat4 {.
    noSideEffect, importcpp: "WorldViewMatrixInverse",
    header: "OpenGl_ShaderStates.hxx".}
## ! Defines state of OCCT light sources.

type
  OpenGl_LightSourceState* {.importcpp: "OpenGl_LightSourceState",
                            header: "OpenGl_ShaderStates.hxx", bycopy.} = object of OpenGl_StateInterface ##
                                                                                                   ## !
                                                                                                   ## Creates
                                                                                                   ## uninitialized
                                                                                                   ## state
                                                                                                   ## of
                                                                                                   ## light
                                                                                                   ## sources.
    ## !< List of OCCT light sources
    ## !< Number of mipmap levels used in specular IBL map (0 by default or in case of using non-PBR shading model)


proc constructOpenGl_LightSourceState*(): OpenGl_LightSourceState {.constructor,
    importcpp: "OpenGl_LightSourceState(@)", header: "OpenGl_ShaderStates.hxx".}
proc Set*(this: var OpenGl_LightSourceState;
         theLightSources: handle[Graphic3d_LightSet]) {.importcpp: "Set",
    header: "OpenGl_ShaderStates.hxx".}
proc LightSources*(this: OpenGl_LightSourceState): handle[Graphic3d_LightSet] {.
    noSideEffect, importcpp: "LightSources", header: "OpenGl_ShaderStates.hxx".}
proc SpecIBLMapLevels*(this: OpenGl_LightSourceState): Standard_Integer {.
    noSideEffect, importcpp: "SpecIBLMapLevels", header: "OpenGl_ShaderStates.hxx".}
proc SetSpecIBLMapLevels*(this: var OpenGl_LightSourceState;
                         theSpecIBLMapLevels: Standard_Integer) {.
    importcpp: "SetSpecIBLMapLevels", header: "OpenGl_ShaderStates.hxx".}
## ! Defines generic state of OCCT clipping state.

type
  OpenGl_ClippingState* {.importcpp: "OpenGl_ClippingState",
                         header: "OpenGl_ShaderStates.hxx", bycopy.} = object ## ! Creates new
                                                                         ## clipping state.
    ## !< Current state index
    ## !< Next    state index
    ## !< Stack of previous states


proc constructOpenGl_ClippingState*(): OpenGl_ClippingState {.constructor,
    importcpp: "OpenGl_ClippingState(@)", header: "OpenGl_ShaderStates.hxx".}
proc Index*(this: OpenGl_ClippingState): Standard_Size {.noSideEffect,
    importcpp: "Index", header: "OpenGl_ShaderStates.hxx".}
proc Update*(this: var OpenGl_ClippingState) {.importcpp: "Update",
    header: "OpenGl_ShaderStates.hxx".}
proc Revert*(this: var OpenGl_ClippingState) {.importcpp: "Revert",
    header: "OpenGl_ShaderStates.hxx".}
## ! Defines generic state of order-independent transparency rendering properties.

type
  OpenGl_OitState* {.importcpp: "OpenGl_OitState",
                    header: "OpenGl_ShaderStates.hxx", bycopy.} = object of OpenGl_StateInterface ##
                                                                                           ## !
                                                                                           ## Creates
                                                                                           ## new
                                                                                           ## uniform
                                                                                           ## state.
    ## !< writing color and coverage.
    ## !< factor of depth influence to coverage.


proc constructOpenGl_OitState*(): OpenGl_OitState {.constructor,
    importcpp: "OpenGl_OitState(@)", header: "OpenGl_ShaderStates.hxx".}
proc Set*(this: var OpenGl_OitState; theToEnableWrite: bool; theDepthFactor: cfloat) {.
    importcpp: "Set", header: "OpenGl_ShaderStates.hxx".}
proc ToEnableWrite*(this: OpenGl_OitState): bool {.noSideEffect,
    importcpp: "ToEnableWrite", header: "OpenGl_ShaderStates.hxx".}
proc DepthFactor*(this: OpenGl_OitState): cfloat {.noSideEffect,
    importcpp: "DepthFactor", header: "OpenGl_ShaderStates.hxx".}