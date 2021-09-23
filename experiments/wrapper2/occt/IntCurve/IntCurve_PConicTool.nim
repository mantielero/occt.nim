##  Created on: 1992-03-26
##  Created by: Laurent BUCHARD
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
  ../Standard/Standard_Handle, ../Standard/Standard_Real,
  ../Standard/Standard_Integer

discard "forward decl of IntCurve_PConic"
discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Vec2d"
type
  IntCurve_PConicTool* {.importcpp: "IntCurve_PConicTool",
                        header: "IntCurve_PConicTool.hxx", bycopy.} = object


proc EpsX*(C: IntCurve_PConic): Standard_Real {.
    importcpp: "IntCurve_PConicTool::EpsX(@)", header: "IntCurve_PConicTool.hxx".}
proc NbSamples*(C: IntCurve_PConic): Standard_Integer {.
    importcpp: "IntCurve_PConicTool::NbSamples(@)",
    header: "IntCurve_PConicTool.hxx".}
proc NbSamples*(C: IntCurve_PConic; U0: Standard_Real; U1: Standard_Real): Standard_Integer {.
    importcpp: "IntCurve_PConicTool::NbSamples(@)",
    header: "IntCurve_PConicTool.hxx".}
proc Value*(C: IntCurve_PConic; X: Standard_Real): gp_Pnt2d {.
    importcpp: "IntCurve_PConicTool::Value(@)", header: "IntCurve_PConicTool.hxx".}
proc D1*(C: IntCurve_PConic; U: Standard_Real; P: var gp_Pnt2d; T: var gp_Vec2d) {.
    importcpp: "IntCurve_PConicTool::D1(@)", header: "IntCurve_PConicTool.hxx".}
proc D2*(C: IntCurve_PConic; U: Standard_Real; P: var gp_Pnt2d; T: var gp_Vec2d;
        N: var gp_Vec2d) {.importcpp: "IntCurve_PConicTool::D2(@)",
                        header: "IntCurve_PConicTool.hxx".}