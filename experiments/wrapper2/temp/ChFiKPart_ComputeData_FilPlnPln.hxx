# 1 "/usr/include/opencascade/ChFiKPart_ComputeData_FilPlnPln.hxx"
# 1 "<interno>"
# 1 "<línea-de-órdenes>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<línea-de-órdenes>" 2
# 1 "/usr/include/opencascade/ChFiKPart_ComputeData_FilPlnPln.hxx"
# 20 "/usr/include/opencascade/ChFiKPart_ComputeData_FilPlnPln.hxx"
Standard_Boolean ChFiKPart_MakeFillet(TopOpeBRepDS_DataStructure& DStr,
          const Handle(ChFiDS_SurfData)& Data,
          const gp_Pln& Pl1,
          const gp_Pln& Pl2,
          const TopAbs_Orientation Or1,
          const TopAbs_Orientation Or2,
          const Standard_Real Radius,
          const gp_Lin& Spine,
          const Standard_Real First,
          const TopAbs_Orientation Of1);
