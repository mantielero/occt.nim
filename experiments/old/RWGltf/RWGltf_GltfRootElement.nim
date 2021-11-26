##  Author: Kirill Gavrilov
##  Copyright (c) 2016-2019 OPEN CASCADE SAS
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

## ! Root elements within glTF JSON document.

type
  RWGltfGltfRootElement* {.size: sizeof(cint), importcpp: "RWGltf_GltfRootElement",
                          header: "RWGltf_GltfRootElement.hxx".} = enum
    RWGltfGltfRootElementAsset, ## !< "asset"       element, mandatory
    RWGltfGltfRootElementScenes, ## !< "scenes"      element, mandatory
    RWGltfGltfRootElementScene, ## !< "scene"       element, mandatory
    RWGltfGltfRootElementNodes, ## !< "nodes"       element, mandatory
    RWGltfGltfRootElementMeshes, ## !< "meshes"      element, mandatory
    RWGltfGltfRootElementAccessors, ## !< "accessors"   element, mandatory
    RWGltfGltfRootElementBufferViews, ## !< "bufferViews" element, mandatory
    RWGltfGltfRootElementBuffers, ## !< "buffers"     element, mandatory
    RWGltfGltfRootElementNB_MANDATORY, ## !< number of mandatory elements
                                      ##  optional elements
    RWGltfGltfRootElementAnimations = rWGltfGltfRootElementNB_MANDATORY, ## !< "animations" element
    RWGltfGltfRootElementMaterials, ## !< "materials"  element,
    RWGltfGltfRootElementPrograms, ## !< "programs"   element,
    RWGltfGltfRootElementSamplers, ## !< "samplers"   element,
    RWGltfGltfRootElementShaders, ## !< "shaders"    element,
    RWGltfGltfRootElementSkins, ## !< "skins"      element,
    RWGltfGltfRootElementTechniques, ## !< "techniques" element,
    RWGltfGltfRootElementTextures, ## !< "textures"   element,
    RWGltfGltfRootElementImages, ## !< "images"     element,
    RWGltfGltfRootElementExtensionsUsed, ## !< "extensionsUsed"     element,
    RWGltfGltfRootElementExtensionsRequired, ## !< "extensionsRequired" element,
    RWGltfGltfRootElementNB   ## !< overall number of elements


## ! Root elements within glTF JSON document - names array.

proc rWGltfGltfRootElementName*(theElem: RWGltfGltfRootElement): cstring =
  discard


























