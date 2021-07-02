type
  RWGltfGltfRootElement* {.size: sizeof(cint), importcpp: "RWGltf_GltfRootElement",
                          header: "RWGltf_GltfRootElement.hxx".} = enum
    RWGltfGltfRootElementAsset, RWGltfGltfRootElementScenes,
    RWGltfGltfRootElementScene, RWGltfGltfRootElementNodes,
    RWGltfGltfRootElementMeshes, RWGltfGltfRootElementAccessors,
    RWGltfGltfRootElementBufferViews, RWGltfGltfRootElementBuffers,
    RWGltfGltfRootElementNB_MANDATORY,
    RWGltfGltfRootElementAnimations = rWGltfGltfRootElementNB_MANDATORY,
    RWGltfGltfRootElementMaterials, RWGltfGltfRootElementPrograms,
    RWGltfGltfRootElementSamplers, RWGltfGltfRootElementShaders,
    RWGltfGltfRootElementSkins, RWGltfGltfRootElementTechniques,
    RWGltfGltfRootElementTextures, RWGltfGltfRootElementImages,
    RWGltfGltfRootElementExtensionsUsed, RWGltfGltfRootElementExtensionsRequired,
    RWGltfGltfRootElementNB


proc rWGltfGltfRootElementName*(theElem: RWGltfGltfRootElement): cstring =
  discard
