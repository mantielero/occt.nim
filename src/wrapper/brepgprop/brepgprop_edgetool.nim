#import brepgprop_types
import ../brepadaptor/brepadaptor_types
import ../gp/gp_types
import ../geomabs/geomabs_types
import ../tcolstd/tcolstd_types
##  Created on: 1993-12-07
##  Created by: Modelistation
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

discard "forward decl of BRepAdaptor_Curve"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"


proc FirstParameter*(C: BRepAdaptor_Curve): cfloat {.cdecl,
    importcpp: "BRepGProp_EdgeTool::FirstParameter(@)".}
proc LastParameter*(C: BRepAdaptor_Curve): cfloat {.cdecl,
    importcpp: "BRepGProp_EdgeTool::LastParameter(@)".}
proc IntegrationOrder*(C: BRepAdaptor_Curve): cint {.cdecl,
    importcpp: "BRepGProp_EdgeTool::IntegrationOrder(@)".}
proc Value*(C: BRepAdaptor_Curve; U: cfloat): gp_Pnt {.cdecl,
    importcpp: "BRepGProp_EdgeTool::Value(@)".}
proc D1*(C: BRepAdaptor_Curve; U: cfloat; P: var gp_Pnt; V1: var gp_Vec) {.cdecl,
    importcpp: "BRepGProp_EdgeTool::D1(@)".}
proc NbIntervals*(C: BRepAdaptor_Curve; S: GeomAbs_Shape): cint {.cdecl,
    importcpp: "BRepGProp_EdgeTool::NbIntervals(@)".}
proc Intervals*(C: BRepAdaptor_Curve; T: var TColStd_Array1OfReal; S: GeomAbs_Shape) {.
    cdecl, importcpp: "BRepGProp_EdgeTool::Intervals(@)".}