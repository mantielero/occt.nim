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

discard "forward decl of RWGltf_GltfOStreamWriter"
type
  RWGltfGltfMaterialMap* {.importcpp: "RWGltf_GltfMaterialMap",
                          header: "RWGltf_GltfMaterialMap.hxx", bycopy.} = object of RWMeshMaterialMap ##
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


proc constructRWGltfGltfMaterialMap*(theFile: TCollectionAsciiString;
                                    theDefSamplerId: StandardInteger): RWGltfGltfMaterialMap {.
    constructor, importcpp: "RWGltf_GltfMaterialMap(@)",
    header: "RWGltf_GltfMaterialMap.hxx".}
proc destroyRWGltfGltfMaterialMap*(this: var RWGltfGltfMaterialMap) {.
    importcpp: "#.~RWGltf_GltfMaterialMap()", header: "RWGltf_GltfMaterialMap.hxx".}
proc addImages*(this: var RWGltfGltfMaterialMap;
               theWriter: ptr RWGltfGltfOStreamWriter; theStyle: XCAFPrsStyle;
               theIsStarted: var StandardBoolean) {.importcpp: "AddImages",
    header: "RWGltf_GltfMaterialMap.hxx".}
proc addMaterial*(this: var RWGltfGltfMaterialMap;
                 theWriter: ptr RWGltfGltfOStreamWriter; theStyle: XCAFPrsStyle;
                 theIsStarted: var StandardBoolean) {.importcpp: "AddMaterial",
    header: "RWGltf_GltfMaterialMap.hxx".}
proc addTextures*(this: var RWGltfGltfMaterialMap;
                 theWriter: ptr RWGltfGltfOStreamWriter; theStyle: XCAFPrsStyle;
                 theIsStarted: var StandardBoolean) {.importcpp: "AddTextures",
    header: "RWGltf_GltfMaterialMap.hxx".}
proc nbImages*(this: RWGltfGltfMaterialMap): StandardInteger {.noSideEffect,
    importcpp: "NbImages", header: "RWGltf_GltfMaterialMap.hxx".}
proc nbTextures*(this: RWGltfGltfMaterialMap): StandardInteger {.noSideEffect,
    importcpp: "NbTextures", header: "RWGltf_GltfMaterialMap.hxx".}
proc baseColorTexture*(theMat: Handle[XCAFDocVisMaterial]): Handle[ImageTexture] {.
    importcpp: "RWGltf_GltfMaterialMap::baseColorTexture(@)",
    header: "RWGltf_GltfMaterialMap.hxx".}

