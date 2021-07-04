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

import
  ../Standard/Standard, ../Standard/Standard_DefineAlloc,
  ../Standard/Standard_Handle, ../Geom2dInt/Geom2dInt_IntConicCurveOfGInter,
  ../Standard/Standard_Real

discard "forward decl of gp_Lin2d"
discard "forward decl of BRepClass_Edge"
discard "forward decl of gp_Dir2d"
type
  BRepClass_Intersector* {.importcpp: "BRepClass_Intersector",
                          header: "BRepClass_Intersector.hxx", bycopy.} = object of Geom2dInt_IntConicCurveOfGInter


proc constructBRepClass_Intersector*(): BRepClass_Intersector {.constructor,
    importcpp: "BRepClass_Intersector(@)", header: "BRepClass_Intersector.hxx".}
proc Perform*(this: var BRepClass_Intersector; L: gp_Lin2d; P: Standard_Real;
             Tol: Standard_Real; E: BRepClass_Edge) {.importcpp: "Perform",
    header: "BRepClass_Intersector.hxx".}
proc LocalGeometry*(this: BRepClass_Intersector; E: BRepClass_Edge; U: Standard_Real;
                   T: var gp_Dir2d; N: var gp_Dir2d; C: var Standard_Real) {.
    noSideEffect, importcpp: "LocalGeometry", header: "BRepClass_Intersector.hxx".}