proc chFiKPartMakeChamfer*(dStr: var TopOpeBRepDS_DataStructure;
                          data: Handle[ChFiDS_SurfData];
                          theMode: ChFiDS_ChamfMode; pl1: GpPln; pl2: GpPln;
                          or1: TopAbsOrientation; or2: TopAbsOrientation;
                          dis1: StandardReal; dis2: StandardReal; spine: GpLin;
                          first: StandardReal; of1: TopAbsOrientation): StandardBoolean {.
    importcpp: "ChFiKPart_MakeChamfer(@)",
    header: "ChFiKPart_ComputeData_ChPlnPln.hxx".}