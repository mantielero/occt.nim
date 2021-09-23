# 1 "/usr/include/opencascade/MeshVS_BuilderPriority.hxx"
# 1 "<interno>"
# 1 "<línea-de-órdenes>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<línea-de-órdenes>" 2
# 1 "/usr/include/opencascade/MeshVS_BuilderPriority.hxx"
# 19 "/usr/include/opencascade/MeshVS_BuilderPriority.hxx"
typedef Standard_Integer MeshVS_BuilderPriority;

enum
{
  MeshVS_BP_Mesh = 5,
  MeshVS_BP_NodalColor = 10,
  MeshVS_BP_ElemColor = 15,
  MeshVS_BP_Text = 20,
  MeshVS_BP_Vector = 25,
  MeshVS_BP_User = 30,
  MeshVS_BP_Default = MeshVS_BP_User

};
