# 1 "/usr/include/opencascade/AIS_RotationMode.hxx"
# 1 "<interno>"
# 1 "<línea-de-órdenes>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<línea-de-órdenes>" 2
# 1 "/usr/include/opencascade/AIS_RotationMode.hxx"
# 18 "/usr/include/opencascade/AIS_RotationMode.hxx"
enum AIS_RotationMode
{
  AIS_RotationMode_BndBoxActive,
  AIS_RotationMode_PickLast,
  AIS_RotationMode_PickCenter,
  AIS_RotationMode_CameraAt,
  AIS_RotationMode_BndBoxScene,
};

enum
{
  AIS_RotationMode_LOWER = 0,
  AIS_RotationMode_UPPER = AIS_RotationMode_BndBoxScene,
};
