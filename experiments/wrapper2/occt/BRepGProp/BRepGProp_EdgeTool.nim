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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Standard/Standard_Real,
  ../Standard/Standard_Integer, ../GeomAbs/GeomAbs_Shape,
  ../TColStd/TColStd_Array1OfReal

discard "forward decl of Standard_OutOfRange"
discard "forward decl of BRepAdaptor_Curve"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
type
  BRepGProp_EdgeTool* {.importcpp: "BRepGProp_EdgeTool",
                       header: "BRepGProp_EdgeTool.hxx", bycopy.} = object ## ! Returns the parametric value of the start point of
                                                                      ## ! the curve.  The curve is oriented from the start point
                                                                      ## ! to the end point.


proc FirstParameter*(C: BRepAdaptor_Curve): Standard_Real {.
    importcpp: "BRepGProp_EdgeTool::FirstParameter(@)",
    header: "BRepGProp_EdgeTool.hxx".}
proc LastParameter*(C: BRepAdaptor_Curve): Standard_Real {.
    importcpp: "BRepGProp_EdgeTool::LastParameter(@)",
    header: "BRepGProp_EdgeTool.hxx".}
proc IntegrationOrder*(C: BRepAdaptor_Curve): Standard_Integer {.
    importcpp: "BRepGProp_EdgeTool::IntegrationOrder(@)",
    header: "BRepGProp_EdgeTool.hxx".}
proc Value*(C: BRepAdaptor_Curve; U: Standard_Real): gp_Pnt {.
    importcpp: "BRepGProp_EdgeTool::Value(@)", header: "BRepGProp_EdgeTool.hxx".}
proc D1*(C: BRepAdaptor_Curve; U: Standard_Real; P: var gp_Pnt; V1: var gp_Vec) {.
    importcpp: "BRepGProp_EdgeTool::D1(@)", header: "BRepGProp_EdgeTool.hxx".}
proc NbIntervals*(C: BRepAdaptor_Curve; S: GeomAbs_Shape): Standard_Integer {.
    importcpp: "BRepGProp_EdgeTool::NbIntervals(@)",
    header: "BRepGProp_EdgeTool.hxx".}
proc Intervals*(C: BRepAdaptor_Curve; T: var TColStd_Array1OfReal; S: GeomAbs_Shape) {.
    importcpp: "BRepGProp_EdgeTool::Intervals(@)",
    header: "BRepGProp_EdgeTool.hxx".}