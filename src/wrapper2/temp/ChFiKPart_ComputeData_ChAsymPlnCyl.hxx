# 1 "/usr/include/opencascade/ChFiKPart_ComputeData_ChAsymPlnCyl.hxx"
# 1 "<interno>"
# 1 "<línea-de-órdenes>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<línea-de-órdenes>" 2
# 1 "/usr/include/opencascade/ChFiKPart_ComputeData_ChAsymPlnCyl.hxx"
# 20 "/usr/include/opencascade/ChFiKPart_ComputeData_ChAsymPlnCyl.hxx"
Standard_Boolean ChFiKPart_MakeChAsym(TopOpeBRepDS_DataStructure& DStr,
          const Handle(ChFiDS_SurfData)& Data,
          const gp_Pln& Pln,
          const gp_Cylinder& Cyl,
          const Standard_Real fu,
          const Standard_Real lu,
          const TopAbs_Orientation Or1,
          const TopAbs_Orientation Or2,
          const Standard_Real Dis,
          const Standard_Real Angle,
          const gp_Circ& Spine,
          const Standard_Real First,
          const TopAbs_Orientation Ofpl,
          const Standard_Boolean plandab,
                                      const Standard_Boolean DisOnP);

Standard_Boolean ChFiKPart_MakeChAsym(TopOpeBRepDS_DataStructure& DStr,
          const Handle(ChFiDS_SurfData)& Data,
          const gp_Pln& Pln,
          const gp_Cylinder& Cyl,
          const Standard_Real fu,
          const Standard_Real lu,
          const TopAbs_Orientation Or1,
          const TopAbs_Orientation Or2,
          const Standard_Real Dis,
          const Standard_Real Angle,
          const gp_Lin& Spine,
          const Standard_Real First,
          const TopAbs_Orientation Ofpl,
          const Standard_Boolean plandab,
                                      const Standard_Boolean DisOnP);
