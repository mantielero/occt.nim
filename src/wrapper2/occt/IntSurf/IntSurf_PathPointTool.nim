##  Created on: 1992-09-25
##  Created by: Jacques GOUSSARD
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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../gp/gp_Pnt, ../Standard/Standard_Real,
  ../Standard/Standard_Boolean, ../gp/gp_Vec, ../gp/gp_Dir2d,
  ../Standard/Standard_Integer

discard "forward decl of Standard_OutOfRange"
discard "forward decl of StdFail_UndefinedDerivative"
discard "forward decl of IntSurf_PathPoint"
type
  IntSurf_PathPointTool* {.importcpp: "IntSurf_PathPointTool",
                          header: "IntSurf_PathPointTool.hxx", bycopy.} = object ## !
                                                                            ## Returns the 3d
                                                                            ## coordinates of the
                                                                            ## starting
                                                                            ## point.


proc Value3d*(PStart: IntSurf_PathPoint): gp_Pnt {.
    importcpp: "IntSurf_PathPointTool::Value3d(@)",
    header: "IntSurf_PathPointTool.hxx".}
proc Value2d*(PStart: IntSurf_PathPoint; U: var Standard_Real; V: var Standard_Real) {.
    importcpp: "IntSurf_PathPointTool::Value2d(@)",
    header: "IntSurf_PathPointTool.hxx".}
proc IsPassingPnt*(PStart: IntSurf_PathPoint): Standard_Boolean {.
    importcpp: "IntSurf_PathPointTool::IsPassingPnt(@)",
    header: "IntSurf_PathPointTool.hxx".}
proc IsTangent*(PStart: IntSurf_PathPoint): Standard_Boolean {.
    importcpp: "IntSurf_PathPointTool::IsTangent(@)",
    header: "IntSurf_PathPointTool.hxx".}
proc Direction3d*(PStart: IntSurf_PathPoint): gp_Vec {.
    importcpp: "IntSurf_PathPointTool::Direction3d(@)",
    header: "IntSurf_PathPointTool.hxx".}
proc Direction2d*(PStart: IntSurf_PathPoint): gp_Dir2d {.
    importcpp: "IntSurf_PathPointTool::Direction2d(@)",
    header: "IntSurf_PathPointTool.hxx".}
proc Multiplicity*(PStart: IntSurf_PathPoint): Standard_Integer {.
    importcpp: "IntSurf_PathPointTool::Multiplicity(@)",
    header: "IntSurf_PathPointTool.hxx".}
proc Parameters*(PStart: IntSurf_PathPoint; Mult: Standard_Integer;
                U: var Standard_Real; V: var Standard_Real) {.
    importcpp: "IntSurf_PathPointTool::Parameters(@)",
    header: "IntSurf_PathPointTool.hxx".}