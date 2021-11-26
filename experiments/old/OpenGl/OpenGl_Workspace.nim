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

discard "forward decl of OpenGl_View"
discard "forward decl of Image_PixMap"
discard "forward decl of OpenGl_Workspace"
discard "forward decl of OpenGl_Workspace"
type
  HandleC1C1* = Handle[OpenGlWorkspace]

## ! Rendering workspace.
## ! Provides methods to render primitives and maintain GL state.

type
  OpenGlWorkspace* {.importcpp: "OpenGl_Workspace", header: "OpenGl_Workspace.hxx",
                    bycopy.} = object of StandardTransient ## ! Constructor of rendering workspace.
                                                      ## ! @name protected fields
                                                      ## ! @name fields related to status
                                                      ## ! @name type definition
    ## !< counter of skipped transparent elements for OpenGl_LayerList two rendering passes method
    ## !< active filter for skipping rendering of elements by some criteria (multiple render passes)
    ## !< allow back face culling
    ## !< active highlight style
    ## !< Model matrix with applied structure transformations
    ## !< Hiddenline aspect


proc constructOpenGlWorkspace*(theView: ptr OpenGlView;
                              theWindow: Handle[OpenGlWindow]): OpenGlWorkspace {.
    constructor, importcpp: "OpenGl_Workspace(@)", header: "OpenGl_Workspace.hxx".}
proc destroyOpenGlWorkspace*(this: var OpenGlWorkspace) {.
    importcpp: "#.~OpenGl_Workspace()", header: "OpenGl_Workspace.hxx".}
proc activate*(this: var OpenGlWorkspace): bool {.importcpp: "Activate",
    header: "OpenGl_Workspace.hxx".}
proc view*(this: OpenGlWorkspace): ptr OpenGlView {.noSideEffect, importcpp: "View",
    header: "OpenGl_Workspace.hxx".}
proc getGlContext*(this: var OpenGlWorkspace): Handle[OpenGlContext] {.
    importcpp: "GetGlContext", header: "OpenGl_Workspace.hxx".}
proc fBOCreate*(this: var OpenGlWorkspace; theWidth: cint; theHeight: cint): Handle[
    OpenGlFrameBuffer] {.importcpp: "FBOCreate", header: "OpenGl_Workspace.hxx".}
proc fBORelease*(this: var OpenGlWorkspace; theFbo: var Handle[OpenGlFrameBuffer]) {.
    importcpp: "FBORelease", header: "OpenGl_Workspace.hxx".}
proc bufferDump*(this: var OpenGlWorkspace; theFbo: Handle[OpenGlFrameBuffer];
                theImage: var ImagePixMap; theBufferType: Graphic3dBufferType): bool {.
    importcpp: "BufferDump", header: "OpenGl_Workspace.hxx".}
proc width*(this: OpenGlWorkspace): cint {.noSideEffect, importcpp: "Width",
                                       header: "OpenGl_Workspace.hxx".}
proc height*(this: OpenGlWorkspace): cint {.noSideEffect, importcpp: "Height",
                                        header: "OpenGl_Workspace.hxx".}
proc setUseZBuffer*(this: var OpenGlWorkspace; theToUse: bool): bool {.
    importcpp: "SetUseZBuffer", header: "OpenGl_Workspace.hxx".}
proc useZBuffer*(this: var OpenGlWorkspace): var bool {.importcpp: "UseZBuffer",
    header: "OpenGl_Workspace.hxx".}
proc useDepthWrite*(this: var OpenGlWorkspace): var bool {.importcpp: "UseDepthWrite",
    header: "OpenGl_Workspace.hxx".}
proc setDefaultPolygonOffset*(this: var OpenGlWorkspace;
                             theOffset: Graphic3dPolygonOffset): Graphic3dPolygonOffset {.
    importcpp: "SetDefaultPolygonOffset", header: "OpenGl_Workspace.hxx".}
proc toAllowFaceCulling*(this: OpenGlWorkspace): bool {.noSideEffect,
    importcpp: "ToAllowFaceCulling", header: "OpenGl_Workspace.hxx".}
proc setAllowFaceCulling*(this: var OpenGlWorkspace; theToAllow: bool): bool {.
    importcpp: "SetAllowFaceCulling", header: "OpenGl_Workspace.hxx".}
proc toHighlight*(this: OpenGlWorkspace): bool {.noSideEffect,
    importcpp: "ToHighlight", header: "OpenGl_Workspace.hxx".}
proc highlightStyle*(this: OpenGlWorkspace): Handle[Graphic3dPresentationAttributes] {.
    noSideEffect, importcpp: "HighlightStyle", header: "OpenGl_Workspace.hxx".}
