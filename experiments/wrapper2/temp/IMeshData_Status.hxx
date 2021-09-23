# 1 "/usr/include/opencascade/IMeshData_Status.hxx"
# 1 "<interno>"
# 1 "<línea-de-órdenes>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<línea-de-órdenes>" 2
# 1 "/usr/include/opencascade/IMeshData_Status.hxx"
# 20 "/usr/include/opencascade/IMeshData_Status.hxx"
enum IMeshData_Status
{
  IMeshData_NoError = 0x0,
  IMeshData_OpenWire = 0x1,
  IMeshData_SelfIntersectingWire = 0x2,
  IMeshData_Failure = 0x4,
  IMeshData_ReMesh = 0x8,
  IMeshData_UnorientedWire = 0x10,
  IMeshData_TooFewPoints = 0x20,
  IMeshData_Outdated = 0x40,
  IMeshData_Reused = 0x80,
  IMeshData_UserBreak = 0x160
};
