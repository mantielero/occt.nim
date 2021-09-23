##  Created on: 1993-12-06
##  Created by: Jacques GOUSSARD
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
  ../Standard/Standard_Real, ../Standard/Standard_Integer

discard "forward decl of gp_Pnt2d"
discard "forward decl of Adaptor3d_HSurface"
discard "forward decl of Adaptor2d_HCurve2d"
discard "forward decl of Adaptor3d_HVertex"
type
  BRepBlend_BlendTool* {.importcpp: "BRepBlend_BlendTool",
                        header: "BRepBlend_BlendTool.hxx", bycopy.} = object ## ! Projects the point P on the arc C.
                                                                        ## ! If the methods returns
                                                                        ## Standard_True, the
                                                                        ## projection is
                                                                        ## !
                                                                        ## successful, and
                                                                        ## Paramproj is the
                                                                        ## parameter on the arc
                                                                        ## ! of the
                                                                        ## projected point, Dist is the distance between
                                                                        ## ! P and the curve..
                                                                        ## ! If the method returns
                                                                        ## Standard_False, Param proj and Dist
                                                                        ## ! are not
                                                                        ## significant.


proc Project*(P: gp_Pnt2d; S: handle[Adaptor3d_HSurface];
             C: handle[Adaptor2d_HCurve2d]; Paramproj: var Standard_Real;
             Dist: var Standard_Real): Standard_Boolean {.
    importcpp: "BRepBlend_BlendTool::Project(@)",
    header: "BRepBlend_BlendTool.hxx".}
proc Inters*(P1: gp_Pnt2d; P2: gp_Pnt2d; S: handle[Adaptor3d_HSurface];
            C: handle[Adaptor2d_HCurve2d]; Param: var Standard_Real;
            Dist: var Standard_Real): Standard_Boolean {.
    importcpp: "BRepBlend_BlendTool::Inters(@)", header: "BRepBlend_BlendTool.hxx".}
proc Parameter*(V: handle[Adaptor3d_HVertex]; A: handle[Adaptor2d_HCurve2d]): Standard_Real {.
    importcpp: "BRepBlend_BlendTool::Parameter(@)",
    header: "BRepBlend_BlendTool.hxx".}
proc Tolerance*(V: handle[Adaptor3d_HVertex]; A: handle[Adaptor2d_HCurve2d]): Standard_Real {.
    importcpp: "BRepBlend_BlendTool::Tolerance(@)",
    header: "BRepBlend_BlendTool.hxx".}
proc SingularOnUMin*(S: handle[Adaptor3d_HSurface]): Standard_Boolean {.
    importcpp: "BRepBlend_BlendTool::SingularOnUMin(@)",
    header: "BRepBlend_BlendTool.hxx".}
proc SingularOnUMax*(S: handle[Adaptor3d_HSurface]): Standard_Boolean {.
    importcpp: "BRepBlend_BlendTool::SingularOnUMax(@)",
    header: "BRepBlend_BlendTool.hxx".}
proc SingularOnVMin*(S: handle[Adaptor3d_HSurface]): Standard_Boolean {.
    importcpp: "BRepBlend_BlendTool::SingularOnVMin(@)",
    header: "BRepBlend_BlendTool.hxx".}
proc SingularOnVMax*(S: handle[Adaptor3d_HSurface]): Standard_Boolean {.
    importcpp: "BRepBlend_BlendTool::SingularOnVMax(@)",
    header: "BRepBlend_BlendTool.hxx".}
proc NbSamplesU*(S: handle[Adaptor3d_HSurface]; u1: Standard_Real; u2: Standard_Real): Standard_Integer {.
    importcpp: "BRepBlend_BlendTool::NbSamplesU(@)",
    header: "BRepBlend_BlendTool.hxx".}
proc NbSamplesV*(S: handle[Adaptor3d_HSurface]; v1: Standard_Real; v2: Standard_Real): Standard_Integer {.
    importcpp: "BRepBlend_BlendTool::NbSamplesV(@)",
    header: "BRepBlend_BlendTool.hxx".}
proc Bounds*(C: handle[Adaptor2d_HCurve2d]; Ufirst: var Standard_Real;
            Ulast: var Standard_Real) {.importcpp: "BRepBlend_BlendTool::Bounds(@)",
                                     header: "BRepBlend_BlendTool.hxx".}
proc CurveOnSurf*(C: handle[Adaptor2d_HCurve2d]; S: handle[Adaptor3d_HSurface]): handle[
    Adaptor2d_HCurve2d] {.importcpp: "BRepBlend_BlendTool::CurveOnSurf(@)",
                         header: "BRepBlend_BlendTool.hxx".}