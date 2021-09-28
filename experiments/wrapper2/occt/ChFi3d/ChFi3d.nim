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

discard "forward decl of BRepAdaptor_Surface"
discard "forward decl of TopoDS_Edge"
discard "forward decl of TopoDS_Face"
discard "forward decl of ChFi3d_Builder"
discard "forward decl of ChFi3d_ChBuilder"
discard "forward decl of ChFi3d_FilBuilder"
discard "forward decl of ChFi3d_SearchSing"
type
  ChFi3d* {.importcpp: "ChFi3d", header: "ChFi3d.hxx", bycopy.} = object ## ! Defines the type of concavity in the edge of connection of two faces


proc defineConnectType*(e: TopoDS_Edge; f1: TopoDS_Face; f2: TopoDS_Face;
                       sinTol: cfloat; correctPoint: bool): ChFiDS_TypeOfConcavity {.
    importcpp: "ChFi3d::DefineConnectType(@)", header: "ChFi3d.hxx".}
proc isTangentFaces*(theEdge: TopoDS_Edge; theFace1: TopoDS_Face;
                    theFace2: TopoDS_Face; order: GeomAbsShape = geomAbsG1): bool {.
    importcpp: "ChFi3d::IsTangentFaces(@)", header: "ChFi3d.hxx".}
proc concaveSide*(s1: BRepAdaptorSurface; s2: BRepAdaptorSurface; e: TopoDS_Edge;
                 or1: var TopAbsOrientation; or2: var TopAbsOrientation): cint {.
    importcpp: "ChFi3d::ConcaveSide(@)", header: "ChFi3d.hxx".}
proc nextSide*(or1: var TopAbsOrientation; or2: var TopAbsOrientation;
              orSave1: TopAbsOrientation; orSave2: TopAbsOrientation;
              choixSauv: cint): cint {.importcpp: "ChFi3d::NextSide(@)",
                                    header: "ChFi3d.hxx".}
proc nextSide*(`or`: var TopAbsOrientation; orSave: TopAbsOrientation;
              orFace: TopAbsOrientation) {.importcpp: "ChFi3d::NextSide(@)",
    header: "ChFi3d.hxx".}
proc sameSide*(`or`: TopAbsOrientation; orSave1: TopAbsOrientation;
              orSave2: TopAbsOrientation; orFace1: TopAbsOrientation;
              orFace2: TopAbsOrientation): bool {.importcpp: "ChFi3d::SameSide(@)",
    header: "ChFi3d.hxx".}

























