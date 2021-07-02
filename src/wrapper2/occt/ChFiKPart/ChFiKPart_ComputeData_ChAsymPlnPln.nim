proc chFiKPartMakeChAsym*(dStr: var TopOpeBRepDS_DataStructure;
                         data: Handle[ChFiDS_SurfData]; pl1: GpPln; pl2: GpPln;
                         or1: TopAbsOrientation; or2: TopAbsOrientation;
                         dis: StandardReal; angle: StandardReal; spine: GpLin;
                         first: StandardReal; of1: TopAbsOrientation;
                         disOnP1: StandardBoolean): StandardBoolean {.
    importcpp: "ChFiKPart_MakeChAsym(@)",
    header: "ChFiKPart_ComputeData_ChAsymPlnPln.hxx".}