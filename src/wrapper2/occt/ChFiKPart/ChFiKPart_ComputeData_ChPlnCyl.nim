proc chFiKPartMakeChamfer*(dStr: var TopOpeBRepDS_DataStructure;
                          data: Handle[ChFiDS_SurfData];
                          theMode: ChFiDS_ChamfMode; pln: GpPln; cyl: GpCylinder;
                          fu: StandardReal; lu: StandardReal;
                          or1: TopAbsOrientation; or2: TopAbsOrientation;
                          dis1: StandardReal; dis2: StandardReal; spine: GpCirc;
                          first: StandardReal; ofpl: TopAbsOrientation;
                          plandab: StandardBoolean): StandardBoolean {.
    importcpp: "ChFiKPart_MakeChamfer(@)",
    header: "ChFiKPart_ComputeData_ChPlnCyl.hxx".}
proc chFiKPartMakeChamfer*(dStr: var TopOpeBRepDS_DataStructure;
                          data: Handle[ChFiDS_SurfData];
                          theMode: ChFiDS_ChamfMode; pln: GpPln; cyl: GpCylinder;
                          fu: StandardReal; lu: StandardReal;
                          or1: TopAbsOrientation; or2: TopAbsOrientation;
                          dis1: StandardReal; dis2: StandardReal; spine: GpLin;
                          first: StandardReal; ofpl: TopAbsOrientation;
                          plandab: StandardBoolean): StandardBoolean {.
    importcpp: "ChFiKPart_MakeChamfer(@)",
    header: "ChFiKPart_ComputeData_ChPlnCyl.hxx".}