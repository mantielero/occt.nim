import opengl_types
import ../standard/standard_types
import ../graphic3d/graphic3d_types

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




proc newOpenGlWorkspace*(theView: ptr OpenGlView; theWindow: Handle[OpenGlWindow]): OpenGlWorkspace {.
    cdecl, constructor, importcpp: "OpenGl_Workspace(@)", header: "OpenGl_Workspace.hxx".}
proc destroyOpenGlWorkspace*(this: var OpenGlWorkspace) {.cdecl,
    importcpp: "#.~OpenGl_Workspace()", header: "OpenGl_Workspace.hxx".}
proc activate*(this: var OpenGlWorkspace): bool {.cdecl, importcpp: "Activate",
    header: "OpenGl_Workspace.hxx".}
proc view*(this: OpenGlWorkspace): ptr OpenGlView {.noSideEffect, cdecl,
    importcpp: "View", header: "OpenGl_Workspace.hxx".}
proc getGlContext*(this: var OpenGlWorkspace): Handle[OpenGlContext] {.cdecl,
    importcpp: "GetGlContext", header: "OpenGl_Workspace.hxx".}
proc fBOCreate*(this: var OpenGlWorkspace; theWidth: cint; theHeight: cint): Handle[
    OpenGlFrameBuffer] {.cdecl, importcpp: "FBOCreate", header: "OpenGl_Workspace.hxx".}
proc fBORelease*(this: var OpenGlWorkspace; theFbo: var Handle[OpenGlFrameBuffer]) {.
    cdecl, importcpp: "FBORelease", header: "OpenGl_Workspace.hxx".}
# proc bufferDump*(this: var OpenGlWorkspace; theFbo: Handle[OpenGlFrameBuffer];
#                 theImage: var ImagePixMap; theBufferType: Graphic3dBufferType): bool {.
#     cdecl, importcpp: "BufferDump", header: "OpenGl_Workspace.hxx".}
proc width*(this: OpenGlWorkspace): cint {.noSideEffect, cdecl, importcpp: "Width",
                                       header: "OpenGl_Workspace.hxx".}
proc height*(this: OpenGlWorkspace): cint {.noSideEffect, cdecl, importcpp: "Height",
                                        header: "OpenGl_Workspace.hxx".}
proc setUseZBuffer*(this: var OpenGlWorkspace; theToUse: bool): bool {.cdecl,
    importcpp: "SetUseZBuffer", header: "OpenGl_Workspace.hxx".}
proc useZBuffer*(this: var OpenGlWorkspace): var bool {.cdecl, importcpp: "UseZBuffer",
    header: "OpenGl_Workspace.hxx".}
proc useDepthWrite*(this: var OpenGlWorkspace): var bool {.cdecl,
    importcpp: "UseDepthWrite", header: "OpenGl_Workspace.hxx".}
proc setDefaultPolygonOffset*(this: var OpenGlWorkspace;
                             theOffset: Graphic3dPolygonOffset): Graphic3dPolygonOffset {.
    cdecl, importcpp: "SetDefaultPolygonOffset", header: "OpenGl_Workspace.hxx".}
proc toAllowFaceCulling*(this: OpenGlWorkspace): bool {.noSideEffect, cdecl,
    importcpp: "ToAllowFaceCulling", header: "OpenGl_Workspace.hxx".}
proc setAllowFaceCulling*(this: var OpenGlWorkspace; theToAllow: bool): bool {.cdecl,
    importcpp: "SetAllowFaceCulling", header: "OpenGl_Workspace.hxx".}
proc toHighlight*(this: OpenGlWorkspace): bool {.noSideEffect, cdecl,
    importcpp: "ToHighlight", header: "OpenGl_Workspace.hxx".}
proc highlightStyle*(this: OpenGlWorkspace): Handle[Graphic3dPresentationAttributes] {.
    noSideEffect, cdecl, importcpp: "HighlightStyle", header: "OpenGl_Workspace.hxx".}
proc setHighlightStyle*(this: var OpenGlWorkspace;
                       theStyle: Handle[Graphic3dPresentationAttributes]) {.cdecl,
    importcpp: "SetHighlightStyle", header: "OpenGl_Workspace.hxx".}
