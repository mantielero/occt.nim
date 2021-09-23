##  Created on: 1993-11-09
##  Created by: Laurent BOURESCHE
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
  ../Standard/Standard_Handle, ../Standard/Standard_Integer,
  ../TopAbs/TopAbs_Orientation, ../Standard/Standard_Boolean,
  ../ChFiDS/ChFiDS_TypeOfConcavity, ../GeomAbs/GeomAbs_Shape

discard "forward decl of BRepAdaptor_Surface"
discard "forward decl of TopoDS_Edge"
discard "forward decl of TopoDS_Face"
discard "forward decl of ChFi3d_Builder"
discard "forward decl of ChFi3d_ChBuilder"
discard "forward decl of ChFi3d_FilBuilder"
discard "forward decl of ChFi3d_SearchSing"
type
  ChFi3d* {.importcpp: "ChFi3d", header: "ChFi3d.hxx", bycopy.} = object ## ! Defines the type of concavity in the edge of connection of two faces


proc DefineConnectType*(E: TopoDS_Edge; F1: TopoDS_Face; F2: TopoDS_Face;
                       SinTol: Standard_Real; CorrectPoint: Standard_Boolean): ChFiDS_TypeOfConcavity {.
    importcpp: "ChFi3d::DefineConnectType(@)", header: "ChFi3d.hxx".}
proc IsTangentFaces*(theEdge: TopoDS_Edge; theFace1: TopoDS_Face;
                    theFace2: TopoDS_Face; Order: GeomAbs_Shape = GeomAbs_G1): Standard_Boolean {.
    importcpp: "ChFi3d::IsTangentFaces(@)", header: "ChFi3d.hxx".}
proc ConcaveSide*(S1: BRepAdaptor_Surface; S2: BRepAdaptor_Surface; E: TopoDS_Edge;
                 Or1: var TopAbs_Orientation; Or2: var TopAbs_Orientation): Standard_Integer {.
    importcpp: "ChFi3d::ConcaveSide(@)", header: "ChFi3d.hxx".}
proc NextSide*(Or1: var TopAbs_Orientation; Or2: var TopAbs_Orientation;
              OrSave1: TopAbs_Orientation; OrSave2: TopAbs_Orientation;
              ChoixSauv: Standard_Integer): Standard_Integer {.
    importcpp: "ChFi3d::NextSide(@)", header: "ChFi3d.hxx".}
proc NextSide*(Or: var TopAbs_Orientation; OrSave: TopAbs_Orientation;
              OrFace: TopAbs_Orientation) {.importcpp: "ChFi3d::NextSide(@)",
    header: "ChFi3d.hxx".}
proc SameSide*(Or: TopAbs_Orientation; OrSave1: TopAbs_Orientation;
              OrSave2: TopAbs_Orientation; OrFace1: TopAbs_Orientation;
              OrFace2: TopAbs_Orientation): Standard_Boolean {.
    importcpp: "ChFi3d::SameSide(@)", header: "ChFi3d.hxx".}