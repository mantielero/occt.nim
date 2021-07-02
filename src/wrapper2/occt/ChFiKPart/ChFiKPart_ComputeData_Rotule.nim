proc chFiKPartMakeRotule*(dStr: var TopOpeBRepDS_DataStructure;
                         data: Handle[ChFiDS_SurfData]; pl: GpPln; pl1: GpPln;
                         pl2: GpPln; opl: TopAbsOrientation;
                         opl1: TopAbsOrientation; opl2: TopAbsOrientation;
                         r: StandardReal; ofpl: TopAbsOrientation): StandardBoolean {.
    importcpp: "ChFiKPart_MakeRotule(@)",
    header: "ChFiKPart_ComputeData_Rotule.hxx".}