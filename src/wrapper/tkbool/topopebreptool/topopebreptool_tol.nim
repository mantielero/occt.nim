import ../../tkbrep/brepadaptor/brepadaptor_types
import ../../tkbrep/topods/topods_types
import ../../tkmath/bnd/bnd_types




##  Created on: 1997-04-01
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

proc fTOL_FaceTolerances*(b1: BndBox; b2: BndBox; myFace1: TopoDS_Face;
                         myFace2: TopoDS_Face; mySurface1: BRepAdaptorSurface;
                         mySurface2: BRepAdaptorSurface; myTol1: var cfloat;
                         myTol2: var cfloat; deflection: var cfloat; maxUV: var cfloat) {.
    cdecl, importcpp: "FTOL_FaceTolerances(@)", header: "TopOpeBRepTool_tol.hxx".}
proc fTOL_FaceTolerances3d*(myFace1: TopoDS_Face; myFace2: TopoDS_Face;
                           tol: var cfloat) {.cdecl,
    importcpp: "FTOL_FaceTolerances3d(@)", header: "TopOpeBRepTool_tol.hxx".}
proc fTOL_FaceTolerances3d*(b1: BndBox; b2: BndBox; myFace1: TopoDS_Face;
                           myFace2: TopoDS_Face; mySurface1: BRepAdaptorSurface;
                           mySurface2: BRepAdaptorSurface; myTol1: var cfloat;
                           myTol2: var cfloat; deflection: var cfloat;
                           maxUV: var cfloat) {.cdecl,
    importcpp: "FTOL_FaceTolerances3d(@)", header: "TopOpeBRepTool_tol.hxx".}
proc fTOL_FaceTolerances2d*(b1: BndBox; b2: BndBox; myFace1: TopoDS_Face;
                           myFace2: TopoDS_Face; mySurface1: BRepAdaptorSurface;
                           mySurface2: BRepAdaptorSurface; myTol1: var cfloat;
                           myTol2: var cfloat) {.cdecl,
    importcpp: "FTOL_FaceTolerances2d(@)", header: "TopOpeBRepTool_tol.hxx".}

