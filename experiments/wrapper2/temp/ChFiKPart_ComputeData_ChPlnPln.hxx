# 1 "/usr/include/opencascade/ChFiKPart_ComputeData_ChPlnPln.hxx"
# 1 "<interno>"
# 1 "<línea-de-órdenes>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<línea-de-órdenes>" 2
# 1 "/usr/include/opencascade/ChFiKPart_ComputeData_ChPlnPln.hxx"
# 21 "/usr/include/opencascade/ChFiKPart_ComputeData_ChPlnPln.hxx"
Standard_Boolean ChFiKPart_MakeChamfer(TopOpeBRepDS_DataStructure& DStr,
           const Handle(ChFiDS_SurfData)& Data,
                                       const ChFiDS_ChamfMode theMode,
           const gp_Pln& Pl1,
           const gp_Pln& Pl2,
           const TopAbs_Orientation Or1,
           const TopAbs_Orientation Or2,
           const Standard_Real Dis1,
           const Standard_Real Dis2,
           const gp_Lin& Spine,
           const Standard_Real First,
           const TopAbs_Orientation Of1);
