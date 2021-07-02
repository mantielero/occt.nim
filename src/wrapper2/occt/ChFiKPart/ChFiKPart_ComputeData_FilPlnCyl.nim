proc chFiKPartMakeFillet*(dStr: var TopOpeBRepDS_DataStructure;
                         data: Handle[ChFiDS_SurfData]; pln: GpPln; cyl: GpCylinder;
                         fu: StandardReal; lu: StandardReal; or1: TopAbsOrientation;
                         or2: TopAbsOrientation; radius: StandardReal; spine: GpLin;
                         first: StandardReal; ofpl: TopAbsOrientation;
                         plandab: StandardBoolean): StandardBoolean {.
    importcpp: "ChFiKPart_MakeFillet(@)",
    header: "ChFiKPart_ComputeData_FilPlnCyl.hxx".}
proc chFiKPartMakeFillet*(dStr: var TopOpeBRepDS_DataStructure;
                         data: Handle[ChFiDS_SurfData]; pln: GpPln; cyl: GpCylinder;
                         fu: StandardReal; lu: StandardReal; or1: TopAbsOrientation;
                         or2: TopAbsOrientation; radius: StandardReal;
                         spine: GpCirc; first: StandardReal;
                         ofpl: TopAbsOrientation; plandab: StandardBoolean): StandardBoolean {.
    importcpp: "ChFiKPart_MakeFillet(@)",
    header: "ChFiKPart_ComputeData_FilPlnCyl.hxx".}