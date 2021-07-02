proc chFiKPartSphere*(dStr: var TopOpeBRepDS_DataStructure;
                     data: Handle[ChFiDS_SurfData]; s1: Handle[Adaptor3dHSurface];
                     s2: Handle[Adaptor3dHSurface]; orFace1: TopAbsOrientation;
                     orFace2: TopAbsOrientation; or1: TopAbsOrientation;
                     or2: TopAbsOrientation; rad: StandardReal; ps1: GpPnt2d;
                     p1s2: GpPnt2d; p2s2: GpPnt2d): StandardBoolean {.
    importcpp: "ChFiKPart_Sphere(@)", header: "ChFiKPart_ComputeData_Sphere.hxx".}