proc edgeColor*(this: OpenGlWorkspace): OpenGlVec4 {.noSideEffect, cdecl,
    importcpp: "EdgeColor", header: "OpenGl_Workspace.hxx".}
proc interiorColor*(this: OpenGlWorkspace): OpenGlVec4 {.noSideEffect, cdecl,
    importcpp: "InteriorColor", header: "OpenGl_Workspace.hxx".}
proc textColor*(this: OpenGlWorkspace): OpenGlVec4 {.noSideEffect, cdecl,
    importcpp: "TextColor", header: "OpenGl_Workspace.hxx".}
proc textSubtitleColor*(this: OpenGlWorkspace): OpenGlVec4 {.noSideEffect, cdecl,
    importcpp: "TextSubtitleColor", header: "OpenGl_Workspace.hxx".}
proc aspects*(this: OpenGlWorkspace): ptr OpenGlAspects {.noSideEffect, cdecl,
    importcpp: "Aspects", header: "OpenGl_Workspace.hxx".}
proc setAspects*(this: var OpenGlWorkspace; theAspect: ptr OpenGlAspects): ptr OpenGlAspects {.
    cdecl, importcpp: "SetAspects", header: "OpenGl_Workspace.hxx".}
proc textureSet*(this: OpenGlWorkspace): Handle[OpenGlTextureSet] {.noSideEffect,
    cdecl, importcpp: "TextureSet", header: "OpenGl_Workspace.hxx".}
proc applyAspects*(this: var OpenGlWorkspace; theToBindTextures: bool = true): ptr OpenGlAspects {.
    cdecl, importcpp: "ApplyAspects", header: "OpenGl_Workspace.hxx".}
proc resetAppliedAspect*(this: var OpenGlWorkspace) {.cdecl,
    importcpp: "ResetAppliedAspect", header: "OpenGl_Workspace.hxx".}
proc renderFilter*(this: OpenGlWorkspace): cint {.noSideEffect, cdecl,
    importcpp: "RenderFilter", header: "OpenGl_Workspace.hxx".}
proc setRenderFilter*(this: var OpenGlWorkspace; theFilter: cint) {.cdecl,
    importcpp: "SetRenderFilter", header: "OpenGl_Workspace.hxx".}
proc shouldRender*(this: var OpenGlWorkspace; theElement: ptr OpenGlElement): bool {.
    cdecl, importcpp: "ShouldRender", header: "OpenGl_Workspace.hxx".}
proc nbSkippedTransparentElements*(this: var OpenGlWorkspace): cint {.cdecl,
    importcpp: "NbSkippedTransparentElements", header: "OpenGl_Workspace.hxx".}
proc resetSkippedCounter*(this: var OpenGlWorkspace) {.cdecl,
    importcpp: "ResetSkippedCounter", header: "OpenGl_Workspace.hxx".}
proc viewMatrix*(this: OpenGlWorkspace): ptr OpenGlMatrix {.noSideEffect, cdecl,
    importcpp: "ViewMatrix", header: "OpenGl_Workspace.hxx".}
proc modelMatrix*(this: OpenGlWorkspace): ptr OpenGlMatrix {.noSideEffect, cdecl,
    importcpp: "ModelMatrix", header: "OpenGl_Workspace.hxx".}
proc noneCulling*(this: OpenGlWorkspace): OpenGlAspects {.noSideEffect, cdecl,
    importcpp: "NoneCulling", header: "OpenGl_Workspace.hxx".}
proc frontCulling*(this: OpenGlWorkspace): OpenGlAspects {.noSideEffect, cdecl,
    importcpp: "FrontCulling", header: "OpenGl_Workspace.hxx".}
proc setEnvironmentTexture*(this: var OpenGlWorkspace;
                           theTexture: Handle[OpenGlTextureSet]) {.cdecl,
    importcpp: "SetEnvironmentTexture", header: "OpenGl_Workspace.hxx".}
proc environmentTexture*(this: OpenGlWorkspace): Handle[OpenGlTextureSet] {.
    noSideEffect, cdecl, importcpp: "EnvironmentTexture", header: "OpenGl_Workspace.hxx".}
proc dumpJson*(this: OpenGlWorkspace; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 header: "OpenGl_Workspace.hxx".}
