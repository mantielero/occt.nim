##  Created on: 1997-11-28
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
  TopOpeBRepTool_define, ../Geom/Geom_Surface, ../gp/gp_Pnt2d, ../gp/gp_Pnt,
  ../BRepAdaptor/BRepAdaptor_Curve, ../BRepAdaptor/BRepAdaptor_Curve2d,
  ../Extrema/Extrema_ExtPC, ../Extrema/Extrema_ExtPC2d,
  ../Extrema/Extrema_ExtFlag, ../Extrema/Extrema_ExtAlgo

##  ----------------------------------------------------------------------
##   project point <P> on geometries (curve <C>,surface <S>)
##  ----------------------------------------------------------------------

proc FUN_tool_bounds*(E: TopoDS_Edge; f: var Standard_Real; l: var Standard_Real) {.
    importcpp: "FUN_tool_bounds(@)", header: "TopOpeBRepTool_PROJECT.hxx".}
proc FUN_tool_getindex*(ponc: Extrema_ExtPC): Standard_Integer {.
    importcpp: "FUN_tool_getindex(@)", header: "TopOpeBRepTool_PROJECT.hxx".}
proc FUN_tool_getindex*(ponc: Extrema_ExtPC2d): Standard_Integer {.
    importcpp: "FUN_tool_getindex(@)", header: "TopOpeBRepTool_PROJECT.hxx".}
proc FUN_tool_projPonC*(P: gp_Pnt; tole: Standard_Real; BAC: BRepAdaptor_Curve;
                       pmin: Standard_Real; pmax: Standard_Real;
                       param: var Standard_Real; dist: var Standard_Real): Standard_Boolean {.
    importcpp: "FUN_tool_projPonC(@)", header: "TopOpeBRepTool_PROJECT.hxx".}
proc FUN_tool_projPonC*(P: gp_Pnt; BAC: BRepAdaptor_Curve; pmin: Standard_Real;
                       pmax: Standard_Real; param: var Standard_Real;
                       dist: var Standard_Real): Standard_Boolean {.
    importcpp: "FUN_tool_projPonC(@)", header: "TopOpeBRepTool_PROJECT.hxx".}
proc FUN_tool_projPonC*(P: gp_Pnt; BAC: BRepAdaptor_Curve; param: var Standard_Real;
                       dist: var Standard_Real): Standard_Boolean {.
    importcpp: "FUN_tool_projPonC(@)", header: "TopOpeBRepTool_PROJECT.hxx".}
proc FUN_tool_projPonC2D*(P: gp_Pnt; tole: Standard_Real; BAC2D: BRepAdaptor_Curve2d;
                         pmin: Standard_Real; pmax: Standard_Real;
                         param: var Standard_Real; dist: var Standard_Real): Standard_Boolean {.
    importcpp: "FUN_tool_projPonC2D(@)", header: "TopOpeBRepTool_PROJECT.hxx".}
proc FUN_tool_projPonC2D*(P: gp_Pnt; BAC2D: BRepAdaptor_Curve2d; pmin: Standard_Real;
                         pmax: Standard_Real; param: var Standard_Real;
                         dist: var Standard_Real): Standard_Boolean {.
    importcpp: "FUN_tool_projPonC2D(@)", header: "TopOpeBRepTool_PROJECT.hxx".}
proc FUN_tool_projPonC2D*(P: gp_Pnt; BAC2D: BRepAdaptor_Curve2d;
                         param: var Standard_Real; dist: var Standard_Real): Standard_Boolean {.
    importcpp: "FUN_tool_projPonC2D(@)", header: "TopOpeBRepTool_PROJECT.hxx".}
proc FUN_tool_projPonS*(P: gp_Pnt; S: handle[Geom_Surface]; UV: var gp_Pnt2d;
                       dist: var Standard_Real;
                       anExtFlag: Extrema_ExtFlag = Extrema_ExtFlag_MINMAX;
                       anExtAlgo: Extrema_ExtAlgo = Extrema_ExtAlgo_Grad): Standard_Boolean {.
    importcpp: "FUN_tool_projPonS(@)", header: "TopOpeBRepTool_PROJECT.hxx".}
##  ----------------------------------------------------------------------
##   project point <P> on topologies (edge <E>,face <F>)
##  ----------------------------------------------------------------------

proc FUN_tool_projPonE*(P: gp_Pnt; tole: Standard_Real; E: TopoDS_Edge;
                       param: var Standard_Real; dist: var Standard_Real): Standard_Boolean {.
    importcpp: "FUN_tool_projPonE(@)", header: "TopOpeBRepTool_PROJECT.hxx".}
proc FUN_tool_projPonE*(P: gp_Pnt; E: TopoDS_Edge; param: var Standard_Real;
                       dist: var Standard_Real): Standard_Boolean {.
    importcpp: "FUN_tool_projPonE(@)", header: "TopOpeBRepTool_PROJECT.hxx".}
proc FUN_tool_projPonboundedF*(P: gp_Pnt; F: TopoDS_Face; UV: var gp_Pnt2d;
                              dist: var Standard_Real): Standard_Boolean {.
    importcpp: "FUN_tool_projPonboundedF(@)", header: "TopOpeBRepTool_PROJECT.hxx".}
proc FUN_tool_projPonF*(P: gp_Pnt; F: TopoDS_Face; UV: var gp_Pnt2d;
                       dist: var Standard_Real;
                       anExtFlag: Extrema_ExtFlag = Extrema_ExtFlag_MINMAX;
                       anExtAlgo: Extrema_ExtAlgo = Extrema_ExtAlgo_Grad): Standard_Boolean {.
    importcpp: "FUN_tool_projPonF(@)", header: "TopOpeBRepTool_PROJECT.hxx".}