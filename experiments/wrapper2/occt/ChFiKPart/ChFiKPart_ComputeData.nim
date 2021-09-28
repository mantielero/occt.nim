##  Created on: 1993-12-23
##  Created by: Isabelle GRIGNON
##  Copyright (c) 1993-1999 Matra Datavision
##  Copyright (c) 1999-2014 OPEN CASCADE SAS
##
##  This file is part of Open CASCADE Technology software library.
##
##  This library is free software; you can redistribute it and/or modify it under
##  the terms of the GNU Lesser General Public License version 2.1 as published
##  by the Free Software Foundation, with special exception defined in the file
##  OCCT_LGPL_EXCEPTION.txt. Consult the file LICENSE_LGPL_21.txt included in OCCT
##  distribution for complete text of the license and disclaimer of any warranty.
##
##  Alternatively, this file may be used under the terms of Open CASCADE
##  commercial license or contractual agreement.

discard "forward decl of TopOpeBRepDS_DataStructure"
discard "forward decl of ChFiDS_SurfData"
discard "forward decl of Adaptor3d_HSurface"
discard "forward decl of ChFiDS_Spine"
discard "forward decl of gp_Pnt2d"
type
  ChFiKPartComputeData* {.importcpp: "ChFiKPart_ComputeData",
                         header: "ChFiKPart_ComputeData.hxx", bycopy.} = object ## !
                                                                           ## Computes a
                                                                           ## simple
                                                                           ## fillet in
                                                                           ## several
                                                                           ## particular
                                                                           ## !
                                                                           ## cases.


proc compute*(dStr: var TopOpeBRepDS_DataStructure;
             data: var Handle[ChFiDS_SurfData]; s1: Handle[Adaptor3dHSurface];
             s2: Handle[Adaptor3dHSurface]; or1: TopAbsOrientation;
             or2: TopAbsOrientation; sp: Handle[ChFiDS_Spine]; iedge: cint): bool {.
    importcpp: "ChFiKPart_ComputeData::Compute(@)",
    header: "ChFiKPart_ComputeData.hxx".}
proc computeCorner*(dStr: var TopOpeBRepDS_DataStructure;
                   data: Handle[ChFiDS_SurfData]; s1: Handle[Adaptor3dHSurface];
                   s2: Handle[Adaptor3dHSurface]; orFace1: TopAbsOrientation;
                   orFace2: TopAbsOrientation; or1: TopAbsOrientation;
                   or2: TopAbsOrientation; minRad: cfloat; majRad: cfloat;
                   p1s1: Pnt2d; p2s1: Pnt2d; p1s2: Pnt2d; p2s2: Pnt2d): bool {.
    importcpp: "ChFiKPart_ComputeData::ComputeCorner(@)",
    header: "ChFiKPart_ComputeData.hxx".}
proc computeCorner*(dStr: var TopOpeBRepDS_DataStructure;
                   data: Handle[ChFiDS_SurfData]; s1: Handle[Adaptor3dHSurface];
                   s2: Handle[Adaptor3dHSurface]; orFace1: TopAbsOrientation;
                   orFace2: TopAbsOrientation; or1: TopAbsOrientation;
                   or2: TopAbsOrientation; rad: cfloat; ps1: Pnt2d; p1s2: Pnt2d;
                   p2s2: Pnt2d): bool {.importcpp: "ChFiKPart_ComputeData::ComputeCorner(@)",
                                     header: "ChFiKPart_ComputeData.hxx".}
proc computeCorner*(dStr: var TopOpeBRepDS_DataStructure;
                   data: Handle[ChFiDS_SurfData]; s: Handle[Adaptor3dHSurface];
                   s1: Handle[Adaptor3dHSurface]; s2: Handle[Adaptor3dHSurface];
                   ofS: TopAbsOrientation; os: TopAbsOrientation;
                   os1: TopAbsOrientation; os2: TopAbsOrientation; radius: cfloat): bool {.
    importcpp: "ChFiKPart_ComputeData::ComputeCorner(@)",
    header: "ChFiKPart_ComputeData.hxx".}

























