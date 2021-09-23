# 1 "/usr/include/opencascade/MeshVS_EntityType.hxx"
# 1 "<interno>"
# 1 "<línea-de-órdenes>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<línea-de-órdenes>" 2
# 1 "/usr/include/opencascade/MeshVS_EntityType.hxx"
# 19 "/usr/include/opencascade/MeshVS_EntityType.hxx"
typedef enum
{
  MeshVS_ET_NONE = 0x00,
  MeshVS_ET_Node = 0x01,
  MeshVS_ET_0D = 0x02,
  MeshVS_ET_Link = 0x04,
  MeshVS_ET_Face = 0x08,
  MeshVS_ET_Volume = 0x10,

  MeshVS_ET_Element = MeshVS_ET_0D | MeshVS_ET_Link | MeshVS_ET_Face | MeshVS_ET_Volume,
  MeshVS_ET_All = MeshVS_ET_Element | MeshVS_ET_Node

} MeshVS_EntityType;
