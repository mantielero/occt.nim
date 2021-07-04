# 1 "/usr/include/opencascade/ChFiKPart_ComputeData_ChPlnCon.hxx"
# 1 "<interno>"
# 1 "<línea-de-órdenes>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<línea-de-órdenes>" 2
# 1 "/usr/include/opencascade/ChFiKPart_ComputeData_ChPlnCon.hxx"
# 20 "/usr/include/opencascade/ChFiKPart_ComputeData_ChPlnCon.hxx"
Standard_Boolean ChFiKPart_MakeChamfer(TopOpeBRepDS_DataStructure& DStr,
           const Handle(ChFiDS_SurfData)& Data,
                                       const ChFiDS_ChamfMode theMode,
           const gp_Pln& Pln,
           const gp_Cone& Con,
           const Standard_Real fu,
           const Standard_Real lu,
           const TopAbs_Orientation Or1,
           const TopAbs_Orientation Or2,
           const Standard_Real Dis1,
           const Standard_Real Dis2,
           const gp_Circ& Spine,
           const Standard_Real First,
           const TopAbs_Orientation Ofpl,
           const Standard_Boolean plandab);
