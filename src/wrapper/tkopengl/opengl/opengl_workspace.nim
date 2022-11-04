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
type
  HandleOpenGlWorkspace* = Handle[OpenGlWorkspace]

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


proc newOpenGlWorkspace*(theView: ptr OpenGlView; theWindow: Handle[OpenGlWindow]): OpenGlWorkspace {.
    cdecl, constructor, importcpp: "OpenGl_Workspace(@)", dynlib: tkkxbase.}
proc destroyOpenGlWorkspace*(this: var OpenGlWorkspace) {.cdecl,
    importcpp: "#.~OpenGl_Workspace()", dynlib: tkkxbase.}
proc activate*(this: var OpenGlWorkspace): bool {.cdecl, importcpp: "Activate",
    dynlib: tkkxbase.}
proc view*(this: OpenGlWorkspace): ptr OpenGlView {.noSideEffect, cdecl,
    importcpp: "View", dynlib: tkkxbase.}
proc getGlContext*(this: var OpenGlWorkspace): Handle[OpenGlContext] {.cdecl,
    importcpp: "GetGlContext", dynlib: tkkxbase.}
proc fBOCreate*(this: var OpenGlWorkspace; theWidth: cint; theHeight: cint): Handle[
    OpenGlFrameBuffer] {.cdecl, importcpp: "FBOCreate", dynlib: tkkxbase.}
proc fBORelease*(this: var OpenGlWorkspace; theFbo: var Handle[OpenGlFrameBuffer]) {.
    cdecl, importcpp: "FBORelease", dynlib: tkkxbase.}
proc bufferDump*(this: var OpenGlWorkspace; theFbo: Handle[OpenGlFrameBuffer];
                theImage: var ImagePixMap; theBufferType: Graphic3dBufferType): bool {.
    cdecl, importcpp: "BufferDump", dynlib: tkkxbase.}
proc width*(this: OpenGlWorkspace): cint {.noSideEffect, cdecl, importcpp: "Width",
                                       dynlib: tkkxbase.}
proc height*(this: OpenGlWorkspace): cint {.noSideEffect, cdecl, importcpp: "Height",
                                        dynlib: tkkxbase.}
proc setUseZBuffer*(this: var OpenGlWorkspace; theToUse: bool): bool {.cdecl,
    importcpp: "SetUseZBuffer", dynlib: tkkxbase.}
proc useZBuffer*(this: var OpenGlWorkspace): var bool {.cdecl, importcpp: "UseZBuffer",
    dynlib: tkkxbase.}
proc useDepthWrite*(this: var OpenGlWorkspace): var bool {.cdecl,
    importcpp: "UseDepthWrite", dynlib: tkkxbase.}
proc setDefaultPolygonOffset*(this: var OpenGlWorkspace;
                             theOffset: Graphic3dPolygonOffset): Graphic3dPolygonOffset {.
    cdecl, importcpp: "SetDefaultPolygonOffset", dynlib: tkkxbase.}
proc toAllowFaceCulling*(this: OpenGlWorkspace): bool {.noSideEffect, cdecl,
    importcpp: "ToAllowFaceCulling", dynlib: tkkxbase.}
proc setAllowFaceCulling*(this: var OpenGlWorkspace; theToAllow: bool): bool {.cdecl,
    importcpp: "SetAllowFaceCulling", dynlib: tkkxbase.}
proc toHighlight*(this: OpenGlWorkspace): bool {.noSideEffect, cdecl,
    importcpp: "ToHighlight", dynlib: tkkxbase.}
proc highlightStyle*(this: OpenGlWorkspace): Handle[Graphic3dPresentationAttributes] {.
    noSideEffect, cdecl, importcpp: "HighlightStyle", dynlib: tkkxbase.}
proc setHighlightStyle*(this: var OpenGlWorkspace;
                       theStyle: Handle[Graphic3dPresentationAttributes]) {.cdecl,
    importcpp: "SetHighlightStyle", dynlib: tkkxbase.}
