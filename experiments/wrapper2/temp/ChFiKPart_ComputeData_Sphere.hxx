# 1 "/usr/include/opencascade/ChFiKPart_ComputeData_Sphere.hxx"
# 1 "<interno>"
# 1 "<línea-de-órdenes>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<línea-de-órdenes>" 2
# 1 "/usr/include/opencascade/ChFiKPart_ComputeData_Sphere.hxx"
# 20 "/usr/include/opencascade/ChFiKPart_ComputeData_Sphere.hxx"
Standard_Boolean ChFiKPart_Sphere
  (TopOpeBRepDS_DataStructure& DStr,
   const Handle(ChFiDS_SurfData)& Data,
   const Handle(Adaptor3d_HSurface)& S1,
   const Handle(Adaptor3d_HSurface)& S2,
   const TopAbs_Orientation OrFace1,
   const TopAbs_Orientation OrFace2,
   const TopAbs_Orientation Or1,
   const TopAbs_Orientation Or2,
   const Standard_Real Rad,
   const gp_Pnt2d& PS1,
   const gp_Pnt2d& P1S2,
   const gp_Pnt2d& P2S2);
