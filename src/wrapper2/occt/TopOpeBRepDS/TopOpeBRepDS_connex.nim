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

import
  TopOpeBRepDS_define

proc FDSCNX_EdgeConnexityShapeIndex*(E: TopoDS_Shape;
                                    HDS: handle[TopOpeBRepDS_HDataStructure];
                                    SI: Standard_Integer): var TopTools_ListOfShape {.
    importcpp: "FDSCNX_EdgeConnexityShapeIndex(@)",
    header: "TopOpeBRepDS_connex.hxx".}
proc FDSCNX_EdgeConnexitySameShape*(E: TopoDS_Shape;
                                   HDS: handle[TopOpeBRepDS_HDataStructure]): var TopTools_ListOfShape {.
    importcpp: "FDSCNX_EdgeConnexitySameShape(@)",
    header: "TopOpeBRepDS_connex.hxx".}
proc FDSCNX_Prepare*(S1: TopoDS_Shape; S2: TopoDS_Shape;
                    HDS: handle[TopOpeBRepDS_HDataStructure]) {.
    importcpp: "FDSCNX_Prepare(@)", header: "TopOpeBRepDS_connex.hxx".}
proc FDSCNX_HasConnexFace*(S: TopoDS_Shape;
                          HDS: handle[TopOpeBRepDS_HDataStructure]): Standard_Boolean {.
    importcpp: "FDSCNX_HasConnexFace(@)", header: "TopOpeBRepDS_connex.hxx".}
proc FDSCNX_FaceEdgeConnexFaces*(F: TopoDS_Shape; E: TopoDS_Shape;
                                HDS: handle[TopOpeBRepDS_HDataStructure];
                                LF: var TopTools_ListOfShape) {.
    importcpp: "FDSCNX_FaceEdgeConnexFaces(@)", header: "TopOpeBRepDS_connex.hxx".}
proc FDSCNX_Dump*(HDS: handle[TopOpeBRepDS_HDataStructure]) {.
    importcpp: "FDSCNX_Dump(@)", header: "TopOpeBRepDS_connex.hxx".}
proc FDSCNX_Dump*(HDS: handle[TopOpeBRepDS_HDataStructure]; I: Standard_Integer) {.
    importcpp: "FDSCNX_Dump(@)", header: "TopOpeBRepDS_connex.hxx".}
proc FDSCNX_DumpIndex*(HDS: handle[TopOpeBRepDS_HDataStructure];
                      I: Standard_Integer) {.importcpp: "FDSCNX_DumpIndex(@)",
    header: "TopOpeBRepDS_connex.hxx".}