proc setHighlightStyle*(this: var OpenGlWorkspace;
                       theStyle: Handle[Graphic3dPresentationAttributes]) {.
    importcpp: "SetHighlightStyle", header: "OpenGl_Workspace.hxx".}
proc edgeColor*(this: OpenGlWorkspace): OpenGlVec4 {.noSideEffect,
    importcpp: "EdgeColor", header: "OpenGl_Workspace.hxx".}
proc interiorColor*(this: OpenGlWorkspace): OpenGlVec4 {.noSideEffect,
    importcpp: "InteriorColor", header: "OpenGl_Workspace.hxx".}
proc textColor*(this: OpenGlWorkspace): OpenGlVec4 {.noSideEffect,
    importcpp: "TextColor", header: "OpenGl_Workspace.hxx".}
proc textSubtitleColor*(this: OpenGlWorkspace): OpenGlVec4 {.noSideEffect,
    importcpp: "TextSubtitleColor", header: "OpenGl_Workspace.hxx".}
proc aspects*(this: OpenGlWorkspace): ptr OpenGlAspects {.noSideEffect,
    importcpp: "Aspects", header: "OpenGl_Workspace.hxx".}
proc setAspects*(this: var OpenGlWorkspace; theAspect: ptr OpenGlAspects): ptr OpenGlAspects {.
    importcpp: "SetAspects", header: "OpenGl_Workspace.hxx".}
proc textureSet*(this: OpenGlWorkspace): Handle[OpenGlTextureSet] {.noSideEffect,
    importcpp: "TextureSet", header: "OpenGl_Workspace.hxx".}
proc applyAspects*(this: var OpenGlWorkspace; theToBindTextures: bool = true): ptr OpenGlAspects {.
    importcpp: "ApplyAspects", header: "OpenGl_Workspace.hxx".}
proc resetAppliedAspect*(this: var OpenGlWorkspace) {.
    importcpp: "ResetAppliedAspect", header: "OpenGl_Workspace.hxx".}
proc renderFilter*(this: OpenGlWorkspace): cint {.noSideEffect,
    importcpp: "RenderFilter", header: "OpenGl_Workspace.hxx".}
proc setRenderFilter*(this: var OpenGlWorkspace; theFilter: cint) {.
    importcpp: "SetRenderFilter", header: "OpenGl_Workspace.hxx".}
proc shouldRender*(this: var OpenGlWorkspace; theElement: ptr OpenGlElement): bool {.
    importcpp: "ShouldRender", header: "OpenGl_Workspace.hxx".}
proc nbSkippedTransparentElements*(this: var OpenGlWorkspace): cint {.
    importcpp: "NbSkippedTransparentElements", header: "OpenGl_Workspace.hxx".}
proc resetSkippedCounter*(this: var OpenGlWorkspace) {.
    importcpp: "ResetSkippedCounter", header: "OpenGl_Workspace.hxx".}
proc viewMatrix*(this: OpenGlWorkspace): ptr OpenGlMatrix {.noSideEffect,
    importcpp: "ViewMatrix", header: "OpenGl_Workspace.hxx".}
proc modelMatrix*(this: OpenGlWorkspace): ptr OpenGlMatrix {.noSideEffect,
    importcpp: "ModelMatrix", header: "OpenGl_Workspace.hxx".}
proc noneCulling*(this: OpenGlWorkspace): OpenGlAspects {.noSideEffect,
    importcpp: "NoneCulling", header: "OpenGl_Workspace.hxx".}
proc frontCulling*(this: OpenGlWorkspace): OpenGlAspects {.noSideEffect,
    importcpp: "FrontCulling", header: "OpenGl_Workspace.hxx".}
proc setEnvironmentTexture*(this: var OpenGlWorkspace;
                           theTexture: Handle[OpenGlTextureSet]) {.
    importcpp: "SetEnvironmentTexture", header: "OpenGl_Workspace.hxx".}
proc environmentTexture*(this: OpenGlWorkspace): Handle[OpenGlTextureSet] {.
    noSideEffect, importcpp: "EnvironmentTexture", header: "OpenGl_Workspace.hxx".}
proc dumpJson*(this: OpenGlWorkspace; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, importcpp: "DumpJson",
                                 header: "OpenGl_Workspace.hxx".}
type
  OpenGlWorkspacebaseType* = StandardTransient

proc getTypeName*(): cstring {.importcpp: "OpenGl_Workspace::get_type_name(@)",
                            header: "OpenGl_Workspace.hxx".}
proc getTypeDescriptor*(): Handle[StandardType] {.
    importcpp: "OpenGl_Workspace::get_type_descriptor(@)",
    header: "OpenGl_Workspace.hxx".}
proc dynamicType*(this: OpenGlWorkspace): Handle[StandardType] {.noSideEffect,
    importcpp: "DynamicType", header: "OpenGl_Workspace.hxx".}

























