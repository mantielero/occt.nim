##  Created on: 1992-02-17
##  Created by: Jean Claude VAUTHIER
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

discard "forward decl of GProp_UndefinedAxis"
discard "forward decl of gp_Vec"
discard "forward decl of gp_Pnt"
type
  GPropPrincipalProps* {.importcpp: "GProp_PrincipalProps",
                        header: "GProp_PrincipalProps.hxx", bycopy.} = object ## ! creates an
                                                                         ## undefined
                                                                         ## PrincipalProps.


proc constructGPropPrincipalProps*(): GPropPrincipalProps {.constructor,
    importcpp: "GProp_PrincipalProps(@)", header: "GProp_PrincipalProps.hxx".}
proc hasSymmetryAxis*(this: GPropPrincipalProps): StandardBoolean {.noSideEffect,
    importcpp: "HasSymmetryAxis", header: "GProp_PrincipalProps.hxx".}
proc hasSymmetryAxis*(this: GPropPrincipalProps; aTol: StandardReal): StandardBoolean {.
    noSideEffect, importcpp: "HasSymmetryAxis", header: "GProp_PrincipalProps.hxx".}
proc hasSymmetryPoint*(this: GPropPrincipalProps): StandardBoolean {.noSideEffect,
    importcpp: "HasSymmetryPoint", header: "GProp_PrincipalProps.hxx".}
proc hasSymmetryPoint*(this: GPropPrincipalProps; aTol: StandardReal): StandardBoolean {.
    noSideEffect, importcpp: "HasSymmetryPoint", header: "GProp_PrincipalProps.hxx".}
proc moments*(this: GPropPrincipalProps; ixx: var StandardReal; iyy: var StandardReal;
             izz: var StandardReal) {.noSideEffect, importcpp: "Moments",
                                   header: "GProp_PrincipalProps.hxx".}
proc firstAxisOfInertia*(this: GPropPrincipalProps): GpVec {.noSideEffect,
    importcpp: "FirstAxisOfInertia", header: "GProp_PrincipalProps.hxx".}
proc secondAxisOfInertia*(this: GPropPrincipalProps): GpVec {.noSideEffect,
    importcpp: "SecondAxisOfInertia", header: "GProp_PrincipalProps.hxx".}
proc thirdAxisOfInertia*(this: GPropPrincipalProps): GpVec {.noSideEffect,
    importcpp: "ThirdAxisOfInertia", header: "GProp_PrincipalProps.hxx".}
proc radiusOfGyration*(this: GPropPrincipalProps; rxx: var StandardReal;
                      ryy: var StandardReal; rzz: var StandardReal) {.noSideEffect,
    importcpp: "RadiusOfGyration", header: "GProp_PrincipalProps.hxx".}

