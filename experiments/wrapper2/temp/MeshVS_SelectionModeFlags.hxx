# 1 "/usr/include/opencascade/MeshVS_SelectionModeFlags.hxx"
# 1 "<interno>"
# 1 "<línea-de-órdenes>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<línea-de-órdenes>" 2
# 1 "/usr/include/opencascade/MeshVS_SelectionModeFlags.hxx"
# 19 "/usr/include/opencascade/MeshVS_SelectionModeFlags.hxx"
typedef enum
{
  MeshVS_SMF_Mesh = 0x0000,
  MeshVS_SMF_Node = 0x0001,
  MeshVS_SMF_0D = 0x0002,
  MeshVS_SMF_Link = 0x0004,
  MeshVS_SMF_Face = 0x0008,
  MeshVS_SMF_Volume = 0x0010,

  MeshVS_SMF_Element = MeshVS_SMF_0D | MeshVS_SMF_Link | MeshVS_SMF_Face | MeshVS_SMF_Volume,
  MeshVS_SMF_All = MeshVS_SMF_Element | MeshVS_SMF_Node,

  MeshVS_SMF_Group = 0x0100

} MeshVS_SelectionModeFlags;
