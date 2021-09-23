# 1 "/usr/include/opencascade/RWGltf_GltfRootElement.hxx"
# 1 "<interno>"
# 1 "<línea-de-órdenes>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<línea-de-órdenes>" 2
# 1 "/usr/include/opencascade/RWGltf_GltfRootElement.hxx"
# 19 "/usr/include/opencascade/RWGltf_GltfRootElement.hxx"
enum RWGltf_GltfRootElement
{
  RWGltf_GltfRootElement_Asset,
  RWGltf_GltfRootElement_Scenes,
  RWGltf_GltfRootElement_Scene,
  RWGltf_GltfRootElement_Nodes,
  RWGltf_GltfRootElement_Meshes,
  RWGltf_GltfRootElement_Accessors,
  RWGltf_GltfRootElement_BufferViews,
  RWGltf_GltfRootElement_Buffers,
  RWGltf_GltfRootElement_NB_MANDATORY,

  RWGltf_GltfRootElement_Animations = RWGltf_GltfRootElement_NB_MANDATORY,
  RWGltf_GltfRootElement_Materials,
  RWGltf_GltfRootElement_Programs,
  RWGltf_GltfRootElement_Samplers,
  RWGltf_GltfRootElement_Shaders,
  RWGltf_GltfRootElement_Skins,
  RWGltf_GltfRootElement_Techniques,
  RWGltf_GltfRootElement_Textures,
  RWGltf_GltfRootElement_Images,
  RWGltf_GltfRootElement_ExtensionsUsed,
  RWGltf_GltfRootElement_ExtensionsRequired,
  RWGltf_GltfRootElement_NB
};


inline const char* RWGltf_GltfRootElementName (RWGltf_GltfRootElement theElem)
{
  static const char* THE_ROOT_NAMES[RWGltf_GltfRootElement_NB] =
  {
    "asset",
    "scenes",
    "scene",
    "nodes",
    "meshes",
    "accessors",
    "bufferViews",
    "buffers",
    "animations",
    "materials",
    "programs",
    "samplers",
    "shaders",
    "skins",
    "techniques",
    "textures",
    "images",
    "extensionsUsed",
    "extensionsRequired"
  };
  return THE_ROOT_NAMES[theElem];
}