proc edgeColor*(this: OpenGlWorkspace): OpenGlVec4 {.noSideEffect, cdecl,
    importcpp: "EdgeColor", dynlib: tkkxbase.}
proc interiorColor*(this: OpenGlWorkspace): OpenGlVec4 {.noSideEffect, cdecl,
    importcpp: "InteriorColor", dynlib: tkkxbase.}
proc textColor*(this: OpenGlWorkspace): OpenGlVec4 {.noSideEffect, cdecl,
    importcpp: "TextColor", dynlib: tkkxbase.}
proc textSubtitleColor*(this: OpenGlWorkspace): OpenGlVec4 {.noSideEffect, cdecl,
    importcpp: "TextSubtitleColor", dynlib: tkkxbase.}
proc aspects*(this: OpenGlWorkspace): ptr OpenGlAspects {.noSideEffect, cdecl,
    importcpp: "Aspects", dynlib: tkkxbase.}
proc setAspects*(this: var OpenGlWorkspace; theAspect: ptr OpenGlAspects): ptr OpenGlAspects {.
    cdecl, importcpp: "SetAspects", dynlib: tkkxbase.}
proc textureSet*(this: OpenGlWorkspace): Handle[OpenGlTextureSet] {.noSideEffect,
    cdecl, importcpp: "TextureSet", dynlib: tkkxbase.}
proc applyAspects*(this: var OpenGlWorkspace; theToBindTextures: bool = true): ptr OpenGlAspects {.
    cdecl, importcpp: "ApplyAspects", dynlib: tkkxbase.}
proc resetAppliedAspect*(this: var OpenGlWorkspace) {.cdecl,
    importcpp: "ResetAppliedAspect", dynlib: tkkxbase.}
proc renderFilter*(this: OpenGlWorkspace): cint {.noSideEffect, cdecl,
    importcpp: "RenderFilter", dynlib: tkkxbase.}
proc setRenderFilter*(this: var OpenGlWorkspace; theFilter: cint) {.cdecl,
    importcpp: "SetRenderFilter", dynlib: tkkxbase.}
proc shouldRender*(this: var OpenGlWorkspace; theElement: ptr OpenGlElement): bool {.
    cdecl, importcpp: "ShouldRender", dynlib: tkkxbase.}
proc nbSkippedTransparentElements*(this: var OpenGlWorkspace): cint {.cdecl,
    importcpp: "NbSkippedTransparentElements", dynlib: tkkxbase.}
proc resetSkippedCounter*(this: var OpenGlWorkspace) {.cdecl,
    importcpp: "ResetSkippedCounter", dynlib: tkkxbase.}
proc viewMatrix*(this: OpenGlWorkspace): ptr OpenGlMatrix {.noSideEffect, cdecl,
    importcpp: "ViewMatrix", dynlib: tkkxbase.}
proc modelMatrix*(this: OpenGlWorkspace): ptr OpenGlMatrix {.noSideEffect, cdecl,
    importcpp: "ModelMatrix", dynlib: tkkxbase.}
proc noneCulling*(this: OpenGlWorkspace): OpenGlAspects {.noSideEffect, cdecl,
    importcpp: "NoneCulling", dynlib: tkkxbase.}
proc frontCulling*(this: OpenGlWorkspace): OpenGlAspects {.noSideEffect, cdecl,
    importcpp: "FrontCulling", dynlib: tkkxbase.}
proc setEnvironmentTexture*(this: var OpenGlWorkspace;
                           theTexture: Handle[OpenGlTextureSet]) {.cdecl,
    importcpp: "SetEnvironmentTexture", dynlib: tkkxbase.}
proc environmentTexture*(this: OpenGlWorkspace): Handle[OpenGlTextureSet] {.
    noSideEffect, cdecl, importcpp: "EnvironmentTexture", dynlib: tkkxbase.}
proc dumpJson*(this: OpenGlWorkspace; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 dynlib: tkkxbase.}