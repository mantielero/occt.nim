##  Created on: 1992-11-19
##  Created by: Remi LEQUETTE
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

discard "forward decl of gp_Lin2d"
discard "forward decl of BRepClass_Edge"
discard "forward decl of gp_Dir2d"
type
  BRepClassIntersector* {.importcpp: "BRepClass_Intersector",
                         header: "BRepClass_Intersector.hxx", bycopy.} = object of Geom2dIntIntConicCurveOfGInter


proc constructBRepClassIntersector*(): BRepClassIntersector {.constructor,
    importcpp: "BRepClass_Intersector(@)", header: "BRepClass_Intersector.hxx".}
proc perform*(this: var BRepClassIntersector; L: Lin2d; p: float; tol: float;
             e: BRepClassEdge) {.importcpp: "Perform",
                               header: "BRepClass_Intersector.hxx".}
proc localGeometry*(this: BRepClassIntersector; e: BRepClassEdge; u: float;
                   t: var Dir2d; n: var Dir2d; c: var float) {.noSideEffect,
    importcpp: "LocalGeometry", header: "BRepClass_Intersector.hxx".}
