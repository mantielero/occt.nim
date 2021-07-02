##  Created on: 1992-03-26
##  Created by: Herve LEGRAND
##  Copyright (c) 1992-1999 Matra Datavision
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

discard "forward decl of Geom_Surface"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
type
  GeomLPropSurfaceTool* {.importcpp: "GeomLProp_SurfaceTool",
                         header: "GeomLProp_SurfaceTool.hxx", bycopy.} = object ## !
                                                                           ## Computes the point <P> of
                                                                           ## parameter <U> and <V> on the
                                                                           ## !
                                                                           ## Surface <S>.


proc value*(s: Handle[GeomSurface]; u: StandardReal; v: StandardReal; p: var GpPnt) {.
    importcpp: "GeomLProp_SurfaceTool::Value(@)",
    header: "GeomLProp_SurfaceTool.hxx".}
proc d1*(s: Handle[GeomSurface]; u: StandardReal; v: StandardReal; p: var GpPnt;
        d1u: var GpVec; d1v: var GpVec) {.importcpp: "GeomLProp_SurfaceTool::D1(@)",
                                    header: "GeomLProp_SurfaceTool.hxx".}
proc d2*(s: Handle[GeomSurface]; u: StandardReal; v: StandardReal; p: var GpPnt;
        d1u: var GpVec; d1v: var GpVec; d2u: var GpVec; d2v: var GpVec; duv: var GpVec) {.
    importcpp: "GeomLProp_SurfaceTool::D2(@)", header: "GeomLProp_SurfaceTool.hxx".}
proc dn*(s: Handle[GeomSurface]; u: StandardReal; v: StandardReal; iu: StandardInteger;
        iv: StandardInteger): GpVec {.importcpp: "GeomLProp_SurfaceTool::DN(@)",
                                   header: "GeomLProp_SurfaceTool.hxx".}
proc continuity*(s: Handle[GeomSurface]): StandardInteger {.
    importcpp: "GeomLProp_SurfaceTool::Continuity(@)",
    header: "GeomLProp_SurfaceTool.hxx".}
proc bounds*(s: Handle[GeomSurface]; u1: var StandardReal; v1: var StandardReal;
            u2: var StandardReal; v2: var StandardReal) {.
    importcpp: "GeomLProp_SurfaceTool::Bounds(@)",
    header: "GeomLProp_SurfaceTool.hxx".}

