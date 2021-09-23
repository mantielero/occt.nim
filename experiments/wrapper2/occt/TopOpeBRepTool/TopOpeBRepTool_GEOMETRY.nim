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

import
  TopOpeBRepTool_define, ../GeomAbs/GeomAbs_CurveType, ../Geom2d/Geom2d_Curve,
  ../Geom/Geom_Curve, ../Geom/Geom_Surface, ../gp/gp_Pnt2d, ../gp/gp_Dir,
  ../gp/gp_Dir2d, ../Bnd/Bnd_Box2d

proc BASISCURVE2D*(C: handle[Geom2d_Curve]): handle[Geom2d_Curve] {.
    importcpp: "BASISCURVE2D(@)", header: "TopOpeBRepTool_GEOMETRY.hxx".}
## Standard_EXPORT Standard_Boolean FUN_tool_IsUViso(const Handle(Geom2d_Curve)& PC,Standard_Boolean& isoU,Standard_Boolean& isoV,gp_Dir2d& d2d,gp_Pnt2d& O2d);

proc FUN_tool_dirC*(par: Standard_Real; C: handle[Geom_Curve]): gp_Dir {.
    importcpp: "FUN_tool_dirC(@)", header: "TopOpeBRepTool_GEOMETRY.hxx".}
proc FUN_tool_onapex*(p2d: gp_Pnt2d; S: handle[Geom_Surface]): Standard_Boolean {.
    importcpp: "FUN_tool_onapex(@)", header: "TopOpeBRepTool_GEOMETRY.hxx".}
proc FUN_tool_ngS*(p2d: gp_Pnt2d; S: handle[Geom_Surface]): gp_Dir {.
    importcpp: "FUN_tool_ngS(@)", header: "TopOpeBRepTool_GEOMETRY.hxx".}
##  ----------------------------------------------------------------------
##  curve type,surface type :
##  ----------------------------------------------------------------------

proc FUN_tool_line*(C3d: handle[Geom_Curve]): Standard_Boolean {.
    importcpp: "FUN_tool_line(@)", header: "TopOpeBRepTool_GEOMETRY.hxx".}
proc FUN_tool_line*(C2d: handle[Geom2d_Curve]): Standard_Boolean {.
    importcpp: "FUN_tool_line(@)", header: "TopOpeBRepTool_GEOMETRY.hxx".}
proc FUN_quadCT*(CT: GeomAbs_CurveType): Standard_Boolean {.
    importcpp: "FUN_quadCT(@)", header: "TopOpeBRepTool_GEOMETRY.hxx".}
proc FUN_tool_quad*(C3d: handle[Geom_Curve]): Standard_Boolean {.
    importcpp: "FUN_tool_quad(@)", header: "TopOpeBRepTool_GEOMETRY.hxx".}
proc FUN_tool_quad*(pc: handle[Geom2d_Curve]): Standard_Boolean {.
    importcpp: "FUN_tool_quad(@)", header: "TopOpeBRepTool_GEOMETRY.hxx".}
proc FUN_tool_quad*(S: handle[Geom_Surface]): Standard_Boolean {.
    importcpp: "FUN_tool_quad(@)", header: "TopOpeBRepTool_GEOMETRY.hxx".}
proc FUN_tool_closed*(S: handle[Geom_Surface]; uclosed: var Standard_Boolean;
                     uperiod: var Standard_Real; vclosed: var Standard_Boolean;
                     vperiod: var Standard_Real): Standard_Boolean {.
    importcpp: "FUN_tool_closed(@)", header: "TopOpeBRepTool_GEOMETRY.hxx".}
proc FUN_tool_UpdateBnd2d*(B2d: var Bnd_Box2d; newB2d: Bnd_Box2d) {.
    importcpp: "FUN_tool_UpdateBnd2d(@)", header: "TopOpeBRepTool_GEOMETRY.hxx".}
##  ----------------------------------------------------------------------
##  oriented vectors :
##  ----------------------------------------------------------------------

proc FUN_tool_nCinsideS*(tgC: gp_Dir; ngS: gp_Dir): gp_Dir {.
    importcpp: "FUN_tool_nCinsideS(@)", header: "TopOpeBRepTool_GEOMETRY.hxx".}
proc FUN_tool_nC2dINSIDES*(tgC2d: gp_Dir2d): gp_Dir2d {.
    importcpp: "FUN_tool_nC2dINSIDES(@)", header: "TopOpeBRepTool_GEOMETRY.hxx".}