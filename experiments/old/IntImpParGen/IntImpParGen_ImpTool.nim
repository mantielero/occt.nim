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

discard "forward decl of gp_Pnt2d"
discard "forward decl of gp_Vec2d"
type
  IntImpParGenImpTool* {.importcpp: "IntImpParGen_ImpTool",
                        header: "IntImpParGen_ImpTool.hxx", bycopy.} = object


proc value*(this: IntImpParGenImpTool; u: cfloat): Pnt2d {.noSideEffect,
    importcpp: "Value", header: "IntImpParGen_ImpTool.hxx".}
proc d1*(this: IntImpParGenImpTool; u: cfloat; p: var Pnt2d; t: var Vec2d) {.noSideEffect,
    importcpp: "D1", header: "IntImpParGen_ImpTool.hxx".}
proc d2*(this: IntImpParGenImpTool; u: cfloat; p: var Pnt2d; t: var Vec2d; n: var Vec2d) {.
    noSideEffect, importcpp: "D2", header: "IntImpParGen_ImpTool.hxx".}
proc distance*(this: IntImpParGenImpTool; p: Pnt2d): cfloat {.noSideEffect,
    importcpp: "Distance", header: "IntImpParGen_ImpTool.hxx".}
proc gradDistance*(this: IntImpParGenImpTool; p: Pnt2d): Vec2d {.noSideEffect,
    importcpp: "GradDistance", header: "IntImpParGen_ImpTool.hxx".}
proc findParameter*(this: IntImpParGenImpTool; p: Pnt2d): cfloat {.noSideEffect,
    importcpp: "FindParameter", header: "IntImpParGen_ImpTool.hxx".}

























