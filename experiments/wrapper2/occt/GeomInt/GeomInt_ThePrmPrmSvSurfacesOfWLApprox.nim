##  Created on: 1995-01-27
##  Created by: Jacques GOUSSARD
##  Copyright (c) 1995-1999 Matra Datavision
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
  ../Standard/Standard_Handle, ../gp/gp_Pnt2d, ../gp/gp_Pnt, ../gp/gp_Vec2d,
  ../gp/gp_Vec, ../Standard/Standard_Boolean,
  GeomInt_TheInt2SOfThePrmPrmSvSurfacesOfWLApprox,
  ../ApproxInt/ApproxInt_SvSurfaces, ../Standard/Standard_Real

discard "forward decl of Adaptor3d_HSurface"
discard "forward decl of Adaptor3d_HSurfaceTool"
discard "forward decl of IntPatch_WLine"
discard "forward decl of GeomInt_TheInt2SOfThePrmPrmSvSurfacesOfWLApprox"
discard "forward decl of GeomInt_TheFunctionOfTheInt2SOfThePrmPrmSvSurfacesOfWLApprox"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
discard "forward decl of gp_Vec2d"
type
  GeomInt_ThePrmPrmSvSurfacesOfWLApprox* {.
      importcpp: "GeomInt_ThePrmPrmSvSurfacesOfWLApprox",
      header: "GeomInt_ThePrmPrmSvSurfacesOfWLApprox.hxx", bycopy.} = object of ApproxInt_SvSurfaces


proc constructGeomInt_ThePrmPrmSvSurfacesOfWLApprox*(
    Surf1: handle[Adaptor3d_HSurface]; Surf2: handle[Adaptor3d_HSurface]): GeomInt_ThePrmPrmSvSurfacesOfWLApprox {.
    constructor, importcpp: "GeomInt_ThePrmPrmSvSurfacesOfWLApprox(@)",
    header: "GeomInt_ThePrmPrmSvSurfacesOfWLApprox.hxx".}
proc Compute*(this: var GeomInt_ThePrmPrmSvSurfacesOfWLApprox;
             u1: var Standard_Real; v1: var Standard_Real; u2: var Standard_Real;
             v2: var Standard_Real; Pt: var gp_Pnt; Tg: var gp_Vec; Tguv1: var gp_Vec2d;
             Tguv2: var gp_Vec2d): Standard_Boolean {.importcpp: "Compute",
    header: "GeomInt_ThePrmPrmSvSurfacesOfWLApprox.hxx".}
proc Pnt*(this: var GeomInt_ThePrmPrmSvSurfacesOfWLApprox; u1: Standard_Real;
         v1: Standard_Real; u2: Standard_Real; v2: Standard_Real; P: var gp_Pnt) {.
    importcpp: "Pnt", header: "GeomInt_ThePrmPrmSvSurfacesOfWLApprox.hxx".}
proc SeekPoint*(this: var GeomInt_ThePrmPrmSvSurfacesOfWLApprox; u1: Standard_Real;
               v1: Standard_Real; u2: Standard_Real; v2: Standard_Real;
               Point: var IntSurf_PntOn2S): Standard_Boolean {.
    importcpp: "SeekPoint", header: "GeomInt_ThePrmPrmSvSurfacesOfWLApprox.hxx".}
proc Tangency*(this: var GeomInt_ThePrmPrmSvSurfacesOfWLApprox; u1: Standard_Real;
              v1: Standard_Real; u2: Standard_Real; v2: Standard_Real; Tg: var gp_Vec): Standard_Boolean {.
    importcpp: "Tangency", header: "GeomInt_ThePrmPrmSvSurfacesOfWLApprox.hxx".}
proc TangencyOnSurf1*(this: var GeomInt_ThePrmPrmSvSurfacesOfWLApprox;
                     u1: Standard_Real; v1: Standard_Real; u2: Standard_Real;
                     v2: Standard_Real; Tg: var gp_Vec2d): Standard_Boolean {.
    importcpp: "TangencyOnSurf1",
    header: "GeomInt_ThePrmPrmSvSurfacesOfWLApprox.hxx".}
proc TangencyOnSurf2*(this: var GeomInt_ThePrmPrmSvSurfacesOfWLApprox;
                     u1: Standard_Real; v1: Standard_Real; u2: Standard_Real;
                     v2: Standard_Real; Tg: var gp_Vec2d): Standard_Boolean {.
    importcpp: "TangencyOnSurf2",
    header: "GeomInt_ThePrmPrmSvSurfacesOfWLApprox.hxx".}