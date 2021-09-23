##  Created on: 2011-09-20
##  Created by: Sergey ZERCHANINOV
##  Copyright (c) 2011-2013 OPEN CASCADE SAS
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
  ../Graphic3d/Graphic3d_BufferType, OpenGl_Aspects, OpenGl_CappingAlgo,
  OpenGl_FrameBuffer, OpenGl_Material, OpenGl_Matrix, OpenGl_ShaderObject,
  OpenGl_ShaderProgram, OpenGl_TextureBufferArb, OpenGl_RenderFilter, OpenGl_Vec,
  OpenGl_Window

discard "forward decl of OpenGl_View"
discard "forward decl of Image_PixMap"
discard "forward decl of OpenGl_Workspace"
discard "forward decl of OpenGl_Workspace"
type
  Handle_OpenGl_Workspace* = handle[OpenGl_Workspace]

## ! Rendering workspace.
## ! Provides methods to render primitives and maintain GL state.

type
  OpenGl_Workspace* {.importcpp: "OpenGl_Workspace",
                     header: "OpenGl_Workspace.hxx", bycopy.} = object of Standard_Transient ##
                                                                                      ## !
                                                                                      ## Constructor
                                                                                      ## of
                                                                                      ## rendering
                                                                                      ## workspace.
                                                                                      ##
                                                                                      ## !
                                                                                      ## @name
                                                                                      ## protected
                                                                                      ## fields
                                                                                      ##
                                                                                      ## !
                                                                                      ## @name
                                                                                      ## fields
                                                                                      ## related
                                                                                      ## to
                                                                                      ## status
                                                                                      ##
                                                                                      ## !
                                                                                      ## @name
                                                                                      ## type
                                                                                      ## definition
    ## !< counter of skipped transparent elements for OpenGl_LayerList two rendering passes method
    ## !< active filter for skipping rendering of elements by some criteria (multiple render passes)
    ## !< allow back face culling
    ## !< active highlight style
    ## !< Model matrix with applied structure transformations
    ## !< Hiddenline aspect


proc constructOpenGl_Workspace*(theView: ptr OpenGl_View;
                               theWindow: handle[OpenGl_Window]): OpenGl_Workspace {.
    constructor, importcpp: "OpenGl_Workspace(@)", header: "OpenGl_Workspace.hxx".}
proc destroyOpenGl_Workspace*(this: var OpenGl_Workspace) {.
    importcpp: "#.~OpenGl_Workspace()", header: "OpenGl_Workspace.hxx".}
proc Activate*(this: var OpenGl_Workspace): Standard_Boolean {.importcpp: "Activate",
    header: "OpenGl_Workspace.hxx".}
proc View*(this: OpenGl_Workspace): ptr OpenGl_View {.noSideEffect, importcpp: "View",
    header: "OpenGl_Workspace.hxx".}
proc GetGlContext*(this: var OpenGl_Workspace): handle[OpenGl_Context] {.
    importcpp: "GetGlContext", header: "OpenGl_Workspace.hxx".}
proc FBOCreate*(this: var OpenGl_Workspace; theWidth: Standard_Integer;
               theHeight: Standard_Integer): handle[OpenGl_FrameBuffer] {.
    importcpp: "FBOCreate", header: "OpenGl_Workspace.hxx".}
proc FBORelease*(this: var OpenGl_Workspace; theFbo: var handle[OpenGl_FrameBuffer]) {.
    importcpp: "FBORelease", header: "OpenGl_Workspace.hxx".}
proc BufferDump*(this: var OpenGl_Workspace; theFbo: handle[OpenGl_FrameBuffer];
                theImage: var Image_PixMap; theBufferType: Graphic3d_BufferType): Standard_Boolean {.
    importcpp: "BufferDump", header: "OpenGl_Workspace.hxx".}
proc Width*(this: OpenGl_Workspace): Standard_Integer {.noSideEffect,
    importcpp: "Width", header: "OpenGl_Workspace.hxx".}
proc Height*(this: OpenGl_Workspace): Standard_Integer {.noSideEffect,
    importcpp: "Height", header: "OpenGl_Workspace.hxx".}
proc SetUseZBuffer*(this: var OpenGl_Workspace; theToUse: Standard_Boolean): Standard_Boolean {.
    importcpp: "SetUseZBuffer", header: "OpenGl_Workspace.hxx".}
proc UseZBuffer*(this: var OpenGl_Workspace): var Standard_Boolean {.
    importcpp: "UseZBuffer", header: "OpenGl_Workspace.hxx".}
proc UseDepthWrite*(this: var OpenGl_Workspace): var Standard_Boolean {.
    importcpp: "UseDepthWrite", header: "OpenGl_Workspace.hxx".}
proc SetDefaultPolygonOffset*(this: var OpenGl_Workspace;
                             theOffset: Graphic3d_PolygonOffset): Graphic3d_PolygonOffset {.
    importcpp: "SetDefaultPolygonOffset", header: "OpenGl_Workspace.hxx".}
proc ToAllowFaceCulling*(this: OpenGl_Workspace): bool {.noSideEffect,
    importcpp: "ToAllowFaceCulling", header: "OpenGl_Workspace.hxx".}
proc SetAllowFaceCulling*(this: var OpenGl_Workspace; theToAllow: bool): bool {.
    importcpp: "SetAllowFaceCulling", header: "OpenGl_Workspace.hxx".}
