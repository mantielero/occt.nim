##  Copyright (c) 2017-2019 OPEN CASCADE SAS
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
  ../RWMesh/RWMesh_MaterialMap

discard "forward decl of RWGltf_GltfOStreamWriter"
type
  RWGltf_GltfMaterialMap* {.importcpp: "RWGltf_GltfMaterialMap",
                           header: "RWGltf_GltfMaterialMap.hxx", bycopy.} = object of RWMesh_MaterialMap ##
                                                                                                  ## !
                                                                                                  ## Main
                                                                                                  ## constructor.
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## Return
                                                                                                  ## base
                                                                                                  ## color
                                                                                                  ## texture.
                                                                                                  ##
                                                                                                  ## !
                                                                                                  ## Add
                                                                                                  ## texture
                                                                                                  ## image.


proc constructRWGltf_GltfMaterialMap*(theFile: TCollection_AsciiString;
                                     theDefSamplerId: Standard_Integer): RWGltf_GltfMaterialMap {.
    constructor, importcpp: "RWGltf_GltfMaterialMap(@)",
    header: "RWGltf_GltfMaterialMap.hxx".}
proc destroyRWGltf_GltfMaterialMap*(this: var RWGltf_GltfMaterialMap) {.
    importcpp: "#.~RWGltf_GltfMaterialMap()", header: "RWGltf_GltfMaterialMap.hxx".}
proc AddImages*(this: var RWGltf_GltfMaterialMap;
               theWriter: ptr RWGltf_GltfOStreamWriter; theStyle: XCAFPrs_Style;
               theIsStarted: var Standard_Boolean) {.importcpp: "AddImages",
    header: "RWGltf_GltfMaterialMap.hxx".}
proc AddMaterial*(this: var RWGltf_GltfMaterialMap;
                 theWriter: ptr RWGltf_GltfOStreamWriter; theStyle: XCAFPrs_Style;
                 theIsStarted: var Standard_Boolean) {.importcpp: "AddMaterial",
    header: "RWGltf_GltfMaterialMap.hxx".}
proc AddTextures*(this: var RWGltf_GltfMaterialMap;
                 theWriter: ptr RWGltf_GltfOStreamWriter; theStyle: XCAFPrs_Style;
                 theIsStarted: var Standard_Boolean) {.importcpp: "AddTextures",
    header: "RWGltf_GltfMaterialMap.hxx".}
proc NbImages*(this: RWGltf_GltfMaterialMap): Standard_Integer {.noSideEffect,
    importcpp: "NbImages", header: "RWGltf_GltfMaterialMap.hxx".}
proc NbTextures*(this: RWGltf_GltfMaterialMap): Standard_Integer {.noSideEffect,
    importcpp: "NbTextures", header: "RWGltf_GltfMaterialMap.hxx".}
proc baseColorTexture*(theMat: handle[XCAFDoc_VisMaterial]): handle[Image_Texture] {.
    importcpp: "RWGltf_GltfMaterialMap::baseColorTexture(@)",
    header: "RWGltf_GltfMaterialMap.hxx".}