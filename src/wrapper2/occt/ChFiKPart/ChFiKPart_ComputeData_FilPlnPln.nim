proc chFiKPartMakeFillet*(dStr: var TopOpeBRepDS_DataStructure;
                         data: Handle[ChFiDS_SurfData]; pl1: GpPln; pl2: GpPln;
                         or1: TopAbsOrientation; or2: TopAbsOrientation;
                         radius: StandardReal; spine: GpLin; first: StandardReal;
                         of1: TopAbsOrientation): StandardBoolean {.
    importcpp: "ChFiKPart_MakeFillet(@)",
    header: "ChFiKPart_ComputeData_FilPlnPln.hxx".}