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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Boolean,
  ../TopAbs/TopAbs_Orientation, ../Standard/Standard_Integer,
  ../Standard/Standard_Real

discard "forward decl of TopOpeBRepDS_DataStructure"
discard "forward decl of ChFiDS_SurfData"
discard "forward decl of Adaptor3d_HSurface"
discard "forward decl of ChFiDS_Spine"
discard "forward decl of gp_Pnt2d"
type
  ChFiKPart_ComputeData* {.importcpp: "ChFiKPart_ComputeData",
                          header: "ChFiKPart_ComputeData.hxx", bycopy.} = object ## !
                                                                            ## Computes a
                                                                            ## simple
                                                                            ## fillet in
                                                                            ## several
                                                                            ## particular
                                                                            ## !
                                                                            ## cases.


proc Compute*(DStr: var TopOpeBRepDS_DataStructure;
             Data: var handle[ChFiDS_SurfData]; S1: handle[Adaptor3d_HSurface];
             S2: handle[Adaptor3d_HSurface]; Or1: TopAbs_Orientation;
             Or2: TopAbs_Orientation; Sp: handle[ChFiDS_Spine];
             Iedge: Standard_Integer): Standard_Boolean {.
    importcpp: "ChFiKPart_ComputeData::Compute(@)",
    header: "ChFiKPart_ComputeData.hxx".}
proc ComputeCorner*(DStr: var TopOpeBRepDS_DataStructure;
                   Data: handle[ChFiDS_SurfData]; S1: handle[Adaptor3d_HSurface];
                   S2: handle[Adaptor3d_HSurface]; OrFace1: TopAbs_Orientation;
                   OrFace2: TopAbs_Orientation; Or1: TopAbs_Orientation;
                   Or2: TopAbs_Orientation; minRad: Standard_Real;
                   majRad: Standard_Real; P1S1: gp_Pnt2d; P2S1: gp_Pnt2d;
                   P1S2: gp_Pnt2d; P2S2: gp_Pnt2d): Standard_Boolean {.
    importcpp: "ChFiKPart_ComputeData::ComputeCorner(@)",
    header: "ChFiKPart_ComputeData.hxx".}
proc ComputeCorner*(DStr: var TopOpeBRepDS_DataStructure;
                   Data: handle[ChFiDS_SurfData]; S1: handle[Adaptor3d_HSurface];
                   S2: handle[Adaptor3d_HSurface]; OrFace1: TopAbs_Orientation;
                   OrFace2: TopAbs_Orientation; Or1: TopAbs_Orientation;
                   Or2: TopAbs_Orientation; Rad: Standard_Real; PS1: gp_Pnt2d;
                   P1S2: gp_Pnt2d; P2S2: gp_Pnt2d): Standard_Boolean {.
    importcpp: "ChFiKPart_ComputeData::ComputeCorner(@)",
    header: "ChFiKPart_ComputeData.hxx".}
proc ComputeCorner*(DStr: var TopOpeBRepDS_DataStructure;
                   Data: handle[ChFiDS_SurfData]; S: handle[Adaptor3d_HSurface];
                   S1: handle[Adaptor3d_HSurface]; S2: handle[Adaptor3d_HSurface];
                   OfS: TopAbs_Orientation; OS: TopAbs_Orientation;
                   OS1: TopAbs_Orientation; OS2: TopAbs_Orientation;
                   Radius: Standard_Real): Standard_Boolean {.
    importcpp: "ChFiKPart_ComputeData::ComputeCorner(@)",
    header: "ChFiKPart_ComputeData.hxx".}