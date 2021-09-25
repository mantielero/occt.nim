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

discard "forward decl of Adaptor3d_HSurface"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
type
  LProp3dSurfaceTool* {.importcpp: "LProp3d_SurfaceTool",
                       header: "LProp3d_SurfaceTool.hxx", bycopy.} = object ## ! Computes the point <P> of parameter <U> and <V> on the
                                                                       ## ! HSurface <S>.


proc value*(s: Handle[Adaptor3dHSurface]; u: float; v: float; p: var Pnt) {.
    importcpp: "LProp3d_SurfaceTool::Value(@)", header: "LProp3d_SurfaceTool.hxx".}
proc d1*(s: Handle[Adaptor3dHSurface]; u: float; v: float; p: var Pnt; d1u: var Vec;
        d1v: var Vec) {.importcpp: "LProp3d_SurfaceTool::D1(@)",
                     header: "LProp3d_SurfaceTool.hxx".}
proc d2*(s: Handle[Adaptor3dHSurface]; u: float; v: float; p: var Pnt; d1u: var Vec;
        d1v: var Vec; d2u: var Vec; d2v: var Vec; duv: var Vec) {.
    importcpp: "LProp3d_SurfaceTool::D2(@)", header: "LProp3d_SurfaceTool.hxx".}
proc dn*(s: Handle[Adaptor3dHSurface]; u: float; v: float; iu: int; iv: int): Vec {.
    importcpp: "LProp3d_SurfaceTool::DN(@)", header: "LProp3d_SurfaceTool.hxx".}
proc continuity*(s: Handle[Adaptor3dHSurface]): int {.
    importcpp: "LProp3d_SurfaceTool::Continuity(@)",
    header: "LProp3d_SurfaceTool.hxx".}
proc bounds*(s: Handle[Adaptor3dHSurface]; u1: var float; v1: var float; u2: var float;
            v2: var float) {.importcpp: "LProp3d_SurfaceTool::Bounds(@)",
                          header: "LProp3d_SurfaceTool.hxx".}
