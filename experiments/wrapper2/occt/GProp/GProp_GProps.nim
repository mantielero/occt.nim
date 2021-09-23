##  Created on: 1992-08-24
##  Created by: Michel CHAUVAT
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
  ../gp/gp_Mat

discard "forward decl of Standard_DomainError"
discard "forward decl of gp_Pnt"
discard "forward decl of gp_Mat"
discard "forward decl of gp_Ax1"
discard "forward decl of GProp_PrincipalProps"
type
  GProp_GProps* {.importcpp: "GProp_GProps", header: "GProp_GProps.hxx", bycopy.} = object ##
                                                                                   ## !
                                                                                   ## The
                                                                                   ## origin
                                                                                   ## (0,
                                                                                   ## 0,
                                                                                   ## 0)
                                                                                   ## of
                                                                                   ## the
                                                                                   ## absolute
                                                                                   ## cartesian
                                                                                   ## coordinate
                                                                                   ## system
                                                                                   ##
                                                                                   ## !
                                                                                   ## is
                                                                                   ## used
                                                                                   ## to
                                                                                   ## compute
                                                                                   ## the
                                                                                   ## global
                                                                                   ## properties.


proc constructGProp_GProps*(): GProp_GProps {.constructor,
    importcpp: "GProp_GProps(@)", header: "GProp_GProps.hxx".}
proc constructGProp_GProps*(SystemLocation: gp_Pnt): GProp_GProps {.constructor,
    importcpp: "GProp_GProps(@)", header: "GProp_GProps.hxx".}
proc Add*(this: var GProp_GProps; Item: GProp_GProps; Density: Standard_Real = 1.0) {.
    importcpp: "Add", header: "GProp_GProps.hxx".}
proc Mass*(this: GProp_GProps): Standard_Real {.noSideEffect, importcpp: "Mass",
    header: "GProp_GProps.hxx".}
proc CentreOfMass*(this: GProp_GProps): gp_Pnt {.noSideEffect,
    importcpp: "CentreOfMass", header: "GProp_GProps.hxx".}
proc MatrixOfInertia*(this: GProp_GProps): gp_Mat {.noSideEffect,
    importcpp: "MatrixOfInertia", header: "GProp_GProps.hxx".}
proc StaticMoments*(this: GProp_GProps; Ix: var Standard_Real; Iy: var Standard_Real;
                   Iz: var Standard_Real) {.noSideEffect,
    importcpp: "StaticMoments", header: "GProp_GProps.hxx".}
proc MomentOfInertia*(this: GProp_GProps; A: gp_Ax1): Standard_Real {.noSideEffect,
    importcpp: "MomentOfInertia", header: "GProp_GProps.hxx".}
proc PrincipalProperties*(this: GProp_GProps): GProp_PrincipalProps {.noSideEffect,
    importcpp: "PrincipalProperties", header: "GProp_GProps.hxx".}
proc RadiusOfGyration*(this: GProp_GProps; A: gp_Ax1): Standard_Real {.noSideEffect,
    importcpp: "RadiusOfGyration", header: "GProp_GProps.hxx".}