proc chFiKPartMakeChAsym*(dStr: var TopOpeBRepDS_DataStructure;
                         data: Handle[ChFiDS_SurfData]; pln: GpPln; cyl: GpCylinder;
                         fu: StandardReal; lu: StandardReal; or1: TopAbsOrientation;
                         or2: TopAbsOrientation; dis: StandardReal;
                         angle: StandardReal; spine: GpCirc; first: StandardReal;
                         ofpl: TopAbsOrientation; plandab: StandardBoolean;
                         disOnP: StandardBoolean): StandardBoolean {.
    importcpp: "ChFiKPart_MakeChAsym(@)",
    header: "ChFiKPart_ComputeData_ChAsymPlnCyl.hxx".}
proc chFiKPartMakeChAsym*(dStr: var TopOpeBRepDS_DataStructure;
                         data: Handle[ChFiDS_SurfData]; pln: GpPln; cyl: GpCylinder;
                         fu: StandardReal; lu: StandardReal; or1: TopAbsOrientation;
                         or2: TopAbsOrientation; dis: StandardReal;
                         angle: StandardReal; spine: GpLin; first: StandardReal;
                         ofpl: TopAbsOrientation; plandab: StandardBoolean;
                         disOnP: StandardBoolean): StandardBoolean {.
    importcpp: "ChFiKPart_MakeChAsym(@)",
    header: "ChFiKPart_ComputeData_ChAsymPlnCyl.hxx".}