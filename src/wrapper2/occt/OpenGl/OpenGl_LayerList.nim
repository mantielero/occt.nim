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

import
  OpenGl_Layer, OpenGl_LayerFilter, ../Graphic3d/Graphic3d_ZLayerId,
  ../NCollection/NCollection_Array1, ../NCollection/NCollection_Handle,
  ../NCollection/NCollection_Sequence, ../NCollection/NCollection_DataMap

discard "forward decl of OpenGl_FrameBuffer"
discard "forward decl of OpenGl_Structure"
discard "forward decl of OpenGl_Workspace"
discard "forward decl of OpenGl_GlobalLayerSettings"
type
  OpenGl_LayerList* {.importcpp: "OpenGl_LayerList",
                     header: "OpenGl_LayerList.hxx", bycopy.} = object ## ! Constructor
                                                                  ## ! Stack of references to existing layers of predefined maximum size.
    ## !< BVH tree builder for frustom culling
    ## !< number of structures within immediate layers
    ## ! Collection of references to layers with transparency gathered during rendering pass.


proc constructOpenGl_LayerList*(theNbPriorities: Standard_Integer): OpenGl_LayerList {.
    constructor, importcpp: "OpenGl_LayerList(@)", header: "OpenGl_LayerList.hxx".}
proc destroyOpenGl_LayerList*(this: var OpenGl_LayerList) {.
    importcpp: "#.~OpenGl_LayerList()", header: "OpenGl_LayerList.hxx".}
proc NbPriorities*(this: OpenGl_LayerList): Standard_Integer {.noSideEffect,
    importcpp: "NbPriorities", header: "OpenGl_LayerList.hxx".}
proc NbStructures*(this: OpenGl_LayerList): Standard_Integer {.noSideEffect,
    importcpp: "NbStructures", header: "OpenGl_LayerList.hxx".}
proc NbImmediateStructures*(this: OpenGl_LayerList): Standard_Integer {.
    noSideEffect, importcpp: "NbImmediateStructures",
    header: "OpenGl_LayerList.hxx".}
proc InsertLayerBefore*(this: var OpenGl_LayerList;
                       theNewLayerId: Graphic3d_ZLayerId;
                       theSettings: Graphic3d_ZLayerSettings;
                       theLayerAfter: Graphic3d_ZLayerId) {.
    importcpp: "InsertLayerBefore", header: "OpenGl_LayerList.hxx".}
proc InsertLayerAfter*(this: var OpenGl_LayerList;
                      theNewLayerId: Graphic3d_ZLayerId;
                      theSettings: Graphic3d_ZLayerSettings;
                      theLayerBefore: Graphic3d_ZLayerId) {.
    importcpp: "InsertLayerAfter", header: "OpenGl_LayerList.hxx".}
proc RemoveLayer*(this: var OpenGl_LayerList; theLayerId: Graphic3d_ZLayerId) {.
    importcpp: "RemoveLayer", header: "OpenGl_LayerList.hxx".}
proc AddStructure*(this: var OpenGl_LayerList; theStruct: ptr OpenGl_Structure;
                  theLayerId: Graphic3d_ZLayerId; thePriority: Standard_Integer;
                  isForChangePriority: Standard_Boolean = Standard_False) {.
    importcpp: "AddStructure", header: "OpenGl_LayerList.hxx".}
proc RemoveStructure*(this: var OpenGl_LayerList; theStructure: ptr OpenGl_Structure) {.
    importcpp: "RemoveStructure", header: "OpenGl_LayerList.hxx".}
proc ChangeLayer*(this: var OpenGl_LayerList; theStructure: ptr OpenGl_Structure;
                 theOldLayerId: Graphic3d_ZLayerId;
                 theNewLayerId: Graphic3d_ZLayerId) {.importcpp: "ChangeLayer",
    header: "OpenGl_LayerList.hxx".}
proc ChangePriority*(this: var OpenGl_LayerList; theStructure: ptr OpenGl_Structure;
                    theLayerId: Graphic3d_ZLayerId;
                    theNewPriority: Standard_Integer) {.
    importcpp: "ChangePriority", header: "OpenGl_LayerList.hxx".}
proc Layer*(this: var OpenGl_LayerList; theLayerId: Graphic3d_ZLayerId): var OpenGl_Layer {.
    importcpp: "Layer", header: "OpenGl_LayerList.hxx".}
proc Layer*(this: OpenGl_LayerList; theLayerId: Graphic3d_ZLayerId): OpenGl_Layer {.
    noSideEffect, importcpp: "Layer", header: "OpenGl_LayerList.hxx".}
proc SetLayerSettings*(this: var OpenGl_LayerList; theLayerId: Graphic3d_ZLayerId;
                      theSettings: Graphic3d_ZLayerSettings) {.
    importcpp: "SetLayerSettings", header: "OpenGl_LayerList.hxx".}
proc UpdateCulling*(this: var OpenGl_LayerList;
                   theWorkspace: handle[OpenGl_Workspace];
                   theToDrawImmediate: Standard_Boolean) {.
    importcpp: "UpdateCulling", header: "OpenGl_LayerList.hxx".}
proc Render*(this: OpenGl_LayerList; theWorkspace: handle[OpenGl_Workspace];
            theToDrawImmediate: Standard_Boolean;
            theLayersToProcess: OpenGl_LayerFilter;
            theReadDrawFbo: ptr OpenGl_FrameBuffer;
            theOitAccumFbo: ptr OpenGl_FrameBuffer) {.noSideEffect,
    importcpp: "Render", header: "OpenGl_LayerList.hxx".}
proc Layers*(this: OpenGl_LayerList): NCollection_List[handle[Graphic3d_Layer]] {.
    noSideEffect, importcpp: "Layers", header: "OpenGl_LayerList.hxx".}
proc LayerIDs*(this: OpenGl_LayerList): NCollection_DataMap[Graphic3d_ZLayerId,
    handle[Graphic3d_Layer]] {.noSideEffect, importcpp: "LayerIDs",
                              header: "OpenGl_LayerList.hxx".}
proc InvalidateBVHData*(this: var OpenGl_LayerList; theLayerId: Graphic3d_ZLayerId) {.
    importcpp: "InvalidateBVHData", header: "OpenGl_LayerList.hxx".}
proc ModificationStateOfRaytracable*(this: OpenGl_LayerList): Standard_Size {.
    noSideEffect, importcpp: "ModificationStateOfRaytracable",
    header: "OpenGl_LayerList.hxx".}
proc FrustumCullingBVHBuilder*(this: OpenGl_LayerList): handle[
    Select3D_BVHBuilder3d] {.noSideEffect, importcpp: "FrustumCullingBVHBuilder",
                            header: "OpenGl_LayerList.hxx".}
proc SetFrustumCullingBVHBuilder*(this: var OpenGl_LayerList;
                                 theBuilder: handle[Select3D_BVHBuilder3d]) {.
    importcpp: "SetFrustumCullingBVHBuilder", header: "OpenGl_LayerList.hxx".}
proc DumpJson*(this: OpenGl_LayerList; theOStream: var Standard_OStream;
              theDepth: Standard_Integer = -1) {.noSideEffect, importcpp: "DumpJson",
    header: "OpenGl_LayerList.hxx".}