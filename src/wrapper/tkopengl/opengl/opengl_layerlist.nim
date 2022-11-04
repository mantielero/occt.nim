##  Created on: 2012-02-02
##  Created by: Anton POLETAEV
##  Copyright (c) 2012-2014 OPEN CASCADE SAS
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

discard "forward decl of OpenGl_FrameBuffer"
discard "forward decl of OpenGl_Structure"
discard "forward decl of OpenGl_Workspace"
discard "forward decl of OpenGl_GlobalLayerSettings"
type
  OpenGlLayerList* {.importcpp: "OpenGl_LayerList", header: "OpenGl_LayerList.hxx",
                    bycopy.} = object ## ! Constructor
                                   ## ! Stack of references to existing layers of predefined maximum size.
    ## !< BVH tree builder for frustom culling
    ## !< number of structures within immediate layers
    ## ! Collection of references to layers with transparency gathered during rendering pass.


proc newOpenGlLayerList*(theNbPriorities: cint): OpenGlLayerList {.cdecl,
    constructor, importcpp: "OpenGl_LayerList(@)", dynlib: tkkxbase.}
proc destroyOpenGlLayerList*(this: var OpenGlLayerList) {.cdecl,
    importcpp: "#.~OpenGl_LayerList()", dynlib: tkkxbase.}
proc nbPriorities*(this: OpenGlLayerList): cint {.noSideEffect, cdecl,
    importcpp: "NbPriorities", dynlib: tkkxbase.}
proc nbStructures*(this: OpenGlLayerList): cint {.noSideEffect, cdecl,
    importcpp: "NbStructures", dynlib: tkkxbase.}
proc nbImmediateStructures*(this: OpenGlLayerList): cint {.noSideEffect, cdecl,
    importcpp: "NbImmediateStructures", dynlib: tkkxbase.}
proc insertLayerBefore*(this: var OpenGlLayerList; theNewLayerId: Graphic3dZLayerId;
                       theSettings: Graphic3dZLayerSettings;
                       theLayerAfter: Graphic3dZLayerId) {.cdecl,
    importcpp: "InsertLayerBefore", dynlib: tkkxbase.}
proc insertLayerAfter*(this: var OpenGlLayerList; theNewLayerId: Graphic3dZLayerId;
                      theSettings: Graphic3dZLayerSettings;
                      theLayerBefore: Graphic3dZLayerId) {.cdecl,
    importcpp: "InsertLayerAfter", dynlib: tkkxbase.}
proc removeLayer*(this: var OpenGlLayerList; theLayerId: Graphic3dZLayerId) {.cdecl,
    importcpp: "RemoveLayer", dynlib: tkkxbase.}
proc addStructure*(this: var OpenGlLayerList; theStruct: ptr OpenGlStructure;
                  theLayerId: Graphic3dZLayerId; thePriority: cint;
                  isForChangePriority: bool = false) {.cdecl,
    importcpp: "AddStructure", dynlib: tkkxbase.}
proc removeStructure*(this: var OpenGlLayerList; theStructure: ptr OpenGlStructure) {.
    cdecl, importcpp: "RemoveStructure", dynlib: tkkxbase.}
proc changeLayer*(this: var OpenGlLayerList; theStructure: ptr OpenGlStructure;
                 theOldLayerId: Graphic3dZLayerId;
                 theNewLayerId: Graphic3dZLayerId) {.cdecl,
    importcpp: "ChangeLayer", dynlib: tkkxbase.}
proc changePriority*(this: var OpenGlLayerList; theStructure: ptr OpenGlStructure;
                    theLayerId: Graphic3dZLayerId; theNewPriority: cint) {.cdecl,
    importcpp: "ChangePriority", dynlib: tkkxbase.}
proc layer*(this: var OpenGlLayerList; theLayerId: Graphic3dZLayerId): var OpenGlLayer {.
    cdecl, importcpp: "Layer", dynlib: tkkxbase.}
proc layer*(this: OpenGlLayerList; theLayerId: Graphic3dZLayerId): OpenGlLayer {.
    noSideEffect, cdecl, importcpp: "Layer", dynlib: tkkxbase.}
proc setLayerSettings*(this: var OpenGlLayerList; theLayerId: Graphic3dZLayerId;
                      theSettings: Graphic3dZLayerSettings) {.cdecl,
    importcpp: "SetLayerSettings", dynlib: tkkxbase.}
proc updateCulling*(this: var OpenGlLayerList;
                   theWorkspace: Handle[OpenGlWorkspace]; theToDrawImmediate: bool) {.
    cdecl, importcpp: "UpdateCulling", dynlib: tkkxbase.}
proc render*(this: OpenGlLayerList; theWorkspace: Handle[OpenGlWorkspace];
            theToDrawImmediate: bool; theLayersToProcess: OpenGlLayerFilter;
            theReadDrawFbo: ptr OpenGlFrameBuffer;
            theOitAccumFbo: ptr OpenGlFrameBuffer) {.noSideEffect, cdecl,
    importcpp: "Render", dynlib: tkkxbase.}
proc layers*(this: OpenGlLayerList): NCollectionList[Handle[Graphic3dLayer]] {.
    noSideEffect, cdecl, importcpp: "Layers", dynlib: tkkxbase.}
proc layerIDs*(this: OpenGlLayerList): NCollectionDataMap[Graphic3dZLayerId,
    Handle[Graphic3dLayer]] {.noSideEffect, cdecl, importcpp: "LayerIDs",
                             dynlib: tkkxbase.}
proc invalidateBVHData*(this: var OpenGlLayerList; theLayerId: Graphic3dZLayerId) {.
    cdecl, importcpp: "InvalidateBVHData", dynlib: tkkxbase.}
proc modificationStateOfRaytracable*(this: OpenGlLayerList): csize_t {.noSideEffect,
    cdecl, importcpp: "ModificationStateOfRaytracable", dynlib: tkkxbase.}
proc frustumCullingBVHBuilder*(this: OpenGlLayerList): Handle[Select3D_BVHBuilder3d] {.
    noSideEffect, cdecl, importcpp: "FrustumCullingBVHBuilder", dynlib: tkkxbase.}
proc setFrustumCullingBVHBuilder*(this: var OpenGlLayerList;
                                 theBuilder: Handle[Select3D_BVHBuilder3d]) {.
    cdecl, importcpp: "SetFrustumCullingBVHBuilder", dynlib: tkkxbase.}
proc dumpJson*(this: OpenGlLayerList; theOStream: var StandardOStream;
              theDepth: cint = -1) {.noSideEffect, cdecl, importcpp: "DumpJson",
                                 dynlib: tkkxbase.}