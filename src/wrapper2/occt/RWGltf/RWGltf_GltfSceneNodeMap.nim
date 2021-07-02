##  Copyright (c) 2018-2019 OPEN CASCADE SAS
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

## ! Indexed map of scene nodes with custom search algorithm.

type
  RWGltfGltfSceneNodeMap* {.importcpp: "RWGltf_GltfSceneNodeMap",
                           header: "RWGltf_GltfSceneNodeMap.hxx", bycopy.} = object of NCollectionIndexedMap[
      XCAFPrsDocumentNode, XCAFPrsDocumentNode] ## ! Empty constructor.


proc constructRWGltfGltfSceneNodeMap*(): RWGltfGltfSceneNodeMap {.constructor,
    importcpp: "RWGltf_GltfSceneNodeMap(@)", header: "RWGltf_GltfSceneNodeMap.hxx".}
proc findIndex*(this: RWGltfGltfSceneNodeMap; theNodeId: TCollectionAsciiString): StandardInteger {.
    noSideEffect, importcpp: "FindIndex", header: "RWGltf_GltfSceneNodeMap.hxx".}

