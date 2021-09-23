# 1 "/usr/include/opencascade/AIS_NavigationMode.hxx"
# 1 "<interno>"
# 1 "<línea-de-órdenes>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<línea-de-órdenes>" 2
# 1 "/usr/include/opencascade/AIS_NavigationMode.hxx"
# 18 "/usr/include/opencascade/AIS_NavigationMode.hxx"
enum AIS_NavigationMode
{
  AIS_NavigationMode_Orbit,
  AIS_NavigationMode_FirstPersonFlight,
  AIS_NavigationMode_FirstPersonWalk,
};

enum
{
  AIS_NavigationMode_LOWER = 0,
  AIS_NavigationMode_UPPER = AIS_NavigationMode_FirstPersonWalk
};
