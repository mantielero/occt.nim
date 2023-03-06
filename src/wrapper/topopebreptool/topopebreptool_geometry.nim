import ../gp/gp_types
import ../standard/standard_types
import ../bnd/bnd_types
import ../geom/geom_types
import ../geomabs/geomabs_types
import ../geom2d/geom2d_types




##  Created on: 1998-10-06
##  Created by: Jean Yves LEBEY
##  Copyright (c) 1998-1999 Matra Datavision
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

proc basiscurve2d*(c: Handle[Geom2dCurve]): Handle[Geom2dCurve] {.cdecl,
    importcpp: "BASISCURVE2D(@)", header: "TopOpeBRepTool_GEOMETRY.hxx".}
## Standard_EXPORT Standard_Boolean FUN_tool_IsUViso(const Handle(Geom2d_Curve)& PC,Standard_Boolean& isoU,Standard_Boolean& isoV,gp_Dir2d& d2d,gp_Pnt2d& O2d);

proc fUN_toolDirC*(par: cfloat; c: Handle[GeomCurve]): gp_Dir {.cdecl,
    importcpp: "FUN_tool_dirC(@)", header: "TopOpeBRepTool_GEOMETRY.hxx".}
proc fUN_toolOnapex*(p2d: gp_Pnt2d; s: Handle[GeomSurface]): bool {.cdecl,
    importcpp: "FUN_tool_onapex(@)", header: "TopOpeBRepTool_GEOMETRY.hxx".}
proc fUN_toolNgS*(p2d: gp_Pnt2d; s: Handle[GeomSurface]): gp_Dir {.cdecl,
    importcpp: "FUN_tool_ngS(@)", header: "TopOpeBRepTool_GEOMETRY.hxx".}
##  ----------------------------------------------------------------------
##  curve type,surface type :
##  ----------------------------------------------------------------------

proc fUN_toolLine*(c3d: Handle[GeomCurve]): bool {.cdecl,
    importcpp: "FUN_tool_line(@)", header: "TopOpeBRepTool_GEOMETRY.hxx".}
proc fUN_toolLine*(c2d: Handle[Geom2dCurve]): bool {.cdecl,
    importcpp: "FUN_tool_line(@)", header: "TopOpeBRepTool_GEOMETRY.hxx".}
proc fUN_quadCT*(ct: GeomAbsCurveType): bool {.cdecl, importcpp: "FUN_quadCT(@)",
    header: "TopOpeBRepTool_GEOMETRY.hxx".}
proc fUN_toolQuad*(c3d: Handle[GeomCurve]): bool {.cdecl,
    importcpp: "FUN_tool_quad(@)", header: "TopOpeBRepTool_GEOMETRY.hxx".}
proc fUN_toolQuad*(pc: Handle[Geom2dCurve]): bool {.cdecl,
    importcpp: "FUN_tool_quad(@)", header: "TopOpeBRepTool_GEOMETRY.hxx".}
proc fUN_toolQuad*(s: Handle[GeomSurface]): bool {.cdecl,
    importcpp: "FUN_tool_quad(@)", header: "TopOpeBRepTool_GEOMETRY.hxx".}
proc fUN_toolClosed*(s: Handle[GeomSurface]; uclosed: var bool; uperiod: var cfloat;
                    vclosed: var bool; vperiod: var cfloat): bool {.cdecl,
    importcpp: "FUN_tool_closed(@)", header: "TopOpeBRepTool_GEOMETRY.hxx".}
proc fUN_toolUpdateBnd2d*(b2d: var BndBox2d; newB2d: BndBox2d) {.cdecl,
    importcpp: "FUN_tool_UpdateBnd2d(@)", header: "TopOpeBRepTool_GEOMETRY.hxx".}
##  ----------------------------------------------------------------------
##  oriented vectors :
##  ----------------------------------------------------------------------

proc fUN_toolNCinsideS*(tgC: gp_Dir; ngS: gp_Dir): gp_Dir {.cdecl,
    importcpp: "FUN_tool_nCinsideS(@)", header: "TopOpeBRepTool_GEOMETRY.hxx".}
proc fUN_toolNC2dINSIDES*(tgC2d: gp_Dir2d): gp_Dir2d {.cdecl,
    importcpp: "FUN_tool_nC2dINSIDES(@)", header: "TopOpeBRepTool_GEOMETRY.hxx".}

