##  Created on: 1995-06-06
##  Created by: Jean Yves LEBEY
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
  BRepApprox_TheZerImpFuncOfTheImpPrmSvSurfacesOfApprox,
  ../ApproxInt/ApproxInt_SvSurfaces, ../Standard/Standard_Real

discard "forward decl of BRepAdaptor_Surface"
discard "forward decl of BRepApprox_SurfaceTool"
discard "forward decl of IntSurf_Quadric"
discard "forward decl of IntSurf_QuadricTool"
discard "forward decl of BRepApprox_ApproxLine"
discard "forward decl of BRepApprox_TheZerImpFuncOfTheImpPrmSvSurfacesOfApprox"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
discard "forward decl of gp_Vec2d"
type
  BRepApprox_TheImpPrmSvSurfacesOfApprox* {.
      importcpp: "BRepApprox_TheImpPrmSvSurfacesOfApprox",
      header: "BRepApprox_TheImpPrmSvSurfacesOfApprox.hxx", bycopy.} = object of ApproxInt_SvSurfaces


proc constructBRepApprox_TheImpPrmSvSurfacesOfApprox*(Surf1: BRepAdaptor_Surface;
    Surf2: IntSurf_Quadric): BRepApprox_TheImpPrmSvSurfacesOfApprox {.constructor,
    importcpp: "BRepApprox_TheImpPrmSvSurfacesOfApprox(@)",
    header: "BRepApprox_TheImpPrmSvSurfacesOfApprox.hxx".}
proc constructBRepApprox_TheImpPrmSvSurfacesOfApprox*(Surf1: IntSurf_Quadric;
    Surf2: BRepAdaptor_Surface): BRepApprox_TheImpPrmSvSurfacesOfApprox {.
    constructor, importcpp: "BRepApprox_TheImpPrmSvSurfacesOfApprox(@)",
    header: "BRepApprox_TheImpPrmSvSurfacesOfApprox.hxx".}
proc Compute*(this: var BRepApprox_TheImpPrmSvSurfacesOfApprox;
             u1: var Standard_Real; v1: var Standard_Real; u2: var Standard_Real;
             v2: var Standard_Real; Pt: var gp_Pnt; Tg: var gp_Vec; Tguv1: var gp_Vec2d;
             Tguv2: var gp_Vec2d): Standard_Boolean {.importcpp: "Compute",
    header: "BRepApprox_TheImpPrmSvSurfacesOfApprox.hxx".}
proc Pnt*(this: var BRepApprox_TheImpPrmSvSurfacesOfApprox; u1: Standard_Real;
         v1: Standard_Real; u2: Standard_Real; v2: Standard_Real; P: var gp_Pnt) {.
    importcpp: "Pnt", header: "BRepApprox_TheImpPrmSvSurfacesOfApprox.hxx".}
proc SeekPoint*(this: var BRepApprox_TheImpPrmSvSurfacesOfApprox; u1: Standard_Real;
               v1: Standard_Real; u2: Standard_Real; v2: Standard_Real;
               Point: var IntSurf_PntOn2S): Standard_Boolean {.
    importcpp: "SeekPoint", header: "BRepApprox_TheImpPrmSvSurfacesOfApprox.hxx".}
proc Tangency*(this: var BRepApprox_TheImpPrmSvSurfacesOfApprox; u1: Standard_Real;
              v1: Standard_Real; u2: Standard_Real; v2: Standard_Real; Tg: var gp_Vec): Standard_Boolean {.
    importcpp: "Tangency", header: "BRepApprox_TheImpPrmSvSurfacesOfApprox.hxx".}
proc TangencyOnSurf1*(this: var BRepApprox_TheImpPrmSvSurfacesOfApprox;
                     u1: Standard_Real; v1: Standard_Real; u2: Standard_Real;
                     v2: Standard_Real; Tg: var gp_Vec2d): Standard_Boolean {.
    importcpp: "TangencyOnSurf1",
    header: "BRepApprox_TheImpPrmSvSurfacesOfApprox.hxx".}
proc TangencyOnSurf2*(this: var BRepApprox_TheImpPrmSvSurfacesOfApprox;
                     u1: Standard_Real; v1: Standard_Real; u2: Standard_Real;
                     v2: Standard_Real; Tg: var gp_Vec2d): Standard_Boolean {.
    importcpp: "TangencyOnSurf2",
    header: "BRepApprox_TheImpPrmSvSurfacesOfApprox.hxx".}
proc FillInitialVectorOfSolution*(this: var BRepApprox_TheImpPrmSvSurfacesOfApprox;
                                 u1: Standard_Real; v1: Standard_Real;
                                 u2: Standard_Real; v2: Standard_Real;
                                 binfu: Standard_Real; bsupu: Standard_Real;
                                 binfv: Standard_Real; bsupv: Standard_Real;
                                 X: var math_Vector;
                                 TranslationU: var Standard_Real;
                                 TranslationV: var Standard_Real): Standard_Boolean {.
    importcpp: "FillInitialVectorOfSolution",
    header: "BRepApprox_TheImpPrmSvSurfacesOfApprox.hxx".}