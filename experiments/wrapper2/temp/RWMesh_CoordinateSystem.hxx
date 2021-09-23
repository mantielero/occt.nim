# 1 "/usr/include/opencascade/RWMesh_CoordinateSystem.hxx"
# 1 "<interno>"
# 1 "<línea-de-órdenes>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<línea-de-órdenes>" 2
# 1 "/usr/include/opencascade/RWMesh_CoordinateSystem.hxx"
# 22 "/usr/include/opencascade/RWMesh_CoordinateSystem.hxx"
enum RWMesh_CoordinateSystem
{
  RWMesh_CoordinateSystem_Undefined = -1,
  RWMesh_CoordinateSystem_posYfwd_posZup = 0,
  RWMesh_CoordinateSystem_negZfwd_posYup,

  RWMesh_CoordinateSystem_Blender = RWMesh_CoordinateSystem_posYfwd_posZup,
  RWMesh_CoordinateSystem_glTF = RWMesh_CoordinateSystem_negZfwd_posYup,
  RWMesh_CoordinateSystem_Zup = RWMesh_CoordinateSystem_Blender,
  RWMesh_CoordinateSystem_Yup = RWMesh_CoordinateSystem_glTF,
};