proc ToHighlight*(this: OpenGl_Workspace): bool {.noSideEffect,
    importcpp: "ToHighlight", header: "OpenGl_Workspace.hxx".}
proc HighlightStyle*(this: OpenGl_Workspace): handle[
    Graphic3d_PresentationAttributes] {.noSideEffect, importcpp: "HighlightStyle",
                                       header: "OpenGl_Workspace.hxx".}
proc SetHighlightStyle*(this: var OpenGl_Workspace;
                       theStyle: handle[Graphic3d_PresentationAttributes]) {.
    importcpp: "SetHighlightStyle", header: "OpenGl_Workspace.hxx".}
proc EdgeColor*(this: OpenGl_Workspace): OpenGl_Vec4 {.noSideEffect,
    importcpp: "EdgeColor", header: "OpenGl_Workspace.hxx".}
proc InteriorColor*(this: OpenGl_Workspace): OpenGl_Vec4 {.noSideEffect,
    importcpp: "InteriorColor", header: "OpenGl_Workspace.hxx".}
proc TextColor*(this: OpenGl_Workspace): OpenGl_Vec4 {.noSideEffect,
    importcpp: "TextColor", header: "OpenGl_Workspace.hxx".}
proc TextSubtitleColor*(this: OpenGl_Workspace): OpenGl_Vec4 {.noSideEffect,
    importcpp: "TextSubtitleColor", header: "OpenGl_Workspace.hxx".}
proc Aspects*(this: OpenGl_Workspace): ptr OpenGl_Aspects {.noSideEffect,
    importcpp: "Aspects", header: "OpenGl_Workspace.hxx".}
proc SetAspects*(this: var OpenGl_Workspace; theAspect: ptr OpenGl_Aspects): ptr OpenGl_Aspects {.
    importcpp: "SetAspects", header: "OpenGl_Workspace.hxx".}
proc TextureSet*(this: OpenGl_Workspace): handle[OpenGl_TextureSet] {.noSideEffect,
    importcpp: "TextureSet", header: "OpenGl_Workspace.hxx".}
proc ApplyAspects*(this: var OpenGl_Workspace; theToBindTextures: bool = true): ptr OpenGl_Aspects {.
    importcpp: "ApplyAspects", header: "OpenGl_Workspace.hxx".}
proc ResetAppliedAspect*(this: var OpenGl_Workspace) {.
    importcpp: "ResetAppliedAspect", header: "OpenGl_Workspace.hxx".}
proc RenderFilter*(this: OpenGl_Workspace): Standard_Integer {.noSideEffect,
    importcpp: "RenderFilter", header: "OpenGl_Workspace.hxx".}
proc SetRenderFilter*(this: var OpenGl_Workspace; theFilter: Standard_Integer) {.
    importcpp: "SetRenderFilter", header: "OpenGl_Workspace.hxx".}
proc ShouldRender*(this: var OpenGl_Workspace; theElement: ptr OpenGl_Element): bool {.
    importcpp: "ShouldRender", header: "OpenGl_Workspace.hxx".}
proc NbSkippedTransparentElements*(this: var OpenGl_Workspace): Standard_Integer {.
    importcpp: "NbSkippedTransparentElements", header: "OpenGl_Workspace.hxx".}
proc ResetSkippedCounter*(this: var OpenGl_Workspace) {.
    importcpp: "ResetSkippedCounter", header: "OpenGl_Workspace.hxx".}
proc ViewMatrix*(this: OpenGl_Workspace): ptr OpenGl_Matrix {.noSideEffect,
    importcpp: "ViewMatrix", header: "OpenGl_Workspace.hxx".}
proc ModelMatrix*(this: OpenGl_Workspace): ptr OpenGl_Matrix {.noSideEffect,
    importcpp: "ModelMatrix", header: "OpenGl_Workspace.hxx".}
proc NoneCulling*(this: OpenGl_Workspace): OpenGl_Aspects {.noSideEffect,
    importcpp: "NoneCulling", header: "OpenGl_Workspace.hxx".}
proc FrontCulling*(this: OpenGl_Workspace): OpenGl_Aspects {.noSideEffect,
    importcpp: "FrontCulling", header: "OpenGl_Workspace.hxx".}
proc SetEnvironmentTexture*(this: var OpenGl_Workspace;
                           theTexture: handle[OpenGl_TextureSet]) {.
    importcpp: "SetEnvironmentTexture", header: "OpenGl_Workspace.hxx".}
proc EnvironmentTexture*(this: OpenGl_Workspace): handle[OpenGl_TextureSet] {.
    noSideEffect, importcpp: "EnvironmentTexture", header: "OpenGl_Workspace.hxx".}
proc DumpJson*(this: OpenGl_Workspace; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "OpenGl_Workspace.hxx".}
type
  OpenGl_Workspacebase_type* = Standard_Transient

proc get_type_name*(): cstring {.importcpp: "OpenGl_Workspace::get_type_name(@)",
                              header: "OpenGl_Workspace.hxx".}
proc get_type_descriptor*(): handle[Standard_Type] {.
    importcpp: "OpenGl_Workspace::get_type_descriptor(@)",
    header: "OpenGl_Workspace.hxx".}
proc DynamicType*(this: OpenGl_Workspace): handle[Standard_Type] {.noSideEffect,
    importcpp: "DynamicType", header: "OpenGl_Workspace.hxx".}