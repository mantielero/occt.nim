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


proc constructOpenGlLayerList*(theNbPriorities: StandardInteger): OpenGlLayerList {.
    constructor, importcpp: "OpenGl_LayerList(@)", header: "OpenGl_LayerList.hxx".}
proc destroyOpenGlLayerList*(this: var OpenGlLayerList) {.
    importcpp: "#.~OpenGl_LayerList()", header: "OpenGl_LayerList.hxx".}
proc nbPriorities*(this: OpenGlLayerList): StandardInteger {.noSideEffect,
    importcpp: "NbPriorities", header: "OpenGl_LayerList.hxx".}
proc nbStructures*(this: OpenGlLayerList): StandardInteger {.noSideEffect,
    importcpp: "NbStructures", header: "OpenGl_LayerList.hxx".}
proc nbImmediateStructures*(this: OpenGlLayerList): StandardInteger {.noSideEffect,
    importcpp: "NbImmediateStructures", header: "OpenGl_LayerList.hxx".}
proc insertLayerBefore*(this: var OpenGlLayerList; theNewLayerId: Graphic3dZLayerId;
                       theSettings: Graphic3dZLayerSettings;
                       theLayerAfter: Graphic3dZLayerId) {.
    importcpp: "InsertLayerBefore", header: "OpenGl_LayerList.hxx".}
proc insertLayerAfter*(this: var OpenGlLayerList; theNewLayerId: Graphic3dZLayerId;
                      theSettings: Graphic3dZLayerSettings;
                      theLayerBefore: Graphic3dZLayerId) {.
    importcpp: "InsertLayerAfter", header: "OpenGl_LayerList.hxx".}
proc removeLayer*(this: var OpenGlLayerList; theLayerId: Graphic3dZLayerId) {.
    importcpp: "RemoveLayer", header: "OpenGl_LayerList.hxx".}
proc addStructure*(this: var OpenGlLayerList; theStruct: ptr OpenGlStructure;
                  theLayerId: Graphic3dZLayerId; thePriority: StandardInteger;
                  isForChangePriority: StandardBoolean = standardFalse) {.
    importcpp: "AddStructure", header: "OpenGl_LayerList.hxx".}
proc removeStructure*(this: var OpenGlLayerList; theStructure: ptr OpenGlStructure) {.
    importcpp: "RemoveStructure", header: "OpenGl_LayerList.hxx".}
proc changeLayer*(this: var OpenGlLayerList; theStructure: ptr OpenGlStructure;
                 theOldLayerId: Graphic3dZLayerId;
                 theNewLayerId: Graphic3dZLayerId) {.importcpp: "ChangeLayer",
    header: "OpenGl_LayerList.hxx".}
proc changePriority*(this: var OpenGlLayerList; theStructure: ptr OpenGlStructure;
                    theLayerId: Graphic3dZLayerId; theNewPriority: StandardInteger) {.
    importcpp: "ChangePriority", header: "OpenGl_LayerList.hxx".}
proc layer*(this: var OpenGlLayerList; theLayerId: Graphic3dZLayerId): var OpenGlLayer {.
    importcpp: "Layer", header: "OpenGl_LayerList.hxx".}
proc layer*(this: OpenGlLayerList; theLayerId: Graphic3dZLayerId): OpenGlLayer {.
    noSideEffect, importcpp: "Layer", header: "OpenGl_LayerList.hxx".}
proc setLayerSettings*(this: var OpenGlLayerList; theLayerId: Graphic3dZLayerId;
                      theSettings: Graphic3dZLayerSettings) {.
    importcpp: "SetLayerSettings", header: "OpenGl_LayerList.hxx".}
proc updateCulling*(this: var OpenGlLayerList;
                   theWorkspace: Handle[OpenGlWorkspace];
                   theToDrawImmediate: StandardBoolean) {.
    importcpp: "UpdateCulling", header: "OpenGl_LayerList.hxx".}
proc render*(this: OpenGlLayerList; theWorkspace: Handle[OpenGlWorkspace];
            theToDrawImmediate: StandardBoolean;
            theLayersToProcess: OpenGlLayerFilter;
            theReadDrawFbo: ptr OpenGlFrameBuffer;
            theOitAccumFbo: ptr OpenGlFrameBuffer) {.noSideEffect,
    importcpp: "Render", header: "OpenGl_LayerList.hxx".}
proc layers*(this: OpenGlLayerList): NCollectionList[Handle[Graphic3dLayer]] {.
    noSideEffect, importcpp: "Layers", header: "OpenGl_LayerList.hxx".}
proc layerIDs*(this: OpenGlLayerList): NCollectionDataMap[Graphic3dZLayerId,
    Handle[Graphic3dLayer]] {.noSideEffect, importcpp: "LayerIDs",
                             header: "OpenGl_LayerList.hxx".}
proc invalidateBVHData*(this: var OpenGlLayerList; theLayerId: Graphic3dZLayerId) {.
    importcpp: "InvalidateBVHData", header: "OpenGl_LayerList.hxx".}
proc modificationStateOfRaytracable*(this: OpenGlLayerList): StandardSize {.
    noSideEffect, importcpp: "ModificationStateOfRaytracable",
    header: "OpenGl_LayerList.hxx".}
proc frustumCullingBVHBuilder*(this: OpenGlLayerList): Handle[Select3D_BVHBuilder3d] {.
    noSideEffect, importcpp: "FrustumCullingBVHBuilder",
    header: "OpenGl_LayerList.hxx".}
proc setFrustumCullingBVHBuilder*(this: var OpenGlLayerList;
                                 theBuilder: Handle[Select3D_BVHBuilder3d]) {.
    importcpp: "SetFrustumCullingBVHBuilder", header: "OpenGl_LayerList.hxx".}
proc dumpJson*(this: OpenGlLayerList; theOStream: var StandardOStream;
              theDepth: StandardInteger = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "OpenGl_LayerList.hxx".}

