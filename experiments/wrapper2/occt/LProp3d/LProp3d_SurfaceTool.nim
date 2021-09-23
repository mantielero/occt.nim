##  Created on: 2002-08-02
##  Created by: Alexander KARTOMIN  (akm)
##  Copyright (c) 2002-2014 OPEN CASCADE SAS
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
  ../Standard/Standard_Handle, ../Standard/Standard_Real,
  ../Standard/Standard_Integer

discard "forward decl of Adaptor3d_HSurface"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
type
  LProp3d_SurfaceTool* {.importcpp: "LProp3d_SurfaceTool",
                        header: "LProp3d_SurfaceTool.hxx", bycopy.} = object ## ! Computes the point <P> of
                                                                        ## parameter <U> and <V> on the
                                                                        ## ! HSurface <S>.


proc Value*(S: handle[Adaptor3d_HSurface]; U: Standard_Real; V: Standard_Real;
           P: var gp_Pnt) {.importcpp: "LProp3d_SurfaceTool::Value(@)",
                         header: "LProp3d_SurfaceTool.hxx".}
proc D1*(S: handle[Adaptor3d_HSurface]; U: Standard_Real; V: Standard_Real;
        P: var gp_Pnt; D1U: var gp_Vec; D1V: var gp_Vec) {.
    importcpp: "LProp3d_SurfaceTool::D1(@)", header: "LProp3d_SurfaceTool.hxx".}
proc D2*(S: handle[Adaptor3d_HSurface]; U: Standard_Real; V: Standard_Real;
        P: var gp_Pnt; D1U: var gp_Vec; D1V: var gp_Vec; D2U: var gp_Vec; D2V: var gp_Vec;
        DUV: var gp_Vec) {.importcpp: "LProp3d_SurfaceTool::D2(@)",
                        header: "LProp3d_SurfaceTool.hxx".}
proc DN*(S: handle[Adaptor3d_HSurface]; U: Standard_Real; V: Standard_Real;
        IU: Standard_Integer; IV: Standard_Integer): gp_Vec {.
    importcpp: "LProp3d_SurfaceTool::DN(@)", header: "LProp3d_SurfaceTool.hxx".}
proc Continuity*(S: handle[Adaptor3d_HSurface]): Standard_Integer {.
    importcpp: "LProp3d_SurfaceTool::Continuity(@)",
    header: "LProp3d_SurfaceTool.hxx".}
proc Bounds*(S: handle[Adaptor3d_HSurface]; U1: var Standard_Real;
            V1: var Standard_Real; U2: var Standard_Real; V2: var Standard_Real) {.
    importcpp: "LProp3d_SurfaceTool::Bounds(@)", header: "LProp3d_SurfaceTool.hxx".}