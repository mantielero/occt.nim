##  Created on: 1997-11-25
##  Created by: Jean Yves LEBEY
##  Copyright (c) 1997-1999 Matra Datavision
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

proc fDSCNX_EdgeConnexityShapeIndex*(e: TopoDS_Shape;
                                    hds: Handle[TopOpeBRepDS_HDataStructure];
                                    si: int): var TopToolsListOfShape {.
    importcpp: "FDSCNX_EdgeConnexityShapeIndex(@)",
    header: "TopOpeBRepDS_connex.hxx".}
proc fDSCNX_EdgeConnexitySameShape*(e: TopoDS_Shape;
                                   hds: Handle[TopOpeBRepDS_HDataStructure]): var TopToolsListOfShape {.
    importcpp: "FDSCNX_EdgeConnexitySameShape(@)",
    header: "TopOpeBRepDS_connex.hxx".}
proc fDSCNX_Prepare*(s1: TopoDS_Shape; s2: TopoDS_Shape;
                    hds: Handle[TopOpeBRepDS_HDataStructure]) {.
    importcpp: "FDSCNX_Prepare(@)", header: "TopOpeBRepDS_connex.hxx".}
proc fDSCNX_HasConnexFace*(s: TopoDS_Shape;
                          hds: Handle[TopOpeBRepDS_HDataStructure]): StandardBoolean {.
    importcpp: "FDSCNX_HasConnexFace(@)", header: "TopOpeBRepDS_connex.hxx".}
proc fDSCNX_FaceEdgeConnexFaces*(f: TopoDS_Shape; e: TopoDS_Shape;
                                hds: Handle[TopOpeBRepDS_HDataStructure];
                                lf: var TopToolsListOfShape) {.
    importcpp: "FDSCNX_FaceEdgeConnexFaces(@)", header: "TopOpeBRepDS_connex.hxx".}
proc fDSCNX_Dump*(hds: Handle[TopOpeBRepDS_HDataStructure]) {.
    importcpp: "FDSCNX_Dump(@)", header: "TopOpeBRepDS_connex.hxx".}
proc fDSCNX_Dump*(hds: Handle[TopOpeBRepDS_HDataStructure]; i: int) {.
    importcpp: "FDSCNX_Dump(@)", header: "TopOpeBRepDS_connex.hxx".}
proc fDSCNX_DumpIndex*(hds: Handle[TopOpeBRepDS_HDataStructure]; i: int) {.
    importcpp: "FDSCNX_DumpIndex(@)", header: "TopOpeBRepDS_connex.hxx".}