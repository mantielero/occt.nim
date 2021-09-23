##  Created on: 1992-05-15
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
  ../gp/gp_Vec, ../gp/gp_Vec2d

discard "forward decl of gp_Pnt"
discard "forward decl of gp_Vec"
discard "forward decl of gp_Vec2d"
type
  IntSurf_InteriorPoint* {.importcpp: "IntSurf_InteriorPoint",
                          header: "IntSurf_InteriorPoint.hxx", bycopy.} = object


proc constructIntSurf_InteriorPoint*(): IntSurf_InteriorPoint {.constructor,
    importcpp: "IntSurf_InteriorPoint(@)", header: "IntSurf_InteriorPoint.hxx".}
proc constructIntSurf_InteriorPoint*(P: gp_Pnt; U: Standard_Real; V: Standard_Real;
                                    Direc: gp_Vec; Direc2d: gp_Vec2d): IntSurf_InteriorPoint {.
    constructor, importcpp: "IntSurf_InteriorPoint(@)",
    header: "IntSurf_InteriorPoint.hxx".}
proc SetValue*(this: var IntSurf_InteriorPoint; P: gp_Pnt; U: Standard_Real;
              V: Standard_Real; Direc: gp_Vec; Direc2d: gp_Vec2d) {.
    importcpp: "SetValue", header: "IntSurf_InteriorPoint.hxx".}
proc Value*(this: IntSurf_InteriorPoint): gp_Pnt {.noSideEffect, importcpp: "Value",
    header: "IntSurf_InteriorPoint.hxx".}
proc Parameters*(this: IntSurf_InteriorPoint; U: var Standard_Real;
                V: var Standard_Real) {.noSideEffect, importcpp: "Parameters",
                                     header: "IntSurf_InteriorPoint.hxx".}
proc UParameter*(this: IntSurf_InteriorPoint): Standard_Real {.noSideEffect,
    importcpp: "UParameter", header: "IntSurf_InteriorPoint.hxx".}
proc VParameter*(this: IntSurf_InteriorPoint): Standard_Real {.noSideEffect,
    importcpp: "VParameter", header: "IntSurf_InteriorPoint.hxx".}
proc Direction*(this: IntSurf_InteriorPoint): gp_Vec {.noSideEffect,
    importcpp: "Direction", header: "IntSurf_InteriorPoint.hxx".}
proc Direction2d*(this: IntSurf_InteriorPoint): gp_Vec2d {.noSideEffect,
    importcpp: "Direction2d", header: "IntSurf_InteriorPoint.hxx".}