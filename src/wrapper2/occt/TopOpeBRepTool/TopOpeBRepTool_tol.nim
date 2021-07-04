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

import
  ../Bnd/Bnd_Box, ../TopoDS/TopoDS_Face, ../BRepAdaptor/BRepAdaptor_Surface,
  TopOpeBRepTool_define

proc FTOL_FaceTolerances*(B1: Bnd_Box; B2: Bnd_Box; myFace1: TopoDS_Face;
                         myFace2: TopoDS_Face; mySurface1: BRepAdaptor_Surface;
                         mySurface2: BRepAdaptor_Surface;
                         myTol1: var Standard_Real; myTol2: var Standard_Real;
                         Deflection: var Standard_Real; MaxUV: var Standard_Real) {.
    importcpp: "FTOL_FaceTolerances(@)", header: "TopOpeBRepTool_tol.hxx".}
proc FTOL_FaceTolerances3d*(myFace1: TopoDS_Face; myFace2: TopoDS_Face;
                           Tol: var Standard_Real) {.
    importcpp: "FTOL_FaceTolerances3d(@)", header: "TopOpeBRepTool_tol.hxx".}
proc FTOL_FaceTolerances3d*(B1: Bnd_Box; B2: Bnd_Box; myFace1: TopoDS_Face;
                           myFace2: TopoDS_Face; mySurface1: BRepAdaptor_Surface;
                           mySurface2: BRepAdaptor_Surface;
                           myTol1: var Standard_Real; myTol2: var Standard_Real;
                           Deflection: var Standard_Real; MaxUV: var Standard_Real) {.
    importcpp: "FTOL_FaceTolerances3d(@)", header: "TopOpeBRepTool_tol.hxx".}
proc FTOL_FaceTolerances2d*(B1: Bnd_Box; B2: Bnd_Box; myFace1: TopoDS_Face;
                           myFace2: TopoDS_Face; mySurface1: BRepAdaptor_Surface;
                           mySurface2: BRepAdaptor_Surface;
                           myTol1: var Standard_Real; myTol2: var Standard_Real) {.
    importcpp: "FTOL_FaceTolerances2d(@)", header: "TopOpeBRepTool_tol.hxx".}