##  Created on: 1994-03-23
##  Created by: Jean Marc LACHAUME
##  Copyright (c) 1994-1999 Matra Datavision
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
  ../Geom2dInt/Geom2dInt_GInter

discard "forward decl of Geom2dAdaptor_Curve"
discard "forward decl of gp_Lin2d"
discard "forward decl of gp_Dir2d"
type
  Geom2dHatch_Intersector* {.importcpp: "Geom2dHatch_Intersector",
                            header: "Geom2dHatch_Intersector.hxx", bycopy.} = object of Geom2dInt_GInter ##
                                                                                                  ## !
                                                                                                  ## Creates
                                                                                                  ## an
                                                                                                  ## intersector.


proc constructGeom2dHatch_Intersector*(Confusion: Standard_Real;
                                      Tangency: Standard_Real): Geom2dHatch_Intersector {.
    constructor, importcpp: "Geom2dHatch_Intersector(@)",
    header: "Geom2dHatch_Intersector.hxx".}
proc ConfusionTolerance*(this: Geom2dHatch_Intersector): Standard_Real {.
    noSideEffect, importcpp: "ConfusionTolerance",
    header: "Geom2dHatch_Intersector.hxx".}
proc SetConfusionTolerance*(this: var Geom2dHatch_Intersector;
                           Confusion: Standard_Real) {.
    importcpp: "SetConfusionTolerance", header: "Geom2dHatch_Intersector.hxx".}
proc TangencyTolerance*(this: Geom2dHatch_Intersector): Standard_Real {.
    noSideEffect, importcpp: "TangencyTolerance",
    header: "Geom2dHatch_Intersector.hxx".}
proc SetTangencyTolerance*(this: var Geom2dHatch_Intersector;
                          Tangency: Standard_Real) {.
    importcpp: "SetTangencyTolerance", header: "Geom2dHatch_Intersector.hxx".}
proc Intersect*(this: var Geom2dHatch_Intersector; C1: Geom2dAdaptor_Curve;
               C2: Geom2dAdaptor_Curve) {.importcpp: "Intersect",
                                        header: "Geom2dHatch_Intersector.hxx".}
proc constructGeom2dHatch_Intersector*(): Geom2dHatch_Intersector {.constructor,
    importcpp: "Geom2dHatch_Intersector(@)", header: "Geom2dHatch_Intersector.hxx".}
proc Perform*(this: var Geom2dHatch_Intersector; L: gp_Lin2d; P: Standard_Real;
             Tol: Standard_Real; E: Geom2dAdaptor_Curve) {.importcpp: "Perform",
    header: "Geom2dHatch_Intersector.hxx".}
proc LocalGeometry*(this: Geom2dHatch_Intersector; E: Geom2dAdaptor_Curve;
                   U: Standard_Real; T: var gp_Dir2d; N: var gp_Dir2d;
                   C: var Standard_Real) {.noSideEffect, importcpp: "LocalGeometry",
                                        header: "Geom2dHatch_Intersector.hxx